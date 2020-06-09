@extends('tampilan.master')
@section('content')
<meta name="csrf-token" content="{{ csrf_token() }}">
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
                                            <h3 class="panel-title">Ubah Data PKL dan KKM</h3>
                                    </div>  
                                <div class="panel-body">
                                <!--form-->
                <form action="{{ url('pklkkm/create') }}" method="POST" enctype="multipart/form-data">
                            {{csrf_field()}}
                            <div class="form-group">
                                <label for="exampleInputEmail1">Kode PKL dan KKM</label>
                                <input name="id" type="int" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Silahkan jika ingin dikosongi">
                                <small id="emailHelp" class="form-text text-muted">Masukan Kode Pkl dan KKM</small>
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleInputEmail1">Judul</label>
                                <input name="Judul" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Judul">
                                <small id="emailHelp" class="form-text text-muted">Masukan Judulnya</small>
                            </div>

                            <div class="form-group">
							<label for="pklkkm">Pembimbing</label>
								<select class="form-control" id="dosen" name="KodeDosen">
								@foreach($dosen as $p)
								<option value="{{$p->id}}">{{$p->Nama}}</option>
                                @endforeach
								</select>
                                                <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#dosenModal">
                                                        Tambah Dosen
                                                </button>
                            </div>

                            <div class="form-group">
                                        <label for="exampleInputEmail1">Anggota Mahasiswa</label>
                                        <div class="dropdown">
                                            <a href="#" data-toggle="dropdown" class="dropdown-toggle"><button>Pilih Anggotanya<b class="caret"></b></button></a>
                                            <ul class="dropdown-menu">
                                            <div style="OVERFLOW-Y:scroll; WIDTH:300px; HEIGHT:300px">
                                            @foreach ($mahasiswa as $yu)
                                                <li id="mahasiswa">
                                                <input type="checkbox" name="mahasiswa[]" id="mahasiswa" value="{{$yu->id}}">
                                                        <label>
                                                        <span>{{ $yu->Nama }}</span>
                                                        </label>
                                                </li>
                                            @endforeach
                                            </div>
                                            </ul>
                                        </div>
                                        <small id="emailHelp" class="form-text text-muted">Pilih Anggota</small><br>
                                                <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#mahasiswaModal">
                                                        Tambah Mahasiswa
                                                </button>
                            </div>
       
                            <div class="form-group">
                                <label for="exampleInputEmail1">Tahun</label>
                                <input name="Tahun" type="int" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Tahun">
                                <small id="emailHelp" class="form-text text-muted">Masukan Tahun</small>
                            </div>

                            <div class="form-group">
							<label for="pklkkm">Mitra</label>
								<select class="form-control" id="mitra" name="IDMitra">
								@foreach($mitra as $cer)
								<option value="{{$cer->id}}">{{$cer->Nama}}</option>
                                @endforeach
								</select>
                                <small id="emailHelp" class="form-text text-muted">Pilih Mitra</small>
                            </div>
                            <br>
                            <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#mitraModal">
                                    Tambah Mitra
                            </button>

                            <div class="form-group">
                                                        <label for="File">File</label>
                                                        <input name="File" type="file" class="form-control" accept="application/pdf" />
                                                        <small id="emailHelp" class="form-text text-muted">Masukan Filenya</small>
                            </div>
                     
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                </form>
                                <!---->
                                </div>
                            </div>
                        </div>
                </div>
            </div>
</div>
@include('campuran.mitra')
@include('campuran.mahasiswa')
@include('campuran.dosen')
@section('auto')
<script>
$(document).ready(function(){
    $('#addmahasiswa').submit(function( event ) {
        event.preventDefault();
        $.ajax({
            url: '/mahasiswa/create',
            type: 'post',
            data: $('#addmahasiswa').serialize(), // Remember that you need to have your csrf token included
            dataType: 'json',
            success: function(success){
                console.log(success)
                $('#mahasiswaModal').modal('hide'),
                alert("Data Dah Di Save");             
            },
            error: function(error){
                console.log(error)
                alert("Data Tidak Ke Save");
            }
            })
            .done(function(res) {
            // make new option based on ajax response
            var input = '<li><input type="checkbox" name="mahasiswa[]" id="mahasiswa" value="'+ res.id +'"><label><span>' + res.Nama +'</span></label></li>';
            // append option to catogory select
            $('#mahasiswa').append(input);
            });
    });
    $('#submit').click,
    $('#adddosen').submit(function( event ) {
        event.preventDefault();
        $.ajax({
            url: '/dosen/create',
            enctype:'multipart/form-data',
            type: 'post',
            data: $('#adddosen').serialize(), // Remember that you need to have your csrf token included
            dataType: 'json',
            success: function(success){
                console.log(success)
                $('#dosenModal').modal('hide'),
                alert("Data Dah Di Save");             
            },
            error: function(error){
                console.log(error)
                alert("Data Tidak Ke Save");
            }
            })
            .done(function(res) {
            // make new option based on ajax response
            var input='<option value="'+ res.id +'">'+ res.Nama +'</option>';
            // append option to catogory select
            $('#dosen').append(input);
            });
    });
    $('#submit').click,
    $('#addmitra').submit(function( event ) {
        event.preventDefault();
        $.ajax({
            url: '/pklkkm/mitracreate',
            type: 'post',
            data: $('#addmitra').serialize(), // Remember that you need to have your csrf token included
            dataType: 'json',
            success: function(success){
                console.log(success)
                $('#mitraModal').modal('hide'),
                alert("Data Dah Di Save");             
            },
            error: function(error){
                console.log(error)
                alert("Data Tidak Ke Save");
            }
            })
            .done(function(res) {
            // make new option based on ajax response
            var input='<option value="'+ res.id +'">'+ res.Nama +'</option>';
            // append option to catogory select
            $('#mitra').append(input);
            });
    });
    $('#submit').click
});
</script>
@endsection
@endsection