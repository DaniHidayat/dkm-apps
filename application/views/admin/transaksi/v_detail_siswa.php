
<!--Counter Inbox-->
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Siswa </title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link href="<?php echo base_url();?>/assets/images/slp.png" rel="icon">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo base_url();?>/assets/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url();?>/assets/font-awesome/css/font-awesome.min.css">
  <!-- daterange picker -->
  <link rel="stylesheet" href="<?php echo base_url();?>/assets/plugins/daterangepicker/daterangepicker.css">
  <!-- bootstrap datepicker -->
  <link rel="stylesheet" href="<?php echo base_url();?>/assets/plugins/datepicker/datepicker3.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="<?php echo base_url();?>/assets/plugins/iCheck/all.css">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="<?php echo base_url();?>/assets/plugins/colorpicker/bootstrap-colorpicker.min.css">
  <!-- Bootstrap time Picker -->
  <link rel="stylesheet" href="<?php echo base_url();?>/assets/plugins/timepicker/bootstrap-timepicker.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="<?php echo base_url();?>/assets/plugins/select2/select2.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url();?>/assets/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo base_url();?>/assets/dist/css/skins/_all-skins.min.css">


</head>



 <body class="hold-transition skin-yellow sidebar-mini">
<div class="wrapper">
<?php $this->load->view('includ/v_header'); ?>
<?php $this->load->view('includ/v_menu'); ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
      Pembayaran SPP Online
      </h1>
     
    </section>
        <!-- Main content -->

    <section class="content">


      <div class="row">


        <div class="col-md-3">
            <form action="<?php echo base_url('admin/Main_admin/cari_siswa');?>" method="GET">
          <div class="input-group input-group-sm">
                    <input type="text" placeholder="Masukan NIS"name="nis"  class="form-control">
                    <span class="input-group-btn">
                      <button class="btn btn-info btn-flat" type="submit">Cari</button>
                    </span>
                  </div>
                  </form>
                  <br>

          <!-- Profile Image -->
          <div class="box box-primary">
            <div class="box-body box-profile">
              <img src="<?php echo base_url();?>/assets/images/user.png" class="img-circle" alt="">
               <?php foreach ($tbl_siswa as $a) :?>
                  
               
              <h3 class="profile-username text-center">NISN : <?php echo $a->nisn ?></h3>
                      <p class="text-muted text-center">Nama : <?php echo $a->nama ?></p>
                      <p class="text-muted text-center">Kelas : <?php echo $a->nama_kelas ?> <?php echo $a->kompetensi_keahlian ?></p>
                       <p class="text-muted text-center">Tahun Pelajaran :<?php echo $a->tahun ?>/<?php echo $a->tahun+1 ?></p>
                          <!-- /.box-header -->
           
<?php endforeach;  ?>
              
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#settings" data-toggle="tab">Data Pembayaran</a></li>              
            </ul>
           <div class="tab-content">
            <div class="active tab-pane" id="settings">
             
                 <table id="example1" class="table table-striped" style="font-size:13px;">
            
     

               <thead>
                    <tr>
                        <th style="text-align:center;width:40px;">No</th>
                        <th>Bulan</th>
                        <th>Tahun</th>
                        <th>Nominal</th>
                        <th style="width:140px;text-align:center;">Keterangan</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <?php foreach($bulan as $c)
      {
      }
    ?>
               <tbody>
              
              <?php 
        $no=1;
        foreach($tbl_bulan as $d) :
      ?>
      <tr align="center">
        <td><?php echo $no++;?></td>
        <td><?php echo $d->nama_bulan ?></td>
        <td>
          <?php
          if ($d->id_bulan <= 6) {
            echo $a->tahun;
          }
          elseif ($d->id_bulan > 6) {
            echo $a->tahun+1; 
          }
          ?>
        </td>
        <td><?php echo $a->nominal ?></td>
        <td>
          <?php
          if ($d->id_bulan <= $c->total_bulan) {
            echo "Lunas";
          }
          elseif ($d->id_bulan > $c->total_bulan) {
            echo "Belum Lunas"; 
          }
          ?>
        </td> 
        <td>
          <?php if ($d->id_bulan <= $c->total_bulan): ?>
            -

          <?php elseif ($d->id_bulan == $c->total_bulan + 1) : ?>
            <a href="<?php echo base_url('admin/Main_admin/aksi_entri_pembayaran?nisn='.$a->nisn.'');?>" onClick="return confirm('Yakin akan melunasi transaksi Bulan <?php echo $d->nama_bulan?>?')">Bayar</a>

          <?php elseif ($d->id_bulan > $c->total_bulan + 1) : ?>
            <a href="#" onClick="return confirm('bayar bulan sebelumnya dulu?')">Bayar</a>

          <?php endif ?>
        </td> 
                </tbody>
                  <?php endforeach;?>
              </table>
              </div>
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- /.nav-tabs-custom -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 3.0
    </div>
    <strong>Copyright &copy; 2019 - 2020 <a href="#">LSPSMKN1CIAMIS</a></strong> All rights reserved.
  </footer>
  <!-- Control Sidebar -->
  
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->


<!-- jQuery 2.2.3 -->
<script src="<?php echo base_url();?>/assets/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="<?php echo base_url();?>/assets/bootstrap/js/bootstrap.min.js"></script>
<!-- Select2 -->
<script src="<?php echo base_url();?>/assets/plugins/select2/select2.full.min.js"></script>
<!-- InputMask -->
<script src="<?php echo base_url();?>/assets/plugins/input-mask/jquery.inputmask.js"></script>
<script src="<?php echo base_url();?>/assets/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="<?php echo base_url();?>/assets/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<!-- date-range-picker -->
<script src="<?php echo base_url();?>/assets/plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap datepicker -->
<script src="<?php echo base_url();?>/assets/plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- bootstrap color picker -->
<script src="<?php echo base_url();?>/assets/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<!-- bootstrap time picker -->
<script src="<?php echo base_url();?>/assets/plugins/timepicker/bootstrap-timepicker.min.js"></script>
<!-- SlimScroll 1.3.0 -->
<script src="<?php echo base_url();?>/assets/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- iCheck 1.0.1 -->
<script src="<?php echo base_url();?>/assets/plugins/iCheck/icheck.min.js"></script>
<!-- FastClick -->
<script src="<?php echo base_url();?>/assets/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url();?>/assets/dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url();?>/assets/dist/js/demo.js"></script>
<script src="<?php echo base_url();?>/assets/ckeditor/ckeditor.js"></script>
<!-- Page script -->


</body>
</html>
