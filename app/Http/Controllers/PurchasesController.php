<?php

namespace App\Http\Controllers;

use Stripe\{Stripe, Charge, Customer};
use Stripe\Error\Card;
use App\{Basket,Template};

class PurchasesController extends Controller
{
	public function store(){
        $userId = \Auth::id();
        $token  = $_POST['stripeToken'];
        $email  = $_POST['stripeEmail'];
        $TemplateId  = $_POST['TemplateId'];
        echo "<pre>";
        var_dump($userId, $token, $email, $TemplateId);

        if (request('TemplateId') == 0)
            $price = Basket::getSumCost($userId);
        else
            $price = Template::getSumCost($userId, $TemplateId);
        var_dump($price);
        $price = round($price[0]->total * 100);

        $key = Stripe::setApiKey(config('services.stripe.secret'));
        $customer = Customer::create([
            'email' => $email,
            'source' => $token
        ]);
        $charge = Charge::create([
            'customer' => $customer->id,
            'amount' => $price,
            'currency' => 'usd'
        ]);
     
        var_dump($customer, $charge);
        return "All done!";
    }

    
}