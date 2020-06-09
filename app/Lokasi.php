<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Lokasi extends Model
{
    protected $table = 'lokasi';
    protected $fillable= ['NamaLokasi'];
    protected $primarykey='id';
    public function buku()
    {
        return $this->hasMany('App\Buku');
    }
}
