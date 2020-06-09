<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Dosen;
use App\Pengabdian;
use App\Penelitian;

class DosenController extends Controller
{
    public function index(Request $request)
    {
        if($request->has('cari')){
            $data_dosen=\App\Dosen::where('Nama','Like','%'.$request->cari. '%')->paginate(10)->appends('cari',request('cari'));
        }elseif($request->has('Jurusan')){
            $data_dosen=\App\Dosen::where('Jurusan',request('Jurusan'))->paginate(10)->appends('Jurusan',request('Jurusan'));
        }else{
            $data_dosen=\App\Dosen::paginate(10);
        }
        
        return view('dosen.index',['data_dosen'=> $data_dosen]);
    }

    public function create(Request $request)
    {
        $dosen=\App\Dosen::create($request->all());
        $dosen->save();
        if($request->hasFile('profil')){
            $request->file('profil')->move('public/images/profildosen/',$request->file('profil')->getClientOriginalName());
            $dosen->profil = $request->file('profil')->getClientOriginalName();
            $dosen->save();
        }
        return $dosen;     
        return redirect('/dosen')->with('sukses','Berhasil di buat');  
    }

    public function editdosen($id)
    {
        $dosen=$data['dosen'] = Dosen::find($id);
        return view('dosen.editdosen',['dosen'=>$dosen]);

    }
    public function goeditdosen(Request $request,$id)
    {
        $dosen=DB::table('dosen')->where('id',$request->id)->update([
            'NIP'=>$request->NIP,
            'NIDN'=>$request->NIDN,
            'Nama'=>$request->Nama,
            'Golongan'=>$request->Golongan,
            'Jabatan'=>$request->Jabatan,
            'Jurusan'=>$request->Jurusan,
            'Fakultas'=>$request->Fakultas,
            'TglLahir'=>$request->TglLahir,
            'Status'=>$request->Status,
            'Gender'=>$request->Gender,
            'Alamat'=>$request->Alamat,
            'Bidang'=>$request->Bidang,
            'profil'=>$request->profil,
            
        ]);
        $dosen=\App\Dosen::find($id);
        if($request->hasFile('profil')){
            $request->file('profil')->move('public/images/profildosen/',$request->file('profil')->getClientOriginalName());
            $dosen->profil = $request->file('profil')->getClientOriginalName();
            $dosen->save();
        }
        return redirect('/dosen')->with('sukses','Data Diubah');
    }
    
    public function detail($id)
    {
        $dosen=\App\Dosen::find($id);
        $pengabdian=Pengabdian::all();
        $penelitian=Penelitian::all();
        return view('dosen.detail',['dosen'=>$dosen,'pengabdian'=>$pengabdian,'penelitian'=>$penelitian]);
    }

    public function hapus($id)
    {
        $dosen=DB::table('dosen')->where('id',$id)->delete();     
        return redirect('/dosen')->with('sukses','Sudah Dihapus');
    }
}
