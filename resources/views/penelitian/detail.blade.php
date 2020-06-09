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
									<h3 class="panel-title">Info Penelitian</h3>
								</div>
							</div>
							<!-- END PANEL NO PADDING -->


							<div class="col-md-12">

							<!-- CONDENSED TABLE -->
							<div class="panel">
								<div>
									<table class="table">
										<thead>
											<tr><th>No</th><th>Judul</th><th>Tahun</th><th>Ketua</th><th>Anggota Penelitian</th>
											<th>Bidang</th>
											<th>Kategori</th><th>Laporan</th><th>Proposal</th></tr>
										</thead>
										<tbody>
											<tr>
											<td>
											{{$penelitian->id}}
											</td>
											<td>
											{{$penelitian->Judul}}
											</td>
											<td>{{$penelitian->Tahun}}</td>
											<td>
											{{$penelitian->dosene['Nama']}}
											</td>
                                            <td>
                                            <ul>@foreach($penelitian->dosen as $p)<li>{{$p->Nama}}</li>@endforeach
                                            @foreach($penelitian->mahasiswa as $o)<li>{{$o->Nama}}</li>@endforeach</ul>
                                            </td>
											<td>
											{{$penelitian->kategori['Nama']}}
											</td>
											<td>
											{{$penelitian->bidang['Nama']}}
											</td>
											<td>
											@if(!empty($penelitian->getLaporan()))
												<a href="{{$penelitian->getLaporan()}}" class="btn btn-warning">Laporan</a>
											@else
												---
											@endif
											</td>
                            				<td>{{$penelitian->Proposal}}</td></tr>
										</tbody>
									</table>
								</div>
								<div class="panel-heading">
									<h3 class="panel-title">Publikasi</h3>
									<div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
									</div>
								</div>
								<div class="panel-body">
									<ol>
									@foreach($penelitian->publikasi as $pub)
										<li>@foreach($pub->penulis as $ce)
										{{$ce->NamaBelakang}}, {{$ce->NamaDepan}};
										@endforeach<br>({{$pub->Tahun_Terbit}}). <a href="{{ url('publikasi/'.$pub->id.'/detail') }}">{{$pub->Judul}}</a>. {{$pub->Deskripsi}}</li>
									@endforeach
									</ol>
								</div>
							</div>
							<!-- END CONDENSED TABLE -->

		</div>
					

			</div>
        </div>
    </div>
</div>

@endsection