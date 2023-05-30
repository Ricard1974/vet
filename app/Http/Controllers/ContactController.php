<?php

namespace App\Http\Controllers;

use App\Mail\ContactMail;
use Illuminate\Support\Facades\Mail;
use App\Http\Requests\ContactRequest;
use App\Models\Equipo;

class ContactController extends Controller
{
    public function showcontact()
    {
        $equipo = Equipo::all();
        return view ('contacts.show', compact('equipo'));
    }

    public function submitcontact(ContactRequest $request)
    {
        Mail::to('test@test.com')->send(new ContactMail($request->name, $request->email, $request->content));
        return redirect('/');
        
    }
}
