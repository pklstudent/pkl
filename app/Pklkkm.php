<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pklkkm extends Model
{
    protected $table = 'pklkkm';
    protected $fillable=['id','Skema','Judul','Tahun','Laporan','IDMitra','KodeDosen'];
    protected $primarykey='id';
    

    public function mahasiswa()
    {
        return $this->belongsToMany('App\Mahasiswa','melaksanakan');
    }

    public function mitra()
    {
        return $this->belongsTo('App\Mitra','IDMitra');
    }

    public function dosen()
    {
        return $this->belongsTo('App\Dosen','KodeDosen');
    }

    public function getFile()
    {
      if(!$this->File){
        return asset('file/');
      }
      return asset('file/'.$this->File);
    }
}
