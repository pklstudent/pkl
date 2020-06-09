@extends('tampilan.master')
@section('content')
        <div class="main-content">
            <div class="container-fluid">
                            @if(session('sukses'))
                                <div class="alert alert-success" role="alert">
                                {{session('sukses')}}
                                </div>
                            @endif
                <div class="row">
                <div class="col-md-12">
			<!-- TABLE HOVER -->
			<div class="panel">
				    <div class="panel-heading">
                        <h3 class="panel-title">Data Mitra</h3>
                        @if(Auth::check() && Auth::user()->role =='admin')
                        <div class="right">
                        <button type="button" class="btn" data-toggle="modal" data-target="#exampleModal"><a class="btn btn-success">Tambah Mitra</a></button>
                        </div>  
                        @endif
                    </div> 
				<div class="panel-body">
                <form action="{{ url('mitra') }}" method="get">
                    <div class="input-group">
                                                <input class="form-control" name="cari" type="text" placeholder="Tulis Nama">
                                                <span  class="input-group-btn"><button class="btn btn-primary">Cari</button></span> 
                    </div>
                </form>
					<table class="table table-hover">
						<thead>
							<tr>
                            <th>No</th>
                            <th>Nama </th>
                            <th>Alamat</th>
                            <th>Kontak</th>
                            </tr>
						</thead>
						<tbody>
                        
                        @foreach($data_mitra as $pk)
                        <tr>
                        <td>{{$pk->id}}</td>
                            <td>{{$pk->Nama}}</td>
                            <td>{{$pk->Alamat}}</td>
                            <td>{{$pk->CP}}</td>
                            @if(Auth::check() && Auth::user()->role =='admin')
                            <td><a href="{{ url('mitra/'.$pk->id.'/editmitra') }}" class="btn btn-info btn-sm">Edit Mitra</a></td>
                            <td><a href="{{ url('mitra/'.$pk->id.'/hapus') }}" class="btn btn-danger btn-sm" onclick="return confirm('Hapus nih ?')">Hapus</a></td>
                            @endif
                        </tr>
                        @endforeach
                        </tbody>
					</table>
                    <b>Halaman :</b>                   <span class="badge">{{ $data_mitra->currentPage() }}</span><br/>
                    <b> Jumlah Data :</b>              <span class="badge"> {{ $data_mitra->total() }} </span><br/>
                    <b> Data Per Halaman : </b>         <span class="badge">  {{ $data_mitra->perPage() }}</span> <br/>
                
                
                    {{ $data_mitra->links() }}
				</div>
			</div>
			<!-- END TABLE HOVER -->

		</div>

                </div>
            </div>
        </div>
    </div>


    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Inputkan Datanya</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                <form action="{{ url('mitra/create') }}" method="POST">
                    <div class="modal-body">
                            {{csrf_field()}}
                            <div class="form-group">
                                <label for="exampleInputEmail1">Kode Mitra</label>
                                <input name="id" type="int" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="No Mitra">
                                <small id="emailHelp" class="form-text text-muted">Masukan Kode Mitra</small>
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleInputEmail1">Nama Mitranya</label>
                                <input name="Nama" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nama">
                                <small id="emailHelp" class="form-text text-muted">Masukan Namanya</small>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Alamat</label>
                                <input name="Alamat" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Alamat">
                                <small id="emailHelp" class="form-text text-muted">Masukan Alamat dari Mitra</small>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Kontak</label>
                                <input name="CP" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="kontak">
                                <small id="emailHelp" class="form-text text-muted">Masukan Kontak dari Mitra</small>
                            </div>
                                                        
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                    </div>
                </form>
                    </div>
                </div>
        </div>
    </div>


@endsection

