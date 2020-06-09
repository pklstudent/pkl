@extends('tampilan.master')
@section('content')
<div class="main-content">
            <div class="container-fluid">
							@if(session('sukses'))
                            <div class="alert alert-succes" role="alert">
                             {{session('sukses')}}
                            </div>
                            @endif

							@if(session('error'))
                            <div class="alert alert-danger" role="alert">
                             {{session('error')}}
                            </div>
                            @endif
                <div class="row">

                        <div class="col-md-12">

                            <div class="panel">
                                    <div class="panel-heading">
                                            <h3 class="panel-title">Ubah Data Publikasi</h3>
                                    </div>  
                                <div class="panel-body">
                                <form action="{{ url('publikasi/create') }}" method="post">
                            {{csrf_field()}}
                            <div class="form-group">
                                <label for="exampleInputEmail1">No</label>
                                <input name="id" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Kode Publikasi">
                                <small id="emailHelp" class="form-text text-muted">Masukan Nomornya</small>
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleInputEmail1">Judul</label>
                                <input name="Judul" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Judul">
                                <small id="emailHelp" class="form-text text-muted">Masukan Judulnya</small>
                            </div>

                            <div class="form-group">
                                        <label for="exampleInputEmail1">Penulis</label>
                                        <div class="dropdown">
                                            <a href="#" data-toggle="dropdown" class="dropdown-toggle"><button>Daftar Penulis<b class="caret"></b></button></a>
                                            <ul class="dropdown-menu">
                                            <div style="OVERFLOW-Y:scroll; WIDTH:300px; HEIGHT:300px">
                                            @foreach ($penulis as $p)
                                            <li id="penulis">
                                                    <input type="checkbox" name="penulis[]" id="penulis" value="{{$p->id}}">
                                                        <label value="{{$p->id}}">
                                                        <span>{{ $p->NamaDepan }}
                                                        {{$p->NamaBelakang}}</span>
                                                        </label>
                                                </li>
                                            @endforeach
                                            </div>
                                            </ul>
                                        </div>
                                        <small id="emailHelp" class="form-text text-muted">Pilih Penulis</small><br>
                                        <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#penulisModal"><i class="glyphicon glyphicon-plus-sign"></i> Tambah Penulis</button>   
                            </div>
       
                            <div class="form-group">
                                <label for="exampleInputEmail1">Tahun</label>
                                <input name="Tahun_Terbit" type="int" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Tahun Terbitnya">
                                <small id="emailHelp" class="form-text text-muted">Masukan Tahun</small>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Deskripsi</label>
                                <input name="Deskripsi" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Deskripsi">
                                <small id="emailHelp" class="form-text text-muted">Masukan Deskripsi</small>
                            </div>

                            <div class="form-group">
							<label for="publikasi">Pengabdian</label>
								<select class="form-control" id="publikasi" name="IDPengabdian">
								@foreach($pengabdian as $ce)
								<option value="{{$ce->id}}">{{$ce->Judul}}</option>
                                @endforeach
								</select>
                            </div>
                            
                            <div class="form-group">
							<label for="penelitian">Penelitian</label>
								<select class="form-control" id="penelitian" name="IDPenelitian">
								@foreach($penelitian as $ce)
								<option value="{{$ce->id}}">{{$ce->Judul}}</option>
                                @endforeach
								</select>
                            </div>

                            <div class="form-group">
							<label for="kategori">Jenis Publikasi</label>
								<select class="form-control" id="kategori" name="IDJenisPublikasi">
								@foreach($jenispublikasi as $ke)
								<option value="{{$ke->id}}">{{$ke->Nama_Jenis}}</option>
                                @endforeach
								</select>
                            </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                    </form>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
</div>
@include('campuran.penulis')
@section('auto')
<script>
$(document).ready(function(){
    $('#addpenulis').submit(function( event ) {
        event.preventDefault();
        $.ajax({
            url: '/buku/penulisadd',
            type: 'post',
            data: $('#addpenulis').serialize(), // Remember that you need to have your csrf token included
            dataType: 'json',
            success: function(success){
                console.log(success)
                $('#penulisModal').modal('hide'),
                alert("Data Dah Di Save");             
            },
            error: function(error){
                console.log(error)
                alert("Data Tidak Ke Save");
            }
            })
            .done(function(res) {
            // make new option based on ajax response
            var input = '<li><input type="checkbox" name="penulis[]" id="penulis" value="'+ res.id +'"><label><span>' + res.NamaDepan +' '+ res.NamaBelakang +'</span></label></li>';
            // append option to catogory select
            $('#penulis').append(input);
            });
    });
    $('#submit').click
});
</script>
@endsection
@endsection
