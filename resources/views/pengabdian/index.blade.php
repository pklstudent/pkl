@extends('tampilan.master')
@section('content')
        <div class="main-content">
            <div class="container-fluid">
                <div class="row">

                <div class="col-md-12">

			<!-- TABLE HOVER -->
			<div class="panel">
				    <div class="panel-heading">
                        <h3 class="panel-title">Data Pengabdian</h3>
                        <div class="right">
                        @if(Auth::check() && Auth::user()->role =='admin')
                        <button type="button" class="btn" data-toggle="modal" data-target="#exampleModal"><b class="btn btn-success">Tambah Pengabdian</b></button>
                        @endif
                        <div class="btn-group">
											<button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><b class="btn btn-default">Bidang
												<span class="caret"></b></span>
											</button>
											<ul class="dropdown-menu" role="menu">
                                            @foreach($bidang as $bi)
												<li><a href="{{route('bidangpengabdian',$bi->id)}}">{{$bi->Nama}}<span class="badge">{{$bi->pengabdian->count()}}</span></a>
												</li>
                                            @endforeach
											</ul>
						</div>
                        </div>  
                    </div> 
				<div class="panel-body">
                <form action="{{ url('pengabdian') }}" method="get">
                    <div class="input-group">
						<input class="form-control" name="cari" type="text" placeholder="Tulis Judulnya">
						<span  class="input-group-btn"><button class="btn btn-primary">Cari</button></span> 
                    </div>
                </form>
                <br>
					<table class="table table-hover">
						<thead>
							<tr>
                            <th>No</th>
                            <th>Judul</th>
                            <th>Tahun</th>
                            <th>Ketua</th>
                            <th>Anggota</th>
                            <th>Bidang</th>
                            <th>Kategori</th>
                            </tr>
						</thead>
						<tbody>
                        @foreach($data_pengabdian as $pe)
                        <tr>
                            <td>{{$pe->id}}</td>
                            <td><a href="{{ url('pengabdian/'.$pe->id.'/detail') }}">{{$pe->Judul}}</a></td>
                            <td>{{$pe->Tahun}}</td>
                            <td><a href="{{ url('pengabdian/'.$pe->Ketua['id'].'/detail') }}">{{$pe->Ketua['Nama']}}</a></td>
                            <td>@foreach($pe->dosen as $ce)
                            <ul><li><a href="{{ url('dosen/'.$ce->id.'/detail') }}">{{$ce->Nama}}</a></li></ul>
                            @endforeach
                            @foreach($pe->mahasiswa as $be)
                            <ul><li><a href="{{ url('mahasiswa/'.$be->id.'/detail') }}">{{$be->Nama}}</a></li></ul>
                            @endforeach</td>
                            <td>{{$pe->bidang['Nama']}}</td>
                            <td>{{$pe->kategori['Nama']}}</td>
                            @if(Auth::check() && Auth::user()->role =='admin')
                            <td><a href="{{ url('pengabdian/'.$pe->id.'/editpengabdian') }}" class="btn btn-warning btn-sm" >Edit</a></td>
                            <td><a href="{{ url('pengabdian/hapus/'.$pe->id) }}" class="btn btn-danger btn-sm" onclick="return confirm('Hapus nih ?')">Hapus</a></td>
                            @endif
                        </tr>
                        @endforeach
                        </tbody>
					</table>
                    <b>Halaman :</b>                   <span class="badge">{{ $data_pengabdian->currentPage() }}</span><br/>
                    <b> Jumlah Data :</b>              <span class="badge"> {{ $data_pengabdian->total() }} </span><br/>
                    <b> Data Per Halaman : </b>         <span class="badge">  {{ $data_pengabdian->perPage() }}</span> <br/>
                
                
                    {{ $data_pengabdian->links() }}
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
                            <form action="{{ url('pengabdian/create') }}" method="POST">
                            {{csrf_field()}}
                            <div class="form-group">
                                <label for="exampleInputEmail1">No</label>
                                <input name="id" type="int" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Kode Penelitian">
                                <small id="emailHelp" class="form-text text-muted">Masukan No Terakhir</small>
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleInputEmail1">Judul</label>
                                <input name="Judul" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Judul">
                                <small id="emailHelp" class="form-text text-muted">Masukan Judul</small>
                            </div>
       
                            <div class="form-group">
                                <label for="exampleInputEmail1">Tahun</label>
                                <input name="Tahun" type="int" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Tahun">
                                <small id="emailHelp" class="form-text text-muted">Masukan Tahunnya</small>
                            </div>

                            <div class="form-group">
							<label for="pengabdian">Ketua</label>
								<select class="form-control" id="pengabdian" name="ketua_id">
								@foreach($ketua as $ce)
								<option value="{{$ce->id}}">{{$ce->Nama}}</option>
                                @endforeach
								</select>
                            </div>

                            <div class="form-group">
                                        <label for="exampleInputEmail1">Anggota</label>
                                        <div class="dropdown">
                                            <a href="#" data-toggle="dropdown" class="dropdown-toggle"><button>Pilih Yang Menjadi Anggota<b class="caret"></b></button></a>
                                            <ul class="dropdown-menu">
                                            @foreach ($dosen as $p)
                                                <li>
                                                    <div class="checkbox">
                                                    {{ Form::checkbox('dosen[]', $p->id) }}
                                                        <label value="{{$p->id}}">
                                                        <span>{{ $p->Nama }}</span>
                                                        </label>
                                                    </div>
                                                </li>
                                            @endforeach
                                            @foreach ($mahasiswa as $yu)
                                                <li>
                                                    <div class="checkbox">
                                                    {{ Form::checkbox('mahasiswa[]', $yu->id) }}
                                                        <label value="{{$yu->id}}">
                                                        <span>{{ $yu->Nama }}</span>
                                                        </label>
                                                    </div>
                                                </li>
                                            @endforeach
                                            </ul>
                                        </div>
                                        <small id="emailHelp" class="form-text text-muted">Pilih Penulis</small>
                            </div>

                            <div class="form-group">
							<label for="penulis">Kategori</label>
								<select class="form-control" id="kategori" name="kategori_id">
								@foreach($kategori as $be)
								<option value="{{$be->id}}"> {{$be->Nama}}</option>
                                @endforeach
								</select>
                            </div>

                            <div class="form-group">
							<label for="penulis">Bidang</label>
								<select class="form-control" id="bidang" name="bidang_id">
								@foreach($bidang as $ce)
								<option value="{{$ce->id}}">{{$ce->Nama}}</option>
                                @endforeach
								</select>
                            </div>

                            
                            
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                        <button type="submit" class="btn btn-primary">Simpan</button>
                        </form>
                    </div>
                    </div>
                </div>


@endsection

