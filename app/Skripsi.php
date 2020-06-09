<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Skripsi extends Model
{
    protected $table = 'skripsi';
    protected $fillable=['id','Judul','Tahun','File','bidang_id','mahasiswa_id','pembimbing1_id','pembimbing2_id'];
    protected $primarykey='id';
  
    
    public function pembimbing1()
    {
        return $this->belongsTo('App\Dosen');
    }

    public function pembimbing2()
    {
        return $this->belongsTo('App\Dosen');
    }

    public function bidang()
    {
        return $this->belongsTo('App\Bidang');
    }

    public function mahasiswa()
    {
        return $this->belongsTo('App\Mahasiswa');
    }

    public function getFile()
    {
      if(!$this->File){
        return asset('file/');
      }
      return asset('file/'.$this->File);
    }

    public function verifikasi()
    {
        return $this->belongsTo('App\Verifikasi');
    }
}
