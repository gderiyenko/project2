<?php

namespace App\Http\Controllers;

use Stripe\{Stripe, Charge, Customer};
use Stripe\Error\Card;
use App\{Basket};

use Mailgun\Mailgun;
use Mail;


class PurchasesController extends Controller
{
    public static function succeededPayment($userId, $email)
    {
        Basket::processing($userId);
        $date = new \DateTime();
        $date->modify("+30 minutes"); 
        $date->modify("+2 hours");
         Mail::send('emails.order', ['take_time'=>$date->format('Y-m-d H:i:s')],  function ($message) use ($email) {
            $message->from('us@example.com', 'Laravel');
            $message->to($email);
        });

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
        $price = Basket::getSumCost($userId);
        $price = round($price[0]->total * 100);
        $key = Stripe::setApiKey(config('services.stripe.secret'));
        return PurchasesController::succeededPayment($userId,$email);
        if ($price < 100)
            return PurchasesController::paymentError();
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
            return PurchasesController::succeededPayment($userId, $email);
        else
            return PurchasesController::paymentError();
    }
    
}