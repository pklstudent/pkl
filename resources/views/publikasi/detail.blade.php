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
							<!-- PANEL NO PADDING -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Informasi</h3>
									<div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
									</div>
								</div>
								<div class="panel-body no-padding bg-primary text-center">
									<div class="padding-top-30 padding-bottom-30">
										<i class="fa fa-thumbs-o-up fa-5x"></i>
										<h3>No Content Padding</h3>
									</div>
								</div>
							</div>
							<!-- END PANEL NO PADDING -->


							<div class="col-md-12">

							<!-- CONDENSED TABLE -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Tabel Publikasi</h3>
									<div class="right">
									@if(Auth::check() && Auth::user()->role =='admin')
									<button type="button" class="btn" data-toggle="modal" data-target="#exampleModal"><i class="btn btn-warning btn-sm">Tambah Penulis Lain</i></button>
									@endif
									</div>
								</div>
								<div class="panel-body">
									<table class="table table-condensed">
										<thead>
											<tr><th>No</th><th>Judul</th><th>Nama Penulis</th><th>Penelitian</th><th>Pengabdian</th></tr>
										</thead>
										<tbody>
											<tr>
											<td>
											{{$publikasi->id}}
											</td>
											<td>
											{{$publikasi->Judul}}
											</td>
											<td>
											@foreach($publikasi->penulis as $ce)
                                            <ul><li>{{$ce->NamaBelakang}},{{$ce->NamaDepan}}</li></ul>
                                            @endforeach  
											</td>
											<td>{{$publikasi->penelitian['Judul']}}
                                            </td>
                                            <td>{{$publikasi->pengabdian['Judul']}}</td>
										</tbody>
									</table>
								</div>
							</div>
							<!-- END CONDENSED TABLE -->

		</div>
					

			</div>
        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
	<form action="{{ url('publikasi/'.$publikasi->id.'/addpenulis') }}" method="POST" name="penulis">
                            {{csrf_field()}}
							<div class="form-group">
								<label for="penulis">Penulis</label>
								<select class="form-control" id="penulis" name="penulis">
								@foreach($penulis as $a)
								<option value="{{$a->id}}">{{$a->NamaDepan}}</option>
								@endforeach
								</select>
							</div>
	
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
        <button type="submit" class="btn btn-primary">simpan</button>
	</form>
      </div>
    </div>
  </div>
</div>

@endsection