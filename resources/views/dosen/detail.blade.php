@extends('tampilan.master')
@section('content')
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<div class="panel panel-profile">
						<div class="clearfix">
							<!-- LEFT COLUMN -->
							<div class="profile-center">
								<!-- PROFILE HEADER -->
								<div class="profile-header">
									<div class="overlay"></div>
									<div class="profile-main">
										<img src="{{$dosen->getProfil()}}" class="img-circle" alt="Avatar"  width="200px" height="200px">
										<h3 class="name">{{$dosen->Nama}}</h3>
										<span class="online-status status-available">{{$dosen->Status}}</span>
									</div>
									<div class="profile-stat">
										<div class="row">
											<div class="col-md-12 stat-item">
												<b>Bidang</b> <span>{{$dosen->Bidang}}</span>
											</div>
										</div>
									</div>
								</div>
								<!-- END PROFILE HEADER -->
								<!-- PROFILE DETAIL -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Info Dosen</h3>
									</div>
									<div class="panel-body">
										<ul class="list-unstyled">
											<li><span class="col-md-2">Golongan </span><span class="col-md-10">: {{$dosen->Golongan}}</span></li>
											<li><span class="col-md-2">Tanggal Lahir</span><span class="col-md-10">: {{$dosen->TglLahir}}</span></li>
											<li><span class="col-md-2">Gender</span><span class="col-md-10">: {{$dosen->Gender}}</span></li>
                                            <li><span class="col-md-2">Alamat </span><span class="col-md-10">: {{$dosen->Alamat}}</span></li>
										</ul>
										
										@if(Auth::check() && Auth::user()->role =='admin')
										<div class="text-right"><a href="{{ url('dosen/'.$dosen->id.'/editdosen') }}" class="btn btn-primary">Ubah Profilnya</a></div>
										@endif
									</div>
								</div>
								<!-- END PROFILE DETAIL -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Track Record</h3>
										<div class="right">
											<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										</div>
									</div>
									<div class="panel-body">
										<table class="table table-bordered">
											<thead>
												<tr><th class="col-md-6">Penelitian</th><th class="col-md-6">Pengabdian</th>
											</thead>
											<tbody>
												<tr>
												<td>
												<ul class="list list-justify">
													@foreach($dosen->penelitian1 as $tr1)
													<li><b>({{$tr1->Tahun}}) <a href="{{ url('penelitian/'.$tr1->id.'/detail') }}">{{$tr1->Judul}}</a></b> (Ketua)</li>
													@endforeach
													@foreach($dosen->penelitian as $tr)
													<li><b>({{$tr1->Tahun}}) <a href="{{ url('penelitian/'.$tr->id.'/detail') }}">{{$tr->Judul}}</a></b> (Anggota)</li>
													@endforeach
												</ul>
												</td>
												<td>
												<ul class="list list-justify">
													@foreach($dosen->pengabdian1 as $tb1)
													<li><b>({{$tb1->Tahun}}) <a href="{{ url('pengabdian/'.$tb1->id.'/detail') }}">{{$tb1->Judul}}</a></b> (Ketua)</li>
													@endforeach
													@foreach($dosen->pengabdian as $tb)
													<li><b>({{$tb->Tahun}}) <a href="{{ url('pengabdian/'.$tb->id.'/detail') }}">{{$tb->Judul}}</a></b> (Anggota)
													@endforeach
												</ul>
												</td></tr>
											</tbody>
										</table>
									</div>
									</div>
								<!--Tabel-->
							</div>
							<!-- END LEFT COLUMN -->
					
						</div>
					</div>
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>

@endsection