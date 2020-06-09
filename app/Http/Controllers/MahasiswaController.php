<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Input;

use Illuminate\Http\Request;
use DB;
use App\Pklkkm;
use App\Mahasiswa;

class MahasiswaController extends Controller
{
    public function index(Request $request)
    {
        if($request->has('cari')){
            $data_mahasiswa=\App\Mahasiswa::where('Nama','Like','%'.$request->cari. '%')->latest('id')->paginate(10)->appends('cari',request('cari'));
        }else{
            $data_mahasiswa=\App\Mahasiswa::paginate(10);
        }
        $pklkkm=\App\Pklkkm::all();
        return view('mahasiswa.index',['data_mahasiswa'=> $data_mahasiswa,'pklkkm'=>$pklkkm]);
    }
    
    public function create(Request $request)
    {
        $mahasiswa=\App\Mahasiswa::create($request->all());
        $mahasiswa->save();
        if($request->hasFile('fotomhs')){
            $request->file('fotomhs')->move('images/fotomhs/',$request->file('fotomhs')->getClientOriginalName());
            $mahasiswa->fotomhs = $request->file('fotomhs')->getClientOriginalName();
            $mahasiswa->save();
        }
        return $mahasiswa;     
        return redirect('/mahasiswa')->with('sukses','Berhasil');  
    }

    public function editmahasiswa($id)
    {
        $mahasiswa=$data['mahasiswa'] = Mahasiswa::find($id);
        $pklkkm=$data['pklkkm'] = Pklkkm::all();
        $checkeds=Mahasiswa::find($id)->pklkkm()->pluck('pklkkm.ID')->toArray();
        return view('mahasiswa.editmahasiswa',['mahasiswa'=>$mahasiswa,'pklkkm'=>$pklkkm,'checkeds'=>$checkeds]);

    }

    public function goeditmahasiswa(Request $request,$id)
    {
        $mahasiswa=DB::table('mahasiswa')->where('id',$request->id)->update([
            'Nama'=>$request->Nama,
            'Angkatan'=>$request->Angkatan,
            'Tgl_Lahir'=>$request->Tgl_Lahir,
            'Gender'=>$request->Gender,
            'Alamat'=>$request->Alamat,
            'fotomhs'=>$request->fotomhs,
        ]);
        $mahasiswa = \App\Mahasiswa::findOrFail($id);
        if($request->hasFile('fotomhs')){
            $request->file('fotomhs')->move('images/fotomhs/',$request->file('fotomhs')->getClientOriginalName());
            $mahasiswa->fotomhs = $request->file('fotomhs')->getClientOriginalName();
            $mahasiswa->save();
        }
        $mahasiswa->pklkkm()->sync(Input::get('pklkkm'));
        return redirect('/mahasiswa')->with('sukses','Data Diubah');
    }

    public function hapus($id)
    {
        $mahasiswa=DB::table('mahasiswa')->where('id',$id)->delete();     
        return redirect('/mahasiswa')->with('sukses','Sudah Dihapus');
    }

    public function detail($id)
    {
        $mahasiswa=\App\Mahasiswa::find($id);
        $pklkkm=\App\Pklkkm::all();
        return view('mahasiswa.detail',['mahasiswa'=>$mahasiswa,'pklkkm'=>$pklkkm]);
    }
}
