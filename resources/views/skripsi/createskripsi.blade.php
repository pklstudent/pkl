@extends('tampilan.master')
@section('content')
<div class="main-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">

                        <div class="panel">
                                <div class="panel-heading">
                                        <h3 class="panel-title">Buat Data Skripsi</h3>
                                        <div class="right">
                                        </div>
                                </div>
                                <div class="panel-body">
                                <form action="{{ url('skripsi/create') }}" method="POST" enctype="multipart/form-data">
                                {{csrf_field()}}
                                <!--<div class="form-group">
                                    <label for="exampleInputEmail1">Kode skripsi</label>
                                    <input name="id" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Bisa dikosongi ataupun diisi">
                                    <small id="emailHelp" class="form-text text-muted">Masukan Nomor Terakhir</small>
                                </div>-->
                                
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Judul</label>
                                    <input name="Judul" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Judul">
                                    <small id="emailHelp" class="form-text text-muted">Masukan Judul</small>
                                </div>

                                <div class="form-group">
                                <label for="skripsi">NIM - Nama</label>
                                    <select class="form-control" id="mahasiswa" name="mahasiswa_id" class="multiselect multiselect-custom select4-filter">
                                        <option>Pilih salah satu...</option>
                                    @foreach($mahasiswa as $ce)
                                        <option value="{{$ce->id}}">{{$ce->id}} - {{$ce->Nama}}</option>
                                    @endforeach
                                    </select>
                                    <p style="padding-top:1em;">Jika NIM belum terdaftar silakan menghubungi admin</p>
                                                <!--<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#mahasiswaModal">
                                                        Tambah Mahasiswa
                                                </button><br>-->              
                                </div>

                                <div class="form-group">
                                <label for="skripsi">Nama Pembimbing Satu</label>
                                    <select class="form-control" id="dosen" name="pembimbing1_id">
                                    @foreach($pembimbing1 as $de)
                                    <option value="{{$de->id}}">{{$de->Nama}} (NIP. {{$de->NIP}})</option>
                                    @endforeach
                                    </select>
                                                <!--<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#dosenModal">
                                                        Tambah Dosen
                                                </button>-->
                                </div>

                                <div class="form-group">
                                <label for="skripsi">Nama Pembimbing Dua</label>
                                    <select class="form-control" id="dosenk" name="pembimbing2_id">
                                    @foreach($pembimbing2 as $be)
                                    <option value="{{$be->id}}">{{$be->Nama}} (NIP. {{$be->NIP}})</option>
                                    @endforeach
                                    </select>
                                                <!--<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#dosenModal">
                                                        Tambah Dosen
                                                </button>-->
                                </div>
        
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Tahun</label>
                                    <input name="Tahun" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Tahun">
                                    <small id="emailHelp" class="form-text text-muted">Masukan Tahun</small>
                                </div>

                                <div class="form-group">
                                <label for="skripsi">Bidang</label>
                                    <select class="form-control" id="skripsi" name="bidang_id">
                                    @foreach($bidang as $we)
                                    <option value="{{$we->id}}">{{$we->Nama}}</option>
                                    @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="File">File</label>
                                    <input name="File" type="file" class="form-control" accept="application/pdf" />
                                    <small id="emailHelp" class="form-text text-muted">Masukan Filenya</small>
                                </div>
                                
                            <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal"><a href="{{ url()->previous() }}"> Kembali</a></button>
                                <button type="submit" class="btn btn-primary">Simpan</button>
                            </div>
                            </form>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
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
            var input = '<option value="'+ res.id +'">'+ res.id +'</option>';
            // append option to catogory select
            $('#mahasiswa').append(input);
            });
    });
    $('#submit').click,
    $('#adddosen').submit(function( event ) {
        event.preventDefault();
        $.ajax({
            url: '/dosen/create',
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
            $('#dosenk').append(input);
            });
    });
    $('#submit').click
});
</script>
@endsection
@endsection