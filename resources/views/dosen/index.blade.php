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
                        <h3 class="panel-title">Data Dosen</h3>
                        <div class="right">
                        @if(Auth::check() && Auth::user()->role =='admin')
                        <button type="button" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#exampleModal"><a class="btn btn-success">Tambah Dosen</a></button>
                        <button type="button"><a href="dosen?Jurusan=Matematika"  class="btn btn-info btn-sm">Dosen Matematika</a></button>
                        @endif
                        </div>  
                    </div> 
				<div class="panel-body">
                <form action="{{ url('dosen') }}" method="get">
                    <div class="input-group">
                                                <input class="form-control" name="cari" type="text" placeholder="Tulis Nama Dosen">
                                                <span  class="input-group-btn"><button class="btn btn-primary">Cari</button></span> 
                    </div>
                </form>
                <br>
					<table class="table table-hover">
						<thead>
							<tr>
                            <th>No</th>
                            <th>NIP/NIDT</th>
                            <th>NIDN/NIDK</th>
                            <th>Nama</th>
                            <th>Gelar</th>
							<th>Bidang</th>
                            <th>Jabatan Akademik</th>
                            <th>Jurusan</th>
                            <th>Fakultas</th>
                            </tr>
						</thead>
						<tbody>
                        
                        @foreach($data_dosen as $dosen)
                        <tr>
                        <td>{{$dosen->id}}</td>
                        <td>{{$dosen->NIP}}</td>
                        <td>{{$dosen->NIDN}}</td>
                            <td><a href="{{ url('dosen/'.$dosen->id.'/detail') }}">{{$dosen->Nama}}</a></td>
                            <td> 
                            {{$dosen->Gelar}}
                            </td>
							<td> 
                            {{$dosen->Bidang}}
                            </td>
                            <td>{{$dosen->Jabatan}}</td>
                            <td>
                            {{$dosen->Jurusan}}
                            </td>
                            <td>{{$dosen->Fakultas}}</td>
                            @if(Auth::check() && Auth::user()->role =='admin')
                            <td><a href="{{ url('dosen/'.$dosen->id.'/editdosen') }}" class="btn btn-warning btn-sm">Ubah</a></td>
                            <td><a href="{{ url('dosen/'.$dosen->id.'/hapus') }}" class="btn btn-danger btn-sm" onclick="return confirm('Hapus nih ?')">Hapus</a></td>
                            @endif
                        </tr>
                        @endforeach
                        </tbody>
					</table>
                    <b>Halaman :</b>                   <span class="badge">{{ $data_dosen->currentPage() }}</span><br/>
                    <b> Jumlah Data :</b>              <span class="badge"> {{ $data_dosen->total() }} </span><br/>
                    <b> Data Per Halaman : </b>         <span class="badge">  {{ $data_dosen->perPage() }}</span> <br/>
                
                
                    {{ $data_dosen->links() }}
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
                            <form action="{{ url('dosen/create') }}" method="POST" enctype="multipart/form-data">
                            {{csrf_field()}}
                            <div class="form-group">
                                <label for="exampleInputEmail1">Kode Dosen</label>
                                <input name="id" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Kode Dosen">
                                <small id="emailHelp" class="form-text text-muted">Masukan Kode Dosen</small>
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleInputEmail1">NIP</label>
                                <input name="NIP" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="NIP">
                                <small id="emailHelp" class="form-text text-muted">Masukan NIP</small>
                            </div>
       
                            <div class="form-group">
                                <label for="exampleInputEmail1">NIDN</label>
                                <input name="NIDN" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="NIDN">
                                <small id="emailHelp" class="form-text text-muted">Masukan NIDN</small>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Nama</label>
                                <input name="Nama" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nama">
                                <small id="emailHelp" class="form-text text-muted">Masukan Nama</small>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Golongan</label>
                                <input name="Golongan" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Golongan">
                                <small id="emailHelp" class="form-text text-muted">Masukan Golongan</small>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Jabatan</label>
                                <input name="Jabatan" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Jabatan">
                                <small id="emailHelp" class="form-text text-muted">Masukan Jabatan</small>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Jurusan</label>
                                <input name="Jurusan" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Jurusan">
                                <small id="emailHelp" class="form-text text-muted">Masukan Jurusan</small>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Fakultas</label>
                                <input name="Fakultas" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Fakultas">
                                <small id="emailHelp" class="form-text text-muted">Masukan Fakultas</small>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Tanggal Lahir</label>
                                <input name="TglLahir" type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Tanggal Lahir">
                                <small id="emailHelp" class="form-text text-muted">Masukan Tanggal Lahir</small>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Status</label>
                                <input name="Status" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Status">
                                <small id="emailHelp" class="form-text text-muted">Masukan Status</small>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Gender</label>
                                <input name="Gender" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Gender">
                                <small id="emailHelp" class="form-text text-muted">Masukan Gender</small>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Alamat</label>
                                <input name="Alamat" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Alamat">
                                <small id="emailHelp" class="form-text text-muted">Masukan Alamat</small>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Bidang</label>
                                <input name="Bidang" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Bidang">
                                <small id="emailHelp" class="form-text text-muted">Masukan Bidang</small>
                            </div>

                            <div class="form-group">
                                                        <label for="exampleInputEmail1">Profilnya</label>
                                                        <input name="profil" type="file" class="form-control">
                                                        <small id="emailHelp" class="form-text text-muted">Masukan Profil</small>
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

