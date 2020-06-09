<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use app\Mitra;

class Mitra extends Model
{
    protected $table = 'mitra';
    protected $fillable=['id','Nama','Alamat','CP'];
    protected $primarykey='id';
    

    public function pklkkm()
    {
        return $this->hasMany('App\Pklkkm','IDMitra');
    }
}
