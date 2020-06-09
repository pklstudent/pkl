@extends('tampilan.master')
@section('content')
    <div class="main-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <!--tabel input-->
                        <div class="panel">
                        <div class="panel-heading">
                            <h3 class="panel-title">Ubah</h3>
                        </div>
                        <div class="panel-body">
                            <!--ubah nya gan-->
                            <form action="{{ url('publikasi/'.$publikasi->id.'/goeditpublikasi') }}" method="post">
                            {{csrf_field()}}
                            <div class="form-group">
                                <label for="exampleInputEmail1">Judul</label>
                                <input name="Judul" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$publikasi->Judul}}">
                                <small id="emailHelp" class="form-text text-muted">Masukan Judulnya</small>
                            </div>

                            <div class="form-group">
                                        <label for="exampleInputEmail1">Penulis</label>
                                        <div class="dropdown">
                                            <a href="#" data-toggle="dropdown" class="dropdown-toggle"><button>Daftar Penulis<b class="caret"></b></button></a>
                                            <ul class="dropdown-menu">
                                            @foreach ($penulis as $p)
                                                <li><?php $checked = in_array($p->id, $checkeds) ? true : false; ?>
                                                    <div class="checkbox">
                                                    {{ Form::checkbox('penulis[]', $p->id, $checked) }}
                                                        <span>{{ $p->NamaDepan }}</span>
                                                        </label>
                                                    </div>
                                                </li>
                                            @endforeach
                                            </ul>
                                        </div>
                                        <small id="emailHelp" class="form-text text-muted">Pilih Penulis</small>
                                        <a class="btn btn-sm" href="/penulis">Tambahkan Penulis</a>
                            </div>
       
                            <div class="form-group">
                                <label for="exampleInputEmail1">Tahun</label>
                                <input name="Tahun_Terbit" type="int" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$publikasi->Tahun_Terbit}}">
                                <small id="emailHelp" class="form-text text-muted">Masukan Tahun</small>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Deskripsi</label>
                                <input name="Deskripsi" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$publikasi->Deskripsi}}">
                                <small id="emailHelp" class="form-text text-muted">Masukan Deskripsi</small>
                            </div>

                            <div class="form-group">
							<label for="pengabdian">Pengabdian</label>
								<select class="form-control" id="publikasi" name="IDPengabdian">
								@foreach($pengabdian as $be)
                                            @if (old('IDPengabdian') == $be->id)
                                                <option value="{{ $be->id }}" selected="selected">{{ $be->Judul }}</option>
                                            @elseif ( old('IDPengabdian') == null && isset($publikasi->pengabdian->id) && ($publikasi->pengabdian->id == $be->id))
                                                <option value="{{ $be->id }}" selected="selected">{{ $be->Judul }}</option>
                                            @else
                                                <option value="{{ $be->id }}">{{ $be->Judul }}</option>
                                            @endif
                                @endforeach
								</select>
                                <a class="btn btn-sm" href="/pengabdian">Tambahkan Pengabdian</a> 
                            </div>
                            
                            <div class="form-group">
							<label for="penelitian">Penelitian</label>
								<select class="form-control" id="penelitian" name="IDPenelitian">
								@foreach($penelitian as $be)
								            @if (old('IDPenelitian') == $be->id)
                                                <option value="{{ $be->id }}" selected="selected">{{ $be->Judul }}</option>
                                            @elseif ( old('IDPenelitian') == null && isset($publikasi->penelitian->id) && ($publikasi->penelitian->id == $be->id))
                                                <option value="{{ $be->id }}" selected="selected">{{ $be->Judul }}</option>
                                            @else
                                                <option value="{{ $be->id }}">{{ $be->Judul }}</option>
                                            @endif
                                @endforeach
								</select>
                                <a class="btn btn-sm" href="/penelitian">Tambahkan Penelitian</a>
                            </div>

                            <div class="form-group">
							<label for="kategori">Jenis Publikasi</label>
								<select class="form-control" id="jenispublikasi" name="IDJenisPublikasi">
								@foreach($jenispublikasi as $be)
								            @if (old('IDJenisPublikasi') == $be->id)
                                                <option value="{{ $be->id }}" selected="selected">{{ $be->Nama_Jenis }}</option>
                                            @elseif ( old('IDJenisPublikasi') == null && isset($publikasi->jenispublikasi->id) && ($publikasi->jenispublikasi->id == $be->id))
                                                <option value="{{ $be->id }}" selected="selected">{{ $be->Nama_Jenis }}</option>
                                            @else
                                                <option value="{{ $be->id }}">{{ $be->Judul }}</option>
                                            @endif
                                @endforeach
								</select>
                            </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                        <button type="submit" class="btn btn-primary">Simpan</button>
                            </form>
                            <!--ubah nya gan-->
                         </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection