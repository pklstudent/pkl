<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*
Route::get('/', function () {
    return view('beranda.index');
});*/
Route::get('/','BerandaController@index');

Route::get('search', 'Select2Controller@index')->name('search');
Route::get('autocomplete', 'Select2Controller@search')->name('autocomplete');
Route::get('autocompletebuku', 'BukuController@search');

//login
Route::get('/login','AuthController@login')->name('login');
Route::post('/postlogin','AuthController@postlogin');
Route::get('/logout','AuthController@logout');
Route::post('/register','AuthController@register');
Route::post('/registermahasiswa','AuthController@registermahasiswa');

//Perpustakaan Buku
Route::get('/beranda','BerandaController@index');
Route::get('/buku','BukuController@index');
Route::get('/buku/{id}/detail','BukuController@detail');
Route::get('/dosen','DosenController@index');
Route::get('/dosen/{id}/detail','DosenController@detail');
Route::get('/penelitian','PenelitianController@index');
Route::get('/penelitian/{id}/detail','PenelitianController@detail');

Route::get('penelitian/{bidang}/bidang',[
    'uses'=>'PenelitianController@bidang',
    'as'=>'bidangpenelitian'
]);

Route::get('/pengabdian/{id}/detail','PengabdianController@detail');
Route::get('/pengabdian','PengabdianController@index');
Route::get('pengabdian/{bidang}',[
    'uses'=>'PengabdianController@bidang',
    'as'=>'bidangpengabdian'
]);
Route::get('buku/penulis/{penulis}',[
    'uses'=>'BukuController@penulis',
    'as'=>'penulisbuku'
]);
Route::get('buku/bidang/{bidang}',[
    'uses'=>'BukuController@bidang',
    'as'=>'bidangbuku'
]);
Route::get('/skripsi','SkripsiController@index');
Route::get('skripsi/{bidang}/bidang',[
    'uses'=>'SkripsiController@bidang',
    'as'=>'bidangskripsi'
]);
Route::get('/skripsi/{id}/detail','SkripsiController@detail');
Route::get('/publikasi','PublikasiController@index');
Route::get('/publikasi/{id}/detail','PublikasiController@detail');
Route::get('/pklkkm','PklkkmController@index');
Route::get('/pklkkm/{id}/detail','PklkkmController@detail');
Route::get('/penulis','PenulisController@index');
Route::get('/penulis/{id}/detail','PenulisController@detail');
Route::get('/mitra','MitraController@index');
Route::get('/kategori','KategoriController@index');
Route::get('/sumberdana','SumberdanaController@index');

