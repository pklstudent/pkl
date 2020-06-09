<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Publikasi extends Model
{
    protected $table = 'publikasi';
    protected $fillable=['id','Tahun_Terbit','Judul','Deskripsi','IDPenelitian','IDPengabdian','IDJenisPublikasi'];
    protected $primarykey='id';
   

    public function penulis()
    {
        return $this->belongsToMany('App\Penulis','menulis','IDPublikasi','IDPenulis');
    }

    public function bidang()
    {
        return $this->belongsTo('App\Bidang');
    }

    public function penelitian()
    {
        return $this->belongsTo('App\Penelitian','IDPenelitian');
    }

    public function pengabdian()
    {
        return $this->belongsTo('App\Pengabdian','IDPengabdian');
    }

    public function jenispublikasi()
    {
        return $this->belongsTo('App\Jenispublikasi','IDJenisPublikasi');
    }
}
