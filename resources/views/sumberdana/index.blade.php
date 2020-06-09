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
                        <h3 class="panel-title">Data Sumber Dana</h3>
                        <div class="right">
                        @if(Auth::check() && Auth::user()->role =='admin')
                        <button type="button" class="btn" data-toggle="modal" data-target="#exampleModal"><a class="btn btn-success btn-sm">Tambah Sumber Dana</a></button>
                        @endif
                        </div>  
                    </div> 
				<div class="panel-body">
					<table class="table table-hover">
						<thead>
							<tr>
                            <th>No</th>
                            <th>Nama </th>                          
                            </tr>
						</thead>
						<tbody>
                        
                        @foreach($data_sumberdana as $pk)
                        <tr>
                        <td>{{$pk->id}}</td>
                            <td>{{$pk->Nama}}</td>
                            @if(Auth::check() && Auth::user()->role =='admin')
                            <td><a href="{{ url('sumberdana/'.$pk->id.'/hapus') }}" class="btn btn-danger btn-sm" onclick="return confirm('Hapus nih ?')">Hapus</a></td>
                            @endif
                        </tr>
                        @endforeach
                        </tbody>
					</table>
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
                    <div class="modal-body">
                            <form action="{{ url('sumberdana/create') }}" method="POST">
                            {{csrf_field()}}
                            <div class="form-group">
                                <label for="exampleInputEmail1">Kode Sumber Dana</label>
                                <input name="id" type="int" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="No Sumber Dana">
                                <small id="emailHelp" class="form-text text-muted">Masukan Kode Sumber Dana</small>
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleInputEmail1">Nama Sumber Dana</label>
                                <input name="Nama" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nama">
                                <small id="emailHelp" class="form-text text-muted">Masukan Namanya</small>
                            </div>                                      
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Simpan</button>
                        </form>
                    </div>
                    </div>
                </div>


@endsection