<?php

namespace App\Http\Controllers;

use App\Mail\ContactMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Http\Requests\ContactRequest;

class ContactController extends Controller
{
    public function show()
    {
        return view ('contacts.show');
    }

    public function submit(ContactRequest $request)
    {
        Mail::to('test@test.com')->send(new ContactMail($request->name, $request->email, $request->content));
        return redirect('/');
        
    }
}
