<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kategori extends Model
{
    protected $table = 'kategori';
    protected $fillable=['id','Nama','JumlahDana','ID_Dana'];
    protected $primarykey='id';
    public function pengabdian()
    {
      return $this->hasMany('App\Pengabdian');
    }

    public function penelitian()
    {
      return $this->hasMany('App\Penelitian');
    }
    public function sumberdana()
    {
      return $this->belongsToMany('App\Sumberdana','didanai','IDKategori', 'IDDana');
    }
}
