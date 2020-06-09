
    <div id="mahasiswaModal" class="modal fade">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="mahasiswaModalLabel">Inputkan Datanya</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form id="addmahasiswa" action="{{ url('mahasiswa/create') }}" enctype="multipart/form-data">
                    <div class="modal-body">
                            {{csrf_field()}}
                            <div class="form-group">
                                <label for="exampleInputEmail1">NIM</label>
                                <input name="id" type="int" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="NIM">
                                <small id="emailHelp" class="form-text text-muted">Masukan NIM Mahasiswa</small>
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleInputEmail1">Nama</label>
                                <input name="Nama" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nama">
                                <small id="emailHelp" class="form-text text-muted">Masukan Namanya</small>
                            </div>
       
                            <div class="form-group">
                                <label for="exampleInputEmail1">Tanggal Lahir</label>
                                <input name="Tgl_Lahir" type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Tanggal Lahir">
                                <small id="emailHelp" class="form-text text-muted">Masukan Tanggal Lahir</small>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Angkatan</label>
                                <input name="Angkatan" type="int" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Angkatan">
                                <small id="emailHelp" class="form-text text-muted">Masukan Angkatannya</small>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Gender</label>
                                <input name="Gender" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Gender">
                                <small id="emailHelp" class="form-text text-muted">Masukan Gendernya</small>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Alamat</label>
                                <input name="Alamat" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Alamat">
                                <small id="emailHelp" class="form-text text-muted">Masukan Alamat</small>
                            </div>
                            
                            
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                    </form>
                    </div>
            </div>
    </div>
