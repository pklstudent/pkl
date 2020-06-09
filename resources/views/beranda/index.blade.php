@extends('tampilan.master')
@section('content')
    <div class="main-content" >
      <div class="container-fluid">
        <div class="panel">       
              <div class="row">
              <div class="panel-heading">
                <h3 class="panel-title"><b>Beranda</b></h2>
                  <div class="right">
                    @if(Auth::check() && Auth::user()->role =='admin')
                    <button type="button" data-toggle="modal" data-target="#rolemahasiswaModal"><a  class="btn btn-default btn-sm" ><i class="fa fa-plus-square"></i>Registrasi Mahasiswa</a></button>
                    <button type="button" data-toggle="modal" data-target="#exampleModal"><a  class="btn btn-default btn-sm" ><i class="fa fa-plus-square"></i>Registrasi Admin</a></button>
                    @endif
                  </div>
              </div>
 
             <!--*****(thumbnail dashboard)*****-->
                    <div class="container-fluid p-0">
                      <!-- Adding Custom Content-->
                      <div class="col-lg-4 col-sm-6">
                        <div class="thumbnail">
                          <img src="{{asset('public/admin/assets/img/1.jpg')}}" alt="buku">
                        </div>
                        <div class="caption">
                          <a href="{{ url('buku') }}" class="btn btn-primary btn-lg btn-block" role="button">BUKU</a>
                        </div>
                      </div>

                      <div class="col-lg-4 col-sm-6">
                        <div class="thumbnail">
                          <img src="{{asset('public/admin/assets/img/2.jpg')}}" alt="skripsi">
                        </div>
                        <div class="caption">
                          <a href="{{ url('skripsi') }}" class="btn btn-primary btn-lg btn-block" role="button">SKRIPSI</a>
                        </div>
                      </div>

                      <div class="col-lg-4 col-sm-6">
                        <div class="thumbnail">
                          <img src="{{asset('public/admin/assets/img/3.jpg')}}" alt="penelitian">
                        </div>
                        <div class="caption">
                          <a href="{{ url('penelitian') }}" class="btn btn-primary btn-lg btn-block" role="button">PENELITIAN</a>
                        </div>
                      </div>
                      <br/>

                      <div class="col-lg-4 col-sm-6">
                        <div class="thumbnail">
                          <img src="{{asset('public/admin/assets/img/4.jpg')}}" alt="pengabdian">
                        </div>
                        <div class="caption">
                          <a href="{{ url('pengabdian') }}" class="btn btn-primary btn-lg btn-block" role="button">PENGABDIAN</a>
                        </div>
                      </div>

                      <div class="col-lg-4 col-sm-6">
                        <div class="thumbnail">
                          <img src="{{asset('public/admin/assets/img/5.jpg')}}" alt="pkl/kkm">
                        </div>
                        <div class="caption">
                          <a href="{{ url('pklkkm') }}" class="btn btn-primary btn-lg btn-block" role="button">PKL/KKM</a>
                        </div>
                      </div>

                      <div class="col-lg-4 col-sm-6">
                        <div class="thumbnail">
                          <img src="{{asset('public/admin/assets/img/6.jpg')}}" alt="publikasi">
                        </div>
                        <div class="caption">
                          <a href="{{ url('publikasi') }}" class="btn btn-primary btn-lg btn-block" role="button">PUBLIKASI</a>
                        </div>
                      </div>
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
                      <form action="{{ url('register') }}" method="POST">
                                  {{csrf_field()}}
                              <div class="form-group row">
                                  <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Nama') }}</label>

                                  <div class="col-md-8">
                                      <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                      @error('name')
                                          <span class="invalid-feedback" role="alert">
                                              <strong>{{ $message }}</strong>
                                          </span>
                                      @enderror
                                  </div>
                              </div>

                              <div class="form-group row">
                                  <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                                  <div class="col-md-8">
                                      <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

                                      @error('email')
                                          <span class="invalid-feedback" role="alert">
                                              <strong>{{ $message }}</strong>
                                          </span>
                                      @enderror
                                  </div>
                              </div>

                              <div class="form-group row">
                                  <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

                                  <div class="col-md-8">
                                      <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                      @error('password')
                                          <span class="invalid-feedback" role="alert">
                                              <strong>{{ $message }}</strong>
                                          </span>
                                      @enderror
                                  </div>
                              </div>

                              <div class="form-group row">
                                  <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Ulangi Password') }}</label>

                                  <div class="col-md-8">
                                      <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                                  </div>
                              </div>

                          </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-primary">
                                  {{ __('Register') }}
                                </button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                            </div>
                      </form>
                    </div>
                </div>
              </div>
    </div>


    <div class="modal fade" id="rolemahasiswaModal" tabindex="-1" role="dialog" aria-labelledby="rolemahasiswaModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Inputkan Datanya</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                      <form action="{{ url('registermahasiswa') }}" method="POST">
                                  {{csrf_field()}}
                              <div class="form-group row">
                                  <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Nama') }}</label>

                                  <div class="col-md-8">
                                      <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                      @error('name')
                                          <span class="invalid-feedback" role="alert">
                                              <strong>{{ $message }}</strong>
                                          </span>
                                      @enderror
                                  </div>
                              </div>

                              <div class="form-group row">
                                  <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('NIM') }}</label>

                                  <div class="col-md-8">
                                      <select id="mahasiswa_id" type="text" class="form-control @error('name') is-invalid @enderror" name="mahasiswa_id" value="{{ old('mahasiswa_id') }}" required autocomplete="mahasiswa_id" autofocus>
                                      @foreach($mahasiswa as $yu)
                                      <option value="{{$yu->id}}">{{$yu->id}}</option>
                                      @endforeach
                                      </select>
                                      @error('mahasiswa_id')
                                          <span class="invalid-feedback" role="alert">
                                              <strong>{{ $message }}</strong>
                                          </span>
                                      @enderror
                                  </div>
                              </div>

                              <div class="form-group row">
                                  <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail') }}</label>

                                  <div class="col-md-8">
                                      <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

                                      @error('email')
                                          <span class="invalid-feedback" role="alert">
                                              <strong>{{ $message }}</strong>
                                          </span>
                                      @enderror
                                  </div>
                              </div>

                              <div class="form-group row">
                                  <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

                                  <div class="col-md-8">
                                      <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                      @error('password')
                                          <span class="invalid-feedback" role="alert">
                                              <strong>{{ $message }}</strong>
                                          </span>
                                      @enderror
                                  </div>
                              </div>

                              <div class="form-group row">
                                  <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Ulangi Password') }}</label>

                                  <div class="col-md-8">
                                      <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                                  </div>
                              </div>

                          </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-primary">
                                  {{ __('Register') }}
                                </button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                            </div>
                      </form>
                    </div>
                </div>
              </div>
    </div>
@endsection
