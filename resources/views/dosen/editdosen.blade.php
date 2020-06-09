@extends('tampilan.master')
@section('content')
        <div class="main-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                            <div class="panel">
                                                <div class="panel-heading">
                                                        <h3 class="panel-title">Ubah Data Dosen</h3>
                                                </div>
                                                <div class="panel-body">

                                            <form action="{{ url('dosen/'.$dosen->id.'/goeditdosen') }}" method="POST" enctype="multipart/form-data">
                                                    {{csrf_field()}}  
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">NIP</label>
                                                        <input name="NIP" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$dosen->NIP}}">
                                                        <small id="emailHelp" class="form-text text-muted">Masukan NIP</small>
                                                    </div>
                            
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">NIDN</label>
                                                        <input name="NIDN" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$dosen->NIDN}}">
                                                        <small id="emailHelp" class="form-text text-muted">Masukan NIDN</small>
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Nama</label>
                                                        <input name="Nama" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$dosen->Nama}}">
                                                        <small id="emailHelp" class="form-text text-muted">Masukan Nama Dosen</small>
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Golongan</label>
                                                        <input name="Golongan" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$dosen->Golongan}}">
                                                        <small id="emailHelp" class="form-text text-muted">Masukan Golongan</small>
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Jabatan</label>
                                                        <input name="Jabatan" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$dosen->Jabatan}}">
                                                        <small id="emailHelp" class="form-text text-muted">Masukan Jabatan</small>
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Jurusan</label>
                                                        <input name="Jurusan" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$dosen->Jurusan}}">
                                                        <small id="emailHelp" class="form-text text-muted">Masukan Jurusan</small>
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Fakultas</label>
                                                        <input name="Fakultas" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$dosen->Fakultas}}">
                                                        <small id="emailHelp" class="form-text text-muted">Masukan Fakultas</small>
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Tanggal Lahir</label>
                                                        <input name="TglLahir" type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$dosen->TglLahir}}">
                                                        <small id="emailHelp" class="form-text text-muted">Tanggal Lahir</small>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Status</label>
                                                        <input name="Status" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$dosen->Status}}">
                                                        <small id="emailHelp" class="form-text text-muted">Masukan Status</small>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Gender</label>
                                                        <input name="Gender" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$dosen->Gender}}">
                                                        <small id="emailHelp" class="form-text text-muted">Masukan Gender</small>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Alamat</label>
                                                        <input name="Alamat" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$dosen->Alamat}}">
                                                        <small id="emailHelp" class="form-text text-muted">Masukan Alamat</small>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Bidang</label>
                                                        <input name="Bidang" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$dosen->Bidang}}">
                                                        <small id="emailHelp" class="form-text text-muted">Masukan Bidang</small>
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Profilnya</label>
                                                        <input name="profil" type="file" class="form-control">
                                                        <small id="emailHelp" class="form-text text-muted">Masukan Profil</small>
                                                    </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                                                <button type="submit" class="btn btn-primary">Simpan</button>
                                            </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<div>
@endsection