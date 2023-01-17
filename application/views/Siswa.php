<?php echo $this->session->flashdata('pesan'); ?>
<div class="card">
  <!-- <div class="card-header">
    <a href="<?= base_url('Siswa/Tambah'); ?>" class="btn btn-primary"><i class="fa fa-plus">Tambah</i></a>
  </div> -->
  <!-- /.card-header -->
  <div class="card-body">
    <div>
      <a href="<?php echo base_url('siswa/excel');?>" class="btn btn-primary">Export</a>
    </div>

    <table id="example1" class="table table-bordered table-striped">
      <thead>
        <tr>
          <th>nomer</th>
          <th>nama</th>
          <th>Nim</th>
          <th>Tanggal Lahir</th>
          <th>jenis_kelamin</th>
          <th>action</th>
        </tr>
      </thead>
      <?php $no = 1;
      foreach ($Siswa as $ssw) :
      ?>
        <tbody>
          <tr>
            <td><?= $no++ ?></td>
            <td><?= $ssw->nama ?>
            </td>
            <td><?= $ssw->nim ?></td>
            <td> <?= $ssw->tanggal_lahir ?></td>
            <td><?= $ssw->jenis_kelamin ?></td>
            <td>
              <a class="btn btn-warning btn-sm" data-toggle="modal" data-target="#ModalEdit<?php echo $ssw->id; ?>">Edit</a>
              <!-- <a href="" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></a> -->
            </td>
          </tr>
        </tbody>
      <?php endforeach ?>
    </table>
  </div>
</div>
<!--Modal Edit -->
<?php foreach ($Siswa as $i) :
  $id = $i->id;
  $nama = $i->nama;
  $nim = $i->nim;
  $tanggal_lahir = $i->tanggal_lahir;
  $jenis_kelamin = $i->jenis_kelamin;

?>

  <div class="modal fade" id="ModalEdit<?php echo $id; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><span class="fa fa-close"></span></span></button>
          <h4 class="modal-title" id="myModalLabel">Edit </h4>
        </div>
        <form class="form-horizontal" action="<?php echo base_url() . 'Siswa/update_aksi' ?>" method="post" enctype="multipart/form-data">
          <div class="modal-body">
            <input type="hidden" name="kode" value="<?php echo $id; ?>" />
            <!-- <input type="hidden" value="<?php echo $album_cover; ?>" name="gambar"> -->
            <div class="form-group">
              <label for="inputUserName" class="col-sm-4 control-label">Nama</label>
              <div class="col-sm-12">
                <input type="text" name="xnama" class="form-control" value="<?php echo $nama; ?>" id="inputUserName" placeholder="Nama" required>
              </div>
            </div>
            <div class="form-group">
              <label for="inputUserName" class="col-sm-4 control-label">Nim</label>
              <div class="col-sm-12">
                <input type="text" name="xnim" class="form-control" value="<?php echo $nim; ?>" id="inputUserName" placeholder="Nim" required>
              </div>
            </div>
            <div class="form-group">
              <label for="inputUserName" class="col-sm-4 control-label">Tanggal Lahir</label>
              <div class="col-sm-12">
                <input type="date" name="xtglLahir" class="form-control" value="<?php echo $tanggal_lahir; ?>" id="inputUserName" placeholder="" required>
              </div>
            </div>
            <div class="form-group">
              <label for="inputUserName" class="col-sm-4 control-label">Jenis Kelamin</label>
              <div class="col-sm-7">
                <?php if ($jenis_kelamin == 'Laki-Laki') : ?>
                  <div class="radio radio-info radio-inline">
                    <input type="radio" id="inlineRadio1" value="L" name="xjenkel" checked>
                    <label for="inlineRadio1"> Laki-Laki </label>
                  </div>
                  <div class="radio radio-info radio-inline">
                    <input type="radio" id="inlineRadio1" value="P" name="xjenkel">
                    <label for="inlineRadio2"> Perempuan </label>
                  </div>
                <?php else : ?>
                  <div class="radio radio-info radio-inline">
                    <input type="radio" id="inlineRadio1" value="L" name="xjenkel">
                    <label for="inlineRadio1"> Laki-Laki </label>
                  </div>
                  <div class="radio radio-info radio-inline">
                    <input type="radio" id="inlineRadio1" value="P" name="xjenkel" checked>
                    <label for="inlineRadio2"> Perempuan </label>
                  </div>
                <?php endif; ?>
              </div>
            </div>


            <!-- <div class="form-group">
              <label for="inputUserName" class="col-sm-4 control-label">Cover Album</label>
              <div class="col-sm-7">
                <input type="file" name="filefoto" />
              </div>
            </div> -->

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default btn-flat" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary btn-flat" id="simpan">Simpan</button>
          </div>
        </form>
      </div>
    </div>
  </div>
<?php endforeach; ?>
<!--Modal Edit -->