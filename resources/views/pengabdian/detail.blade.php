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
									<h3 class="panel-title">Panel No Padding</h3>
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
									<h3 class="panel-title">Condensed Table</h3>
									<div class="right">
									@if(Auth::check() && Auth::user()->role =='admin')
									<button type="button" class="btn" data-toggle="modal" data-target="#exampleModal"><a class="btn btn-info">Tambah</a></button>
									@endif
									</div>
								</div>
								<div class="panel-body">
									<table class="table table-condensed">
										<thead>
											<tr><th>No</th><th>Judul</th><th>Tahun</th><th>Ketua</th>
											<th>Bidang</th>
											<th>Kategori</th></tr>
										</thead>
										<tbody>
											<tr>
											<td>
											{{$pengabdian->id}}
											</td>
											<td>
											{{$pengabdian->Judul}}
											</td>
											<td>{{$pengabdian->Tahun}}</td>
											<td>
											{{$pengabdian->ketua['Nama']}}
											</td>
											<td>
											{{$pengabdian->kategori['Nama']}}
											</td>
											<td>
											{{$pengabdian->bidang['Nama']}}
											</td></tr>
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
	<form action="{{ url('pengabdian/'.$pengabdian->id.'/addpenulis') }}" method="POST">
                            {{csrf_field()}}
							<div class="form-group">
							<label for="penulis">Dosen</label>
								<select class="form-control" id="dosen" name="dosen">
								@foreach($dosen as $a)
								<option value="{{$a->id}}">{{$a->Nama}}</option>
								@endforeach
								</select>
							<label for="penulis">Bidang</label>
								<select class="form-control" id="bidang" name="bidang">
								@foreach($bidang as $b)
								<option value="{{$a->id}}">{{$b->Nama}}</option>
								@endforeach
								</select>
							<label for="penulis">Kategori</label>
								<select class="form-control" id="kategori" name="kategori">
								@foreach($kategori as $c)
								<option value="{{$c->id}}">{{$c->Nama}}</option>
								@endforeach
								</select>			
							</div>
	
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">simpan</button>
	</form>
      </div>
    </div>
  </div>
</div>

@endsection