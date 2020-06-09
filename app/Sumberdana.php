<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sumberdana extends Model
{
    protected $table = 'sumberdana';
    protected $fillable=['id','Nama'];
    protected $primarykey='id';
    

    public function kategori()
    {
      return $this->belongsToMany('App\Kategori','didanai', 'IDKategori','IDDana');
    }
}
