
    <div id="mitraModal" class="modal fade">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="dosenModalLabel">Inputkan Datanya</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form id="addmitra" enctype="multipart/form-data">
                    <div class="modal-body">
                        {{csrf_field()}}
                            <div class="form-group">
                                <label for="exampleInputEmail1">Kode Mitra</label>
                                <input name="id" type="int" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="No Mitra">
                                <small id="emailHelp" class="form-text text-muted">Masukan Kode Mitra</small>
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleInputEmail1">Nama Mitranya</label>
                                <input name="Nama" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nama">
                                <small id="emailHelp" class="form-text text-muted">Masukan Namanya</small>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Alamat</label>
                                <input name="Alamat" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Alamat">
                                <small id="emailHelp" class="form-text text-muted">Masukan Alamat dari Mitra</small>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Kontak</label>
                                <input name="CP" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="kontak">
                                <small id="emailHelp" class="form-text text-muted">Masukan Kontak dari Mitra</small>
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