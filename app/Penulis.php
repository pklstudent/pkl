<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Penulis extends Model
{
    protected $table = 'penulis';
    protected $fillable= ['id','NamaBelakang','NamaDepan'];
    protected $primarykey='id';

        public function buku()
        {
        return $this->belongsToMany('App\Buku','mengarang','IDBuku','IDPenulis')->withTimeStamps();
        }
        public function publikasi()
    {
        return $this->belongsToMany('App\Publikasi','menulis','IDPublikasi','IDPenulis')->withTimeStamps();
    }

}
