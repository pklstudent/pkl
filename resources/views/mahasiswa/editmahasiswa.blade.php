@extends('tampilan.master')
@section('content')
        <div class="main-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-heading">
                                                        <h3 class="panel-title">Ubah Data Mahasiswa</h3>
                                </div>
                                <div class="panel-body">
                                                
                                <form action="{{ url('mahasiswa/'.$mahasiswa->id.'/goeditmahasiswa') }}" method="POST" enctype="multipart/form-data">
                                                {{csrf_field()}}
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Nama</label>
                                                    <input name="Nama" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$mahasiswa->Nama}}">
                                                    <small id="emailHelp" class="form-text text-muted">Masukan Namanya</small>
                                                </div>
                        
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Tanggal Lahir</label>
                                                    <input name="Tgl_Lahir" type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$mahasiswa->Tgl_Lahir}}">
                                                    <small id="emailHelp" class="form-text text-muted">Masukan Tanggal Lahir</small>
                                                </div>

                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Angkatan</label>
                                                    <input name="Angkatan" type="int" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$mahasiswa->Angkatan}}">
                                                    <small id="emailHelp" class="form-text text-muted">Masukan Angkatennya</small>
                                                </div>

                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Gender</label>
                                                    <input name="Gender" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$mahasiswa->Gender}}">
                                                    <small id="emailHelp" class="form-text text-muted">Masukan Gendernya</small>
                                                </div>

                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Alamat</label>
                                                    <input name="Alamat" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$mahasiswa->Alamat}}">
                                                    <small id="emailHelp" class="form-text text-muted">Masukan Alamat</small>
                                                </div>

                                                <div class="form-group">
                                                        <label for="exampleInputEmail1">Foto</label>
                                                        <input name="fotomhs" type="file" class="form-control">
                                                        <small id="emailHelp" class="form-text text-muted">Masukan Fotonya</small>
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
</div>
@endsection