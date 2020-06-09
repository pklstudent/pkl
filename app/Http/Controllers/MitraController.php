<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Mitra;

class MitraController extends Controller
{
    public function index(Request $request)
    {
        if($request->has('cari')){
            $data_mitra=\App\Mitra::where('Nama','Like','%'.$request->cari. '%')->paginate(10)->appends('cari',request('cari'));
        }else{
            $data_mitra=\App\Mitra::latest('id')->paginate(10);
        }
        return view('mitra.index',['data_mitra'=> $data_mitra]);
    }
    public function create(Request $request)
    {
        $mitra=\App\Mitra::create($request->all());
        $mitra->save();
        return $mitra;
        return redirect('/mitra')->with('sukses','Berhasil Diinput');
    }

    public function gocreate(Request $request,$id)
    {
        $mitra=\App\Mitra::where('id',$request->id)->update([
            'id'=>$request->id,
            'Nama'=>$request->Nama,
            'Alamat'=>$request->Alamat,
            'CP'=>$request->CP,
        ]);
        return redirect('/mitra')->with('sukses','Berhasil Diinput');
    }

    public function editmitra($id)
    {
        $mitra=\App\Mitra::find($id);
        return view('mitra.editmitra',['mitra'=>$mitra]);
    }
    
    public function hapus($id)
    {
        $mitra=DB::table('mitra')->where('id',$id)->delete();     
        return redirect('mitra')->with('sukses','Sudah Dihapus');
    }

}
