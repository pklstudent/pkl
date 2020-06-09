<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use DB;

use App\Pengabdian;
use App\Dosen;
use App\Bidang;
use App\Mahasiswa;
use App\Kategorti;

class PengabdianController extends Controller
{
    public function index(Request $request)
    {
        if($request->has('cari')){
            $data_pengabdian=\App\Pengabdian::where('Judul','Like','%'.$request->cari. '%')->paginate(10)->appends('cari',request('cari'));
        }else{
            $data_pengabdian=\App\Pengabdian::latest('id')->paginate(10);
        }
        $dosen=\App\Dosen::all();
        $kategori=\App\Kategori::all();
        $bidang=\App\Bidang::all();
        $ketua=\App\Dosen::all();
        $mahasiswa=\App\Mahasiswa::all();
        return view('pengabdian.index',['data_pengabdian'=> $data_pengabdian,'dosen'=>$dosen,'ketua'=>$ketua,'bidang'=>$bidang,'kategori'=>$kategori,'mahasiswa'=>$mahasiswa]);
    }

    public function bidang($id)
    {
        $data_pengabdian=Pengabdian::where('bidang_id',$id)->paginate(10);
        $dosen=\App\Dosen::all();
        $kategori=\App\Kategori::all();
        $bidang=\App\Bidang::all();
        $bidang=\App\Bidang::with('pengabdian')->orderBy('Nama')->paginate(10);
        $ketua=\App\Dosen::all();
        $mahasiswa=\App\Mahasiswa::all();
        return view('pengabdian.index',['data_pengabdian'=> $data_pengabdian,'dosen'=>$dosen,'ketua'=>$ketua,'bidang'=>$bidang,'kategori'=>$kategori,'mahasiswa'=>$mahasiswa]);
    }

    public function create(Request $request)
    {
        $pengabdian=\App\Pengabdian::create([
            'id'=>$request->id,
            'Judul'=>$request->Judul,
            'Tahun'=>$request->Tahun,
            'ketua_id'=>$request->ketua_id,
            'bidang_id'=>$request->bidang_id,
            'kategori_id'=>$request->kategori_id,
        ]);
        $pengabdian->save();
        $pengabdian->dosen()->attach(Input::get('dosen'));
        $pengabdian->mahasiswa()->attach(Input::get('mahasiswa'));
        return redirect('/pengabdian')->with('sukses','Berhasil');
    }
    public function hapus($id)
    {
        DB::table('pengabdian')->where('id',$id)->delete();
        return redirect('/pengabdian')->with('sukses','Sudah Dihapus');
    }

    public function detail($id)
    {
        $pengabdian=\App\Pengabdian::find($id);
        $dosen=\App\Dosen::all();
        $kategori=\App\Kategori::all();
        $bidang=\App\Bidang::all();
        return view('pengabdian.detail',['pengabdian'=>$pengabdian,'dosen'=>$dosen,'bidang'=>$bidang,'kategori'=>$kategori]);
    }
    public function editpengabdian($id)
    {
        $pengabdian=$data['pengabdian']=Pengabdian::find($id);
        $dosen=$data['dosen']=Dosen::orderBy('Nama')->get();
        $mahasiswa=$mahasiswa['mahasiswa']=Mahasiswa::orderBy('Nama')->get();
        $ketua=\App\Dosen::orderBy('Nama')->get();
        $kategori=\App\Kategori::all();
        $bidang=\App\Bidang::all();
        $checkeds=Pengabdian::find($id)->dosen()->pluck('dosen.id')->toArray();
        $checkedsa=Pengabdian::find($id)->mahasiswa()->pluck('mahasiswa.id')->toArray();
        return view('pengabdian.editpengabdian',['pengabdian'=>$pengabdian,'dosen'=>$dosen,'ketua'=>$ketua,'bidang'=>$bidang,'kategori'=>$kategori,'mahasiswa'=>$mahasiswa,'checkeds'=>$checkeds,'checkedsa'=>$checkedsa]);
    }

    public function goeditpengabdian(Request $request,$id)
    {
        DB::table('pengabdian')->where('id',$request->id)->update([
            'Judul'=>$request->Judul,
            'Tahun'=>$request->Tahun,
            'ketua_id'=>$request->ketua_id,
            'bidang_id'=>$request->bidang_id,
            'kategori_id'=>$request->kategori_id,
        ]);
        $pengabdian=\App\Pengabdian::findOrFail($id);
        $pengabdian->dosen()->sync(Input::get('dosen'));
        $pengabdian->mahasiswa()->sync(Input::get('mahasiswa'));
        return redirect('/pengabdian/'.$id.'/editpengabdian')->with('sukses','Data Diubah');
    }
    public function addpenulis(Request $request,$id)
    {
       $pengabdian=\App\Pengabdian::findOrFail($id);
       $dosen=\App\Dosen::findOrFail($id);
       $pengabdian->dosen()->associate($dosen)->save();
        return redirect('pengabdian/'.$id.'/detail')->with('sukses','GG');
    }

}
