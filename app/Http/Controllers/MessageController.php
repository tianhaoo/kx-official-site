<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Message;

class MessageController extends Controller
{

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }


    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(Request $request)
    {
        // $validator = Validator::make($request->all(), [
        //     'author' => 'required|string|max:255',
        //     'email' => 'required|string|email|max:255',
        //     'subject' => 'required|string|max:255',
        //     'message'=> 'required|string|max:500',
        //     'captcha' => 'required|captcha'
        // ]);
       
        // if($validator->fails())
        // {
            
        //     return redirect('/#contact')->withErrors($validator)->withInput();
        // }
        

        $message = new Message;
        $message->author = $request->author;
        $message->email= $request->email;
        $message->subject = $request->subject;
        $message->message = $request->message;
        if($message->save())
        {
            return back()->with('message_success', "留言成功");
        }
        else
        {
            return back()->withErrors("留言失败")->withInput();
        }
        
        
    }
}