Route::group(['middleware'=>['auth','cRole:admin,mahasiswa']],function(){
    Route::post('/skripsi/create','SkripsiController@create');
    Route::get('/skripsi/createskripsi','SkripsiController@createskripsi');
    Route::post('/pklkkm/create','PklkkmController@create');
    Route::get('/pklkkm/createpklkkm','PklkkmController@createpklkkm');
});
//Buku
Route::group(['middleware'=>['auth','cRole:admin']],function(){
    Route::post('/buku/create','BukuController@create');
    Route::get('/buku/createbuku','BukuController@createbuku');
    Route::post('/buku/penulisadd','BukuController@penulisadd');
    Route::get('/buku/{id}/editbuku','BukuController@editbuku');
    Route::post('/buku/{id}/goeditbuku','BukuController@goeditbuku');
    Route::get('/buku/{id}/hapus', 'BukuController@hapus');
    Route::post('/buku/{id}/addpenulis','BukuController@addpenulis');
    

//Dosen

    
    Route::post('/dosen/create','DosenController@create');
    Route::get('/dosen/{id}/editdosen','DosenController@editdosen');
    Route::post('/dosen/{id}/goeditdosen','DosenController@goeditdosen');
    Route::get('/dosen/{id}/hapus', 'DosenController@hapus');
    

//Mahasiswa

    Route::get('/mahasiswa','MahasiswaController@index');
    Route::get('/mahasiswa/{id}/detail','MahasiswaController@detail');
    Route::post('/mahasiswa/create','MahasiswaController@create');
    Route::get('/mahasiswa/{id}/editmahasiswa', 'MahasiswaController@editmahasiswa');
    Route::post('/mahasiswa/{id}/goeditmahasiswa','MahasiswaController@goeditmahasiswa');
    Route::get('/mahasiswa/{id}/hapus', 'MahasiswaController@hapus');
    
    

//Penelitian

    
    Route::post('/penelitian/create','PenelitianController@create');
    Route::get('/penelitian/createpenelitian','PenelitianController@createpenelitian');
    Route::post('/penelitian/mahasiswaadd','PenelitianController@mahasiswaadd');
    Route::get('/penelitian/{id}/editpenelitian', 'PenelitianController@editpenelitian');
    Route::post('/penelitian/{id}/goeditpenelitian','PenelitianController@goeditpenelitian');
    Route::get('/penelitian/hapus/{id}', 'PenelitianController@hapus');
    
    Route::post('/penelitian/{id}/addpenulis','PenelitianController@addpenulis');
    


//Pengabdian

    
    Route::post('/pengabdian/create','PengabdianController@create');
    Route::get('/pengabdian/{id}/editpengabdian', 'PengabdianController@editpengabdian');
    Route::post('/pengabdian/{id}/goeditpengabdian','PengabdianController@goeditpengabdian');
    Route::get('/pengabdian/hapus/{id}', 'PengabdianController@hapus');
    
    Route::post('/pengabdian/{id}/addpenulis','PengabdianController@addpenulis');
    

//Skripsi
    
    Route::get('/skripsi/{id}/editskripsi', 'SkripsiController@editskripsi');
    Route::post('/skripsi/{id}/goverifikasi', 'SkripsiController@goverifikasi');
    Route::post('/skripsi/{id}/goeditskripsi','SkripsiController@goeditskripsi');
    Route::get('/skripsi/hapus/{id}', 'SkripsiController@hapus');
    

//Publikasi

    
    Route::post('/publikasi/create','PublikasiController@create');
    Route::get('/publikasi/createpublikasi','PublikasiController@createpublikasi');
    Route::get('/publikasi/{id}/editpublikasi', 'PublikasiController@editpublikasi');
    Route::post('/publikasi/{id}/goeditpublikasi','PublikasiController@goeditpublikasi');
    Route::get('/publikasi/hapus/{id}', 'PublikasiController@hapus');
    

//Pklkkm

   
    
    Route::get('/pklkkm/{id}/editpklkkm', 'PklkkmController@editpklkkm');
    Route::post('/pklkkm/{id}/goeditpklkkm','PklkkmController@goeditpklkkm');
    Route::get('/pklkkm/{id}/hapus', 'PklkkmController@hapus');
    Route::post('/pklkkm/mitracreate','PklkkmController@mitracreate');
   

//Penulis

    
    Route::post('/penulis/create','PenulisController@create');
    Route::get('/penulis/{id}/editpenulis', 'PenulisController@editpenulis');
    Route::post('/penulis/{id}/goeditpenulis','PenulisController@goeditpenulis');
    Route::get('/penulis/{id}/hapus', 'PenulisController@hapus');
    

//Mitra

    
    Route::post('/mitra/create','MitraController@create');
    Route::get('/mitra/{id}/editmitra','MitraController@editmitra');
    Route::post('/mitra/{id}/gocreate','MitraController@gocreate');
    Route::get('/mitra/{id}/hapus', 'MitraController@hapus');
    

//Kategori


    Route::get('/kategori','KategoriController@index');
    Route::post('/kategori/create','KategoriController@create');
    Route::get('/kategori/{id}/hapus', 'KategoriController@hapus');

//Sumber Dana

    Route::get('/sumberdana','SumberdanaController@index');
    Route::post('/sumberdana/create','SumberdanaController@create');
    Route::get('/sumberdana/{id}/hapus', 'SumberdanaController@hapus');
});