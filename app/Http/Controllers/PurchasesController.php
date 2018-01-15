<?php

namespace App\Http\Controllers;

use Stripe\{Stripe, Charge, Customer};
use Stripe\Error\Card;
use App\{Basket,Template};

class PurchasesController extends Controller
{
    public function succeededPayment($userId, $TemplateId)
    {
        if ($TemplateId == 0)
            Basket::processing($userId);
        else
            Template::processing($userId, $TemplateId);
        return view('Payment.ThankYou');
    }
    public function paymentError()
    {
       return view('Payment.Blocked');
    }

	public function store(){
        $userId = \Auth::id();
        $token  = $_POST['stripeToken'];
        $email  = $_POST['stripeEmail'];
        $TemplateId  = $_POST['TemplateId'];

        if (request('TemplateId') == 0)
            $price = Basket::getSumCost($userId);
        else
            $price = Template::getSumCost($userId, $TemplateId);
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
     
        if ($charge["status"] == "succeeded")
            return PurchasesController::succeededPayment($userId, $TemplateId);
        else
            return PurchasesController::paymentError();
    }

    

    
}