
<!--Counter Inbox-->
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Kelas</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link href="<?php echo base_url();?>assets/images/slp.png" rel="icon">
<link rel="stylesheet" href="<?php echo base_url().'assets/bootstrap/css/bootstrap.min.css'?>">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/font-awesome/css/font-awesome.min.css'?>">
  <!-- DataTables -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/plugins/datatables/dataTables.bootstrap.css'?>">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/dist/css/AdminLTE.min.css'?>">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/dist/css/skins/_all-skins.min.css'?>">


</head>
<body class="hold-transition skin-yellow sidebar-mini">
<div class="wrapper">

   <!--Counter Inbox-->

<?php $this->load->view('includ/v_header'); ?>
<?php $this->load->view('includ/v_menu'); ?>
 <!-- sidebar menu: : style can be found in sidebar.less -->
 <!-- Left side column. contains the logo and sidebar -->
  
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
   
     
       
        <!-- Main content -->
    <section class="content">
      <div class="row">
        <!-- left column -->
        <div class="col-md-3">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Edit Kelas</h3>
              <?php  echo $this->session->flashdata('msg'); ?>
              <?php  echo $this->session->flashdata('succes'); ?>
              <?php $tbl_kelas_id=$this->db->query("SELECT * FROM tbl_kelas ORDER BY id_kelas DESC LIMIT 1")->row();?>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <?php foreach ($kelas as $u ) :?>
            <form role="form" action="<?php echo site_url('admin/Main_admin/tambah_kelas') ?> " method="post" enctype="multipart/form-data">
              <div class="box-body">
          
                <input type="hidden" name="id_kelas" value="<?php echo $tbl_kelas_id->id_kelas+1 ?>">
                <div class="form-group">
                  <label for="exampleInputTelp1">Kelas </label>
                            <select name="nama_kelas" class="form-control" style="width:220px;" required>
                               <option value="<?php echo $u->nama_kelas?>"><?php echo $u->nama_kelas?></option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                          
                            </select>
                      
                </div>
                 <div class="form-group">
                  <label for="exampleInputAlamat1">Jurusan </label>
                  <input type="text" class="form-control" name="kompetensi_keahlian" value="<?php echo $u->kompetensi_keahlian;?>" id="exampleInputAlamat1"  placeholder="Jurusan" required>
                </div>
    <button type="submit" class="btn btn-primary">Simpan</button>
              </div>
              <!-- /.box-body -->
            </form>
          <?php endforeach; ?>
          </div>
          <!-- /.box -->

        </div>
        <!--/.col (left) -->
        <!-- left column -->
        <div class="col-md-9">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Daftar Petugas</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
              <div class="box-body table-responsive">
              <table id="example1" class="table table-striped" style="font-size:13px;">
               <thead>
                    <tr>
         <th>NO</th>
        <th>KELAS</th>
        <th>JURUSAN</th>
        <th>ACTION</th>
                    </tr>
                </thead>
              <tbody>
      <?php 
      $no=1;
      foreach ($tbl_kelas as $kelas ) :?>

        <tr align="center">
          <td><?php echo $no++;?></td>
          <td><?php echo $kelas->nama_kelas; ?></td>
          <td><?php echo $kelas->kompetensi_keahlian;?></td>
          <td>
            <a href='<?php echo site_url('admin/Main_admin/form_edit_kelas/'.$kelas->id_kelas,''); ?>' onClick='return confirm("Yakin akan mengedit kelas <?php echo $kelas->nama_kelas?> <?php echo $kelas->kompetensi_keahlian?>?")' title="Edit Kelas">Edit</a>

            <a href='<?php echo site_url('admin/Main_admin/get_hapus_kelas/'.$kelas->id_kelas,''); ?>' onClick='return confirm("Yakin akan menghapus kelas <?php echo $kelas->nama_kelas?> <?php echo $kelas->kompetensi_keahlian?>?")' title="Hapus Kelas">Hapus</a>
          </td> 
        </tr>
      <?php endforeach; ?>
    </tbody>
              </table>
            </div>
            <!-- /.box-body -->
           
          </div>
          <!-- /.box -->

        </div>
        <!--/.col (left) -->
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
  
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="<?php echo base_url().'assets/plugins/jQuery/jquery-2.2.3.min.js'?>"></script>
<!-- Bootstrap 3.3.6 -->
<script src="<?php echo base_url().'assets/bootstrap/js/bootstrap.min.js'?>"></script>
<!-- DataTables -->
<script src="<?php echo base_url().'assets/plugins/datatables/jquery.dataTables.min.js'?>"></script>
<script src="<?php echo base_url().'assets/plugins/datatables/dataTables.bootstrap.min.js'?>"></script>
<!-- SlimScroll -->
<script src="<?php echo base_url().'assets/plugins/slimScroll/jquery.slimscroll.min.js'?>"></script>
<!-- FastClick -->
<script src="<?php echo base_url().'assets/plugins/fastclick/fastclick.js'?>"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url().'assets/dist/js/app.min.js'?>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url().'assets/dist/js/demo.js'?>"></script>




<!-- Page script -->

<script>
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
  });
</script>

</body>
</html>
