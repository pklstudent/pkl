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
									<img src="{{$mahasiswa->getFotomhs()}}" class="img-circle" alt="Avatar" witdh="200px" height="200px">
										<h3 class="name">{{$mahasiswa->Nama}}</h3>
									</div>
									<div class="profile-stat">
										<div class="row">
											<div class="col-md-12 stat-item">
												<b></b> <span></span>
											</div>
										</div>
									</div>
								</div>
								<!-- END PROFILE HEADER -->
								<!-- PROFILE DETAIL -->
								<div class="profile-detail">
									<div class="profile-info">
										<h4 class="heading">Info Mahasiswa</h4>
										<ul class="list-unstyled list-justify">
											<li>Tanggal Lahir<span>{{$mahasiswa->Tgl_Lahir}}</span></li>
											<li>Gender<span>{{$mahasiswa->Gender}}</span></li>
											<li>Alamat <span>{{$mahasiswa->Alamat}}</span></li>
                                            @foreach($mahasiswa->pklkkm as $a)
											<li>PKL dan KKM<span>{{$a->Judul}}</span></li>
                                            @endforeach
										</ul>
										@if(Auth::check() && Auth::user()->role =='admin')
									</div>
									<div class="text-center"><a href="{{ url('mahasiswa/'.$mahasiswa->id.'/editmahasiswa') }}" class="btn btn-primary">Ubah Profilnya</a></div>
								</div>
								@endif
								<!-- END PROFILE DETAIL -->
							</div>
							<!-- END LEFT COLUMN -->
					
						</div>
					</div>
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>

@endsection