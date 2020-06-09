<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Buku;
use App\Mahasiswa;

class BerandaController extends Controller
{
    public function index()
    {
        $mahasiswa=\App\Mahasiswa::latest('id')->get();
        return view('beranda.index',['mahasiswa'=>$mahasiswa]);
    }

  
}
