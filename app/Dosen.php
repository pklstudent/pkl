<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Dosen;

class Dosen extends Model
{
    protected $table = 'dosen';
    protected $fillable=['id','NIP','NIDN','Nama','Gelar','NamaDepan','NamaBelakang','Golongan','Jabatan','Jurusan','Fakultas','TglLahir','Status','Gender','Alamat','Bidang','profil'];
    protected $primarykey='id';
  

    public function pengabdian1()
    {
      return $this->hasMany('App\Pengabdian','ketua_id');
    }
    public function penelitian1()
    {
      return $this->hasMany('App\Penelitian','dosene_id');
    }
    public function penelitian()
    {
      return $this->belongsToMany('App\Penelitian','dsnmeneliti','KodeDosen','IDPenelitian');
     
    }
    public function pengabdian()
    {
      return $this->belongsToMany('App\Pengabdian','dsnmengabdi','KodeDosen','IDPengabdian');
    }
    
    public function skripsi1()
    {
      return $this->hasMany('App\Skripsi','pembimbing1_id');
    }

    public function skripsi2()
    {
      return $this->hasMany('App\Skripsi','pembimbing2_id');
    }

    public function pklkkm()
    {
      return $this->hasMany('App\Pklkkm','KodeDosen');
    }

    public function getProfil()
    {
      if(!$this->profil){
        return asset('public/images/default.jpg');
      }
      return asset('public/images/profildosen/'.$this->profil);
    }
}
