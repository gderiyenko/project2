<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Template extends Model
{
    public static function getAllTemplates($userId){
		return \DB::select('SELECT t.* FROM templates t WHERE (t.user_id = ?) and (t.status = ?) ;', [$userId, 1]);
	}

	public static function getAllByTemplateId($userId, $templateId){
		return \DB::select('SELECT ti.* FROM template_infos ti WHERE (ti.user_id = ?) ;', [$userId]);
	}

	public static function createTemplate($userId, $templateName){
		$test = \DB::select('SELECT t.id FROM templates t WHERE (t.user_id = ?) AND (t.name = ?);', [$userId, $templateName]);
		if (count($test) != 0) // if record is inside 
			return die();
		$date = new \DateTime();
		\DB::table('templates')->insertGetId(
			[
			 'user_id' => $userId,
			 'name' => $templateName,
			 'status' => 1,
			 'created_at' => $date->format('Y-m-d H:i:s')
			]
		);
		$templateId = \DB::select('SELECT t.id FROM templates t WHERE (t.user_id = ?) AND (t.name = ?);', [$userId, $templateName]);
		$templateId = $templateId[0]->id;
		return \DB::insert('INSERT INTO template_infos (user_id, template_id, product_id, count, created_at) 
					SELECT user_id, ?, product_id, count, created_at FROM basket_infos bi WHERE (bi.user_id = ?) AND (bi.status = ?) AND (bi.count > 0);',
					[$templateId, $userId, 1]);
	}
	public static function deleteTemplate($userId, $templateName){
		$date = new \DateTime();
		return \DB::update("UPDATE templates t SET t.status = 2, t.deleted_at = ? WHERE t.user_id = ? and t.name = ? ;", [$date->format('Y-m-d H:i:s'), $userId, $templateName]);
	}

	public static function getIdByName($userId, $templateName){
		return \DB::select('SELECT t.id FROM templates t WHERE (t.name = ?) ;', [$templateName]);
	}

	public static function getSumCost($userId, $templateId)
    {
    	return \DB::select('SELECT sum(p.price*ti.count) as total FROM products p, template_infos ti
    	 WHERE (p.id = ti.product_id) AND (ti.template_id = ?) AND (ti.count > ?) AND (ti.user_id = ?) ;', [$templateId, 0, $userId]);
    }

    public static function processing($userId, $TemplateId)
	{
		$date = new \DateTime();
		\DB::select('UPDATE template_infos ti SET ti.status = 3 WHERE (ti.user_id = ?) AND (ti.status = ?) AND (ti.count > 0);', 
			[$userId, 1]);
		\DB::select('UPDATE templates t SET t.status = 3, t.paid_at = ? WHERE (t.user_id = ?) AND (t.status = ?);', 
			[$date->format('Y-m-d H:i:s'),$userId, 1]);
	}

}
