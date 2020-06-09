<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Buku extends Model
{
  protected $table = 'buku';
  protected $fillable=['Judul','id','Penerbit','Tahun','Banyak','Detail','foto','lokasi_id'];
  protected $primarykey='id';
  

      public function penulis()
    {
      return $this->belongsToMany('App\Penulis','mengarang','IDBuku','IDPenulis')->withTimeStamps();
    }

      public function lokasi()
    {
      return $this->belongsTo('App\Lokasi');
    }
      public function bidang()
    {
      return $this->belongsToMany('App\Bidang','termasuk','IDBuku','IDBidang')->withTimeStamps();
    }

    public function getFoto()
    {
      if(!$this->foto){
        return asset('public/images/fotobuku/default.png');
      }
      return asset('public/images/fotobuku/'.$this->foto);
    }

}


