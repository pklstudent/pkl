<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jenispublikasi extends Model
{
    protected $table = 'jenispublikasi';
    protected $fillable=['IDJenisPublikasi','Nama_Jenis'];
    protected $primarykey='IDJenisPublikasi';
    public $incrementing = false;

    public function publikasi()
    {
      return $this->hasMany('App\Mahasiswa','IDJenisPublikasi');
    }

}
