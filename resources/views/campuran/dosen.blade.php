
    <div id="dosenModal" class="modal fade">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="dosenModalLabel">Inputkan Datanya</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form id="adddosen" enctype="multipart/form-data">
                    <div class="modal-body">
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
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                        <button type="submit" class="btn btn-primary">Sikat</button>
                    </div>
                    </form>
                    </div>
                </div>
    </div> 