<?php

namespace App\Http\Controllers;
use Auth;
use Illuminate\Http\Request;
use \App\User;
use DB;

class AuthController extends Controller
{
    public function login()
    {
        return view('auth.login');
    }

    public function postlogin(Request $request)
    {
       if(Auth::attempt($request->only('email','password'))){
           return redirect('/beranda');
       }

       return redirect('/login');
    }

    public function register(Request $request)
    {
        $user = \App\User::create([
            'name'=>$request->name,
            'role'=>'admin',
            'email'=>$request->email,
            'password'=>bcrypt($request->password),
        ]);
       
        return redirect('/beranda');

    }

    public function registermahasiswa(Request $request)
    {
        $user = \App\User::create([
            'name'=>$request->name,
            'mahasiswa_id'=>$request->mahasiswa_id,
            'role'=>'mahasiswa',
            'email'=>$request->email,
            'password'=>bcrypt($request->password),
            'remember_token'=>str_random(60),
        ]);
       
        return redirect('/beranda');

    }

    public function logout()
    {
        Auth::logout();
        return redirect('/beranda');
    }
}
