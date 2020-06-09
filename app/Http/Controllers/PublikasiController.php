<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use DB;
use App\Publikasi;
use App\Penulis;

class PublikasiController extends Controller
{
    public function index(Request $request)
    {
        if($request->has('cari')){
            $data_publikasi=\App\Publikasi::where('Judul','Like','%'.$request->cari. '%')->paginate(10)->appends('cari',request('cari'));
        }else{
            $data_publikasi=\App\Publikasi::latest('id')->paginate(10);
        }
        
        $penelitian=\App\Penelitian::all();
        $pengabdian=\App\Pengabdian::all();
        $jenispublikasi=\App\Jenispublikasi::all();
        $penulis=\App\Penulis::all();
        return view('publikasi.index',['data_publikasi'=> $data_publikasi,'penulis'=>$penulis,'penelitian'=>$penelitian,'pengabdian'=>$pengabdian,'jenispublikasi'=>$jenispublikasi]);
    }
    public function create(Request $request)
    {
        $publikasi=\App\Publikasi::create($request->all());
        $publikasi->save();
        $publikasi->penulis()->attach(Input::get('penulis'));
        return redirect('/publikasi')->with('sukses','Berhasil... Data Diinput');
    }
    public function editpublikasi($id)
    {
        $publikasi=$data['publikasi']=Publikasi::find($id);
        $penulis=$data['penulis']=Penulis::all();
        $penelitian=\App\Penelitian::all();
        $pengabdian=\App\Pengabdian::all();
        $jenispublikasi=\App\Jenispublikasi::all();
        $checkeds=Publikasi::find($id)->penulis()->pluck('penulis.id')->toArray();
        return view('publikasi.editpublikasi',['publikasi'=>$publikasi,'penulis'=>$penulis,'pengabdian'=>$pengabdian,'penelitian'=>$penelitian,'jenispublikasi'=>$jenispublikasi,'checkeds'=>$checkeds]);
    }

    public function goeditpublikasi(Request $request,$id)
    {
        $publikasi=DB::table('publikasi')->where('id',$request->id)->update([
            'id'=>$request->id,
            'Tahun_Terbit'=>$request->Tahun_Terbit,
            'Judul'=>$request->Judul,
            'Deskripsi'=>$request->Deskripsi,
            'IDPengabdian'=>$request->IDPengabdian,
            'IDPenelitian'=>$request->IDPenelitian,
            'IDJenisPublikasi'=>$request->IDJenisPublikasi,
        ]);
        $publikasi = \App\Publikasi::findOrFail($id);
        $publikasi->penulis()->sync(Input::get('penulis'));
        return redirect('publikasi')->with('sukses','Data Diubah');
    }

    public function hapus($id)
    {
        DB::table('publikasi')->where('id',$id)->delete();
        return redirect('/publikasi')->with('sukses','Sudah Dihapus');
    }

    public function createpublikasi(Request $request)
    {
        $publikasi=\App\Publikasi::all();
        $penelitian=\App\Penelitian::all();
        $pengabdian=\App\Pengabdian::all();
        $penulis=\App\Penulis::all();
        $jenispublikasi=\App\Jenispublikasi::all();
        return view('publikasi.createpublikasi',['pengabdian'=>$pengabdian,'publikasi'=>$publikasi,'penelitian'=>$penelitian,'penulis'=>$penulis,'jenispublikasi'=>$jenispublikasi]);
    }

    public function detail($id)
    {
        $publikasi=\App\Publikasi::find($id);
        $penelitian=\App\Penelitian::all();
        $pengabdian=\App\Pengabdian::all();
        $penulis=\App\Penulis::all();
        return view('publikasi.detail',['pengabdian'=>$pengabdian,'publikasi'=>$publikasi,'penelitian'=>$penelitian,'penulis'=>$penulis]);
    }

}
