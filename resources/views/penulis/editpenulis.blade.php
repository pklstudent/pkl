@extends('tampilan.master')
@section('content')
    <div class="main-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <!--tabel input-->
                        <div class="panel">
                        <div class="panel-heading">
                            <h3 class="panel-title">Ubah</h3>
                            
                            @if(session('sukses'))
                            <div class="alert alert-succes" role="alert">
                             {{session('sukses')}}
                            </div>
                            @endif
                            
                        </div>
                        <div class="panel-body">
                            <!--ubah nya gan-->
                            <form action="{{ url('penulis/'.$penulis->id.'/goeditpenulis') }}" method="POST">
                            {{csrf_field()}}
                            <div class="form-group">
                                <label for="exampleInputEmail1">Kode Penulis</label>
                                <input name="id" type="int" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$penulis->id}}">
                                <small id="emailHelp" class="form-text text-muted">Masukan Kode Penulis</small>
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleInputEmail1">Nama Depan</label>
                                <input name="NamaDepan" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$penulis->NamaDepan}}">
                                <small id="emailHelp" class="form-text text-muted">Masukan Namanya</small>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Nama Belakang</label>
                                <input name="NamaBelakang" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$penulis->NamaBelakang}}">
                                <small id="emailHelp" class="form-text text-muted">Masukan Nama Belakangnya</small>
                            </div>
                                                        
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                    
                            </form>
                            <!--Hehe-->
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
</div>




@endsection