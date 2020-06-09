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

                            <div class="panel">
                                <div class="panel-heading">
                                        <h3 class="panel-title">Ubah Data PKL dan KKM</h3>
                                </div>
                                <div class="panel-body">
                                <!--ini-->

                                <form action="{{ url('pklkkm/'.$pklkkm->id.'/goeditpklkkm') }}" method="POST">
                            {{csrf_field()}}
                            <div class="form-group">
                                <label for="exampleInputEmail1">Kode PKL dan KKM</label>
                                <input name="id" type="int" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$pklkkm->id}}">
                                <small id="emailHelp" class="form-text text-muted">Masukan Kode Pkl dan KKM</small>
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleInputEmail1">Judul</label>
                                <input name="Judul" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$pklkkm->Judul}}">
                                <small id="emailHelp" class="form-text text-muted">Masukan Namanya</small>
                            </div>

                            <div class="form-group">
							<label for="pklkkm">Pembimbing</label>
								<select class="form-control" id="pklkkm" name="KodeDosen">
								@foreach($dosen as $be)
								            @if (old('KodeDosen') == $be->id)
                                                <option value="{{ $be->id }}" selected="selected">{{ $be->Nama }}</option>
                                            @elseif ( old('KodeDosen') == null && isset($pklkkm->dosen->id) && ($pklkkm->dosen->id == $be->id))
                                                <option value="{{ $be->id }}" selected="selected">{{ $be->Nama }}</option>
                                            @else
                                                <option value="{{ $be->id }}">{{ $be->Nama }}</option>
                                            @endif
                                @endforeach
								</select>
                            </div>

                            <div class="form-group">
                                        <label for="exampleInputEmail1">Anggota Mahasiswa</label>
                                        <div class="dropdown">
                                            <a href="#" data-toggle="dropdown" class="dropdown-toggle"><button>Pilih Anggotanya<b class="caret"></b></button></a>
                                            <ul class="dropdown-menu">
                                            @foreach ($mahasiswa as $j)
                                                <li><?php $checked = in_array($j->id, $checkeds) ? true : false; ?>
                                                    <div class="checkbox">
                                                    {{ Form::checkbox('mahasiswa[]', $j->id, $checked) }}
                                                        <label value="{{$j->id}}">
                                                        <span>{{ $j->Nama }}</span>
                                                        </label>
                                                    </div>
                                                </li>
                                            @endforeach
                                            </ul>
                                        </div>
                                        <small id="emailHelp" class="form-text text-muted">Pilih Yang Sesuai</small><br>
                            </div>
       
                            <div class="form-group">
                                <label for="exampleInputEmail1">Tahun</label>
                                <input name="Tahun" type="int" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$pklkkm->Tahun}}">
                                <small id="emailHelp" class="form-text text-muted">Masukan Tanggal Lahir</small>
                            </div>
                            
                            <div class="form-group">
							<label for="pklkkm">Mitra</label>
								<select class="form-control" id="pklkkm" name="IDMitra">
								@foreach($mitra as $be)
								            @if (old('IDMitra') == $be->id)
                                                <option value="{{ $be->id }}" selected="selected">{{ $be->Nama }}</option>
                                            @elseif ( old('IDMitra') == null && isset($pklkkm->mitra->id) && ($pklkkm->mitra->id == $be->id))
                                                <option value="{{ $be->id }}" selected="selected">{{ $be->Nama }}</option>
                                            @else
                                                <option value="{{ $be->id }}">{{ $be->Nama }}</option>
                                            @endif
                                @endforeach
								</select>
                            </div>
                            
                            
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Simpan</button>
                        </form>
                                <!--GGlah-->
                                </div>
                            </div>        

                        </div>
                
                </div>
            </div>
        </div>
</div>
@endsection