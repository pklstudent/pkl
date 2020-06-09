<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Buku;

class Select2Controller extends Controller
{

    public function index()
    {
        return view('search');
    }

    public function search(Request $request)
    {
          $search = $request->get('term');
     
          $result = Buku::where('Judul', 'LIKE', '%'. $search. '%')->get();

          return response()->json($result);
           
    } 
}