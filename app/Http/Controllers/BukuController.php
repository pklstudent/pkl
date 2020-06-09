<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use App\Buku;
use App\Penulis;
use App\Bidang;

class BukuController extends Controller
{
    public function index(Request $request)
    {
        if($request->has('search')){
            $data_buku=\App\Buku::where('Judul','Like','%'.$request->search. '%')->latest('id')->paginate(10)->appends('search',request('search'));
        }else{
            $data_buku=\App\Buku::latest('id')->paginate(10);
        } 
        $penulis=\App\Penulis::orderBy('NamaDepan')->get();
        $lokasi=\App\Lokasi::all();
        $bidang=Bidang::all();
        return view('buku.index',['data_buku'=> $data_buku,'penulis'=>$penulis,'lokasi'=>$lokasi,'bidang'=>$bidang]);
       
    }

    public function search(Request $request)
    {
          $search = $request->get('term');
          $result = Buku::where('Judul', 'LIKE', '%'. $search. '%')->get();
          return response()->json($result);
           
    } 

    public function penulis($IDPenulis)
    {
        $penulis=\App\Penulis::with('buku')->orderBy('NamaDepan')->get();
        $data_buku=Buku::whereHas('penulis',function($e) use($IDPenulis) {
            $e->where('penulis.id',$IDPenulis );
        })->paginate(10);
        $bidang=\App\Bidang::all();
        $lokasi=\App\Lokasi::all();
        $bidang=Bidang::all();
        return view('buku.index',['data_buku'=> $data_buku,'penulis'=>$penulis,'lokasi'=>$lokasi,'bidang'=>$bidang]);
       
    }

    public function bidang($IDBidang)
    {
        $bidang=\App\Bidang::with('buku')->orderBy('Nama')->paginate(10);
        $data_buku=Buku::whereHas('bidang',function($q) use($IDBidang) {
            $q->where('bidang.id',$IDBidang );
        })->paginate(10);
        $penulis=\App\Penulis::all();
        $lokasi=\App\Lokasi::all();
        $bidang=Bidang::all();
        return view('buku.index',['data_buku'=> $data_buku,'penulis'=>$penulis,'lokasi'=>$lokasi,'bidang'=>$bidang]);
       
    }

    public function create(Request $request)
    {
        $buku=\App\Buku::create($request->all());
        $buku->save();
        if($request->hasFile('foto')){
            $request->file('foto')->move('public/images/fotobuku/',$request->file('foto')->getClientOriginalName());
            $buku->foto = $request->file('foto')->getClientOriginalName();
            $buku->save();
        }
        $buku->penulis()->attach(Input::get('penulis'));
        $buku->bidang()->attach(Input::get('bidang'));     
        return redirect('/buku')->with('sukses','Berhasil');  
    }

    public function createbuku(Request $request)
    {
        $buku=$data['buku'] = Buku::all();
        $penulis=$data['penulis'] = Penulis::orderBy('NamaDepan')->get();
        $lokasi=\App\Lokasi::all();
        $bidang=$data['bidang'] = Bidang::all();
        return view('buku.createbuku',['buku'=>$buku,'penulis'=>$penulis,'lokasi'=>$lokasi,'bidang'=>$bidang]);

    }

    public function penulisadd(Request $request)
    {
        $penulis=\App\Penulis::create($request->all());
        $penulis->save();
        return $penulis;
    }
    
    public function editbuku($id)
    {
        $buku=$data['buku'] = Buku::find($id);
        $penulis=$data['penulis'] = Penulis::orderBy('NamaDepan')->get();
        $lokasi=\App\Lokasi::all();
        $bidang=$data['bidang'] = Bidang::all();
        $checkeds=Buku::find($id)->penulis()->pluck('penulis.id')->toArray();
        $checkedsa=Buku::find($id)->bidang()->pluck('bidang.id')->toArray();
        return view('buku.editbuku',['buku'=>$buku,'penulis'=>$penulis,'lokasi'=>$lokasi,'bidang'=>$bidang, 'checkeds'=>$checkeds,'checkedsa'=>$checkedsa]);

    }
    public function goeditbuku(Request $request,$id)
    {
        $buku=DB::table('buku')->where('id',$request->id)->update([
            'Judul'=>$request->Judul,
            'Penerbit'=>$request->Penerbit,
            'Tahun'=>$request->Tahun,
            'Banyak'=>$request->Banyak,
            'foto'=>$request->foto,
            'lokasi_id'=>$request->lokasi_id,
        ]);
        $buku = \App\Buku::findOrFail($id);
        if($request->hasFile('foto')){
            $request->file('foto')->move('images/foto/',$request->file('foto')->getClientOriginalName());
            $buku->foto = $request->file('foto')->getClientOriginalName();
            $buku->save();
        }
        $buku->penulis()->sync(Input::get('penulis'));
        $buku->bidang()->sync(Input::get('bidang'));
        return redirect('buku/')->with('sukses','Data Diubah');
    }
   
    public function hapus(Request $request, $id)
    {
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
        $buku=DB::table('buku')->where('id',$id)->delete();
        $image_path = ('images/foto/'.$request->file('foto'));  // Value is not URL but directory file path
        if(file::exists($image_path)) {
            file::delete($image_path);
        }
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');     
        return redirect('/buku')->with('sukses','Sudah Dihapus');

    }

    public function detail($id)
    {
        $buku=\App\Buku::find($id);
        $penulis=\App\Penulis::all();
        $lokasi=\App\Lokasi::all();
        return view('buku.detail',['buku'=>$buku, 'penulis'=>$penulis,'lokasi'=>$lokasi]);
    }

    public function addpenulis(Request $request,$idbuku)
    {
        $buku = \App\Buku::findOrFail($idbuku);
        if($buku->penulis()->where('penulis_id',$request->penulis)->exists()){
            return redirect('buku/'.$idbuku.'/detail')->with('error','Wes Onok Bosku');
        };
        $buku->penulis()->attach($request->penulis);
        return redirect('buku/'.$idbuku.'/detail')->with('sukses','Mantaplah');
    }

}
