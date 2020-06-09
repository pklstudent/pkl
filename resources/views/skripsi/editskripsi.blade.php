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
                            <form action="{{ url('skripsi/'.$skripsi->id.'/goeditskripsi') }}" method="post" enctype="multipart/form-data">
                            {{csrf_field()}}
                            <div class="form-group">
                                <label for="exampleInputEmail1">Judul</label>
                                <input name="Judul" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$skripsi->Judul}}">
                                <small id="emailHelp" class="form-text text-muted">Masukan Judul</small>
                            </div>

                            <div class="form-group">
							<label for="skripsi">Nama Mahasiswa</label>
								<select class="form-control" id="skripsi" name="mahasiswa_id">
								@foreach($mahasiswa as $ce)
								        @if (old('mahasiswa_id') == $ce->id)
                                            <option value="{{ $ce->id }}" selected="selected">{{ $ce->Nama }}</option>
                                        @elseif ( old('mahasiswa_id') == null && isset($skripsi->mahasiswa->id) && ($skripsi->mahasiswa->id == $ce->id))
                                            <option value="{{ $ce->id }}" selected="selected">{{ $ce->Nama }}</option>
                                        @else
                                            <option value="{{ $ce->id }}">{{ $ce->Nama }}</option>
                                        @endif
                                @endforeach
								</select>
                            </div>

                            <div class="form-group">
							<label for="skripsi">Nama Pembimbing Satu</label>
								<select class="form-control" id="skripsi1" name="pembimbing1_id">
								@foreach($pembimbing1 as $we)
                                        @if (old('pembimbing1_id') == $we->id)
                                            <option value="{{ $we->id }}" selected="selected">{{ $we->Nama }}</option>
                                        @elseif ( old('pembimbing1_id') == null && isset($skripsi->pembimbing1->id) && ($skripsi->pembimbing1->id == $we->id))
                                            <option value="{{ $we->id }}" selected="selected">{{ $we->Nama }}</option>
                                        @else
                                            <option value="{{ $we->id }}">{{ $we->Nama }}</option>
                                        @endif
                                @endforeach
								</select>
                            </div>

                            <div class="form-group">
							<label for="skripsi">Nama Pembimbing Dua</label>
								<select class="form-control" id="skripsi2" name="pembimbing2_id">
								@foreach($pembimbing2 as $be)
                                        @if (old('pembimbing2_id') == $be->id)
                                            <option value="{{ $be->id }}" selected="selected">{{ $be->Nama }}</option>
                                        @elseif ( old('pembimbing2_id') == null && isset($skripsi->pembimbing2->id) && ($skripsi->pembimbing2->id == $be->id))
                                            <option value="{{ $be->id }}" selected="selected">{{ $be->Nama }}</option>
                                        @else
                                            <option value="{{ $be->id }}">{{ $be->Nama }}</option>
                                        @endif
                                @endforeach
								</select>
                            </div>
       
                            <div class="form-group">
                                <label for="exampleInputEmail1">Tahun</label>
                                <input name="Tahun" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$skripsi->Tahun}}">
                                <small id="emailHelp" class="form-text text-muted">Masukan Tahun</small>
                            </div>

                            <div class="form-group">
                                <label for="skripsi">Bidang</label>
                                    <select class="form-control" id="skripsi" name="bidang_id">
                                    @foreach($bidang as $we)
                                        @if (old('bidang_id') == $we->id)
                                            <option value="{{ $we->id }}" selected="selected">{{ $we->Nama }}</option>
                                        @elseif ( old('bidang_id') == null && isset($skripsi->bidang->id) && ($skripsi->bidang->id == $we->id))
                                            <option value="{{ $we->id }}" selected="selected">{{ $we->Nama }}</option>
                                        @else
                                            <option value="{{ $we->id }}">{{ $we->Nama }}</option>
                                        @endif
                                    @endforeach
                                    </select>
                                </div>

                            <div class="form-group">
                                                        <label for="File">File</label>
                                                        <input name="File" type="file" class="form-control" accept="application/pdf" />
                                                        <small id="emailHelp" class="form-text text-muted">Masukan Filenya</small>
                            </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal"><a href="{{ url()->previous() }}"> Kembali</a></button>
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