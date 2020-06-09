<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mahasiswa extends Model
{
    protected $table = 'mahasiswa';
    protected $fillable=['id','Nama','Angkatan','Tgl_Lahir','Gender','Alamat'];
    protected $primarykey='id';
    public $incrementing = false;

    public function pklkkm()
    {
      return $this->belongsToMany('App\Pklkkm','melaksanakan','mahasiswa_id','pklkkm_id');
    }

    public function penelitian()
    {
      return $this->belongsToMany('App\Penelitian','mhsmeneliti','NIM','IDPenelitian');
    }

    public function pengabdian()
    {
      return $this->belongsToMany('App\Pengabdian','mhsmengabdi','NIM','IDPengabdian');
    }

    public function skripsi()
    {
      return $this->hasOne('App\Skripsi');
    }

    public function getFotomhs()
    {
      if(!$this->fotomhs){
        return asset('images/fotomhs/default.jpg');
      }
      return asset('images/fotomhs/'.$this->fotomhs);
    }
}
