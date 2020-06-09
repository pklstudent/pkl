<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bidang extends Model
{
    protected $table = 'bidang';
    protected $fillable=['id','Nama'];
    protected $primarykey='id';
  
    public function pengabdian()
    {
      return $this->hasMany('App\Pengabdian');
    }

    Public function buku()
    {
      return $this->belongsToMany('App\Buku','termasuk','IDBuku','IDBidang');
    }

    public function penelitian()
    {
      return $this->hasMany('App\Penelitian');
    }

    public function skripsi()
    {
      return $this->hasMany('App\Skripsi');
    }
}
