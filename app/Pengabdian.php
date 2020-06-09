<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pengabdian extends Model
{
    protected $table = 'pengabdian';
    protected $fillable=['id','Judul','Tahun','ketua_id','bidang_id','kategori_id'];
    protected $primarykey='id';
   

    public function ketua()
    {
      return $this->belongsTo('App\Dosen');
    }

    
    public function dosen()
    {
      return $this->belongsToMany('App\Dosen','dsnmengabdi','IDPengabdian','KodeDosen');
    }

    public function kategori()
    {
      return $this->belongsTo('App\Kategori');
    }

    public function bidang()
    {
      return $this->belongsTo('App\Bidang');
    }

    public function mahasiswa()
    {
      return $this->belongsToMany('App\Mahasiswa','mhsmengabdi','IDPengabdian','NIM');
    }

    public function publikasi()
    {
      return $this->hasMany('App\Publikasi','IDPengabdian');
    }
}
