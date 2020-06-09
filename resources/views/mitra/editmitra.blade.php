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
                                <form action="{{ url('mitra/'.$mitra->id.'/gocreate') }}" method="POST">
									<div class="modal-body">
										{{csrf_field()}}
										<div class="form-group">
											<label for="exampleInputEmail1">Nama Mitranya</label>
											<input name="Nama" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$mitra->Nama}}">
                                <small id="emailHelp" class="form-text text-muted">Masukan Namanya</small>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Alamat</label>
                                <input name="Alamat" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$mitra->Alamat}}">
                                <small id="emailHelp" class="form-text text-muted">Masukan Alamat dari Mitra</small>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Kontak</label>
                                <input name="CP" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$mitra->CP}}">
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
            </div> 
        </div>
@endsection