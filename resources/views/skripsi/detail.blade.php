@extends('tampilan.master')
@section('content')
        <div class="main-content">
            <div class="container-fluid">
							@if(session('success'))
                            <div class="alert alert-succes" role="alert">
                             {{session('success')}}
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
									<h3 class="panel-title">Panel</h3>
									<div class="right">
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
									<h3 class="panel-title">Tabel Skripsi</h3>
									<div class="right">
                  @if(Auth::check() && Auth::user()->role =='admin')
  									<button type="button" data-toggle="modal" data-target="#exampleModalLong">
                    <a class="btn btn-info" href="#">
                    <i class="glyphicon glyphicon-ok-circle"></i>
                      Validasikan
                    </a>
                    </button>
                  @endif
									</div>
								</div>
								<div class="panel-body">
									<table class="table">
                                    <!--<thead>
							<tr>
                            <th>No</th>
                            <th>Judul</th>
                            <th>Tahun</th>
                            <th>File</th>
                            <th>Mahasiswa</th>
                            <th>Pembimbing Satu</th>
                            <th>Pembimbing Dua</th>
                            <th>Bidang</th>
                            <th>Verifikasi</th>
                            <th>Upload</th>
                            <th>Prosesing</th>
                            </tr>
						</thead>-->
						<tbody>
                        <tr>
                            <td width="20%">No</td><td>: {{$skripsi->id}}</td>
                        </tr><tr>
                            <td>Tahun</td><td>: <b>{{$skripsi->Tahun}}</b></td>
                        </tr><tr>
                            <td>Bidang</td><td>: <b>{{$skripsi->bidang['Nama']}}</b></td>
                        </tr><tr>
                            <td>Judul</td><td>: <b>{{$skripsi->Judul}}</b></td>
                        </tr><tr>
                            <td>NIM</td><td>: <b>{{$skripsi->mahasiswa['id']}}</b></td>
                        </tr><tr>
                            <td>Nama</td><td>: <b>{{$skripsi->mahasiswa['Nama']}}</b></td>
                        </tr><tr>
                            <td>Pembimbing I</td><td>: <b>{{$skripsi->pembimbing1['Nama']}}</b></td>
                        </tr><tr>
                            <td>Pembimbing II</td><td>: <b>{{$skripsi->pembimbing2['Nama']}}</b></td>
                        </tr><tr>
                            <td>Status</td><td>: <b>{{$skripsi->verifikasi['Nama']}}</b></td>
                        </tr><tr>
                            <td>input</td><td>: {{$skripsi->created_at}}</td>
                        </tr><tr>
                            <td>update</td><td>: {{$skripsi->updated_at}}</td>
                        </tr>
                        @if(Auth::check() && Auth::user())
                            <tr>
                              <td colspan="2">{{$skripsi->File}}&nbsp;&nbsp;&nbsp;
                                @if(!empty($skripsi->File))<a href="{{ url('public/files/skripsi/'.$skripsi->File) }}" class="btn btn-info btn-sm" download="{{$skripsi->File}}" ><i class="glyphicon glyphicon-download"></i>Unduh</a>@endif</td></tr>
                        @endif
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


    <!-- Modal -->
    <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Verifikasi Skripsi</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
    <form action="{{ url('skripsi/'.$skripsi->id.'/goverifikasi') }}" method="post">
      <div class="modal-body">
              <div class="form-group">
              {{ csrf_field() }}
                                <label for="skripsi">Verifikasi</label>
                                    <select class="form-control" id="skripsi" name="verifikasi_id">
                                    @foreach($verifikasi as $we)
                                    <option value="{{$we->id}}">{{$we->Nama}}</option>
                                    @endforeach
                                    </select>
              </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Keluar</button>
        <button type="submit" class="btn btn-primary">Simpan</button>
      </div>
    </form>
    </div>
  </div>
</div>

@endsection