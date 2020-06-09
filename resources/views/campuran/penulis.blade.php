<div class="modal fade" id="penulisModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="penulisModal">Tambah Penulis</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
                <form id="addpenulis">
                    <div class="modal-body">
                            {{csrf_field()}}
                            <div class="form-group">
                                <label for="exampleInputEmail1">Kode Penulis</label>
                                <input name="id" type="int" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="No Penulis">
                                <small id="emailHelp" class="form-text text-muted">Masukan Kode Penulis</small>
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleInputEmail1">Nama Depan</label>
                                <input name="NamaDepan" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nama Depan">
                                <small id="emailHelp" class="form-text text-muted">Masukan Namanya</small>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Nama Belakang</label>
                                <input name="NamaBelakang" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nama Belakang">
                                <small id="emailHelp" class="form-text text-muted">Masukan Nama Belakangnya</small>
                            </div>
                                                        
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
