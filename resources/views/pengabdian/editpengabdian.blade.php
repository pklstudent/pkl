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
                            
                            @if(session('sukses'))
                            <div class="alert alert-succes" role="alert">
                             {{session('sukses')}}
                            </div>
                            @endif
                            
                        </div>
                        <div class="panel-body">
                            <!--ubah nya gan-->
                            
                <form action="{{ url('pengabdian/'.$pengabdian->id.'/goeditpengabdian') }}" method="post">
                        {{ csrf_field() }}
                            <div class="form-group">
                                <label for="exampleInputEmail1">Judul</label>
                                <input required="required" name="Judul" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{ $pengabdian->Judul }}">
                                <small id="emailHelp" class="form-text text-muted">Masukan Judul</small>
                            </div>
       
                            <div class="form-group">
                                <label for="exampleInputEmail1">Tahun</label>
                                <input name="Tahun" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{ $pengabdian->Tahun }}">
                                <small id="emailHelp" class="form-text text-muted">Masukan Penerbit Buku</small>
                            </div>

                            <div class="form-group">
							<label for="penulis">Ketua</label>
								<select class="form-control" id="pengabdian" name="ketua_id">
								@foreach($ketua as $be)
								        @if (old('ketua_id') == $be->id)
                                            <option value="{{ $be->id }}" selected="selected">{{ $be->Nama }}</option>
                                        @elseif ( old('ketua_id') == null && isset($pengabdian->ketua->id) && ($pengabdian->ketua->id == $be->id))
                                            <option value="{{ $be->id }}" selected="selected">{{ $be->Nama }}</option>
                                        @else
                                            <option value="{{ $be->id }}">{{ $be->Nama }}</option>
                                        @endif
                                @endforeach
								</select>
                            </div>

                            <div class="form-group">
                                        <label for="exampleInputEmail1">Anggota</label>
                                        <div class="dropdown">
                                            <a href="#" data-toggle="dropdown" class="dropdown-toggle"><button>Ubah Anggota<b class="caret"></b></button></a>
                                            <ul class="dropdown-menu">
                                            @foreach ($dosen as $p)
                                                <li>
                                                <?php $checked = in_array($p->id, $checkeds) ? true : false; ?>
                                                    <div class="checkbox">
                                                    {{ Form::checkbox('dosen[]', $p->id, $checked) }}
                                                        <span>{{ $p->Nama }}</span>
                                                        </label>
                                                    </div>
                                                </li>
                                            @endforeach
                                            @foreach ($mahasiswa as $yu)
                                                <li>
                                                <?php $checkeda = in_array($yu->id, $checkedsa) ? true : false; ?>
                                                    <div class="checkbox">
                                                    {{ Form::checkbox('mahasiswa[]', $yu->id, $checkeda) }}
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
                                        @if (old('kategori_id') == $be->id)
                                            <option value="{{ $be->id }}" selected="selected">{{ $be->Nama }}</option>
                                        @elseif ( old('kategori_id') == null && isset($pengabdian->kategori->id) && ($pengabdian->kategori->id == $be->id))
                                            <option value="{{ $be->id }}" selected="selected">{{ $be->Nama }}</option>
                                        @else
                                            <option value="{{ $be->id }}">{{ $be->Nama }}</option>
                                        @endif
                                @endforeach
								</select>
                            </div>

                            <div class="form-group">
							<label for="penulis">Bidang</label>
								<select class="form-control" id="bidang" name="bidang_id">
								@foreach($bidang as $be)
                                        @if (old('bidang_id') == $be->id)
                                            <option value="{{ $be->id }}" selected="selected">{{ $be->Nama }}</option>
                                        @elseif ( old('bidang_id') == null && isset($pengabdian->bidang->id) && ($pengabdian->bidang->id == $be->id))
                                            <option value="{{ $be->id }}" selected="selected">{{ $be->Nama }}</option>
                                        @else
                                            <option value="{{ $be->id }}">{{ $be->Nama }}</option>
                                        @endif
                                @endforeach
								</select>
                            </div>
                    <div class="modal-footer">
                    <input type="submit" value="Simpan" class="btn btn-dark">   
                
                </form>
            
                        </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
</div>




@endsection
   
