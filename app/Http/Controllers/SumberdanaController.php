<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Sumberdana;

class SumberdanaController extends Controller
{
    public function index(Request $request)
    {
        if($request->has('cari')){
            $data_sumberdana=\App\Sumberdana::where('Judul','Like','%'.$request->cari. '%')->paginate(10)->appends('cari',request('cari'));
        }else{
            $data_sumberdana=\App\Sumberdana::paginate(10);
        }
        
        return view('sumberdana.index',['data_sumberdana'=> $data_sumberdana]);
    }
    public function create(Request $request)
    {
        $sumberdana=\App\Sumberdana::create($request->all());
        
        return redirect('/sumberdana')->with('sukses','Berhasil Diinput');
    }
    public function hapus($id)
    {
        $sumberdana=DB::table('sumberdana')->where('id',$id)->delete();     
        return redirect('/sumberdana')->with('sukses','Sudah Dihapus');
    }
}
