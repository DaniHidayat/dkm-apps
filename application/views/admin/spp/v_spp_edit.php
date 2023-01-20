
<!--Counter Inbox-->
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Spp</title>
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
              <h3 class="box-title">Edit Spp</h3>
              <?php  echo $this->session->flashdata('msg'); ?>
              <?php  echo $this->session->flashdata('succes'); ?>
          
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <?php foreach ($spp as $u ) :?>
            <form role="form" action="<?php echo site_url('admin/Main_admin/edit_spp') ?> " method="post" enctype="multipart/form-data">
              <div class="box-body">
          
          <input type="hidden" name="id_spp" value="<?php echo $u->id_spp;?>">
                 <div class="form-group">
                  <label for="exampleInputAlamat1">Tahun </label>
                  <input type="text" class="form-control"name="tahun" placeholder="Masukan Tahun" value="<?php echo $u->tahun;?>"  readonly>
                </div>
                 <div class="input-group">
                
                   <span class="input-group-addon"><b>Rp</b></span>
                  <input type="text" class="form-control" name="nominal" placeholder="Masukan Nominal"  value="<?php echo $u->nominal;?>" required>
                </div>
                <br>

    <button type="submit" class="btn btn-primary">Simpan</button>
              </div>
              <!-- /.box-body -->
            </form>
          <?php endforeach;?>
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
        <th>Tahun</th>
        <th>Nominal</th>
        <th>Action</th>
                    </tr>
                </thead>
              <tbody>
      <?php 
      $no=1;
      foreach ($tbl_spp as $spp ) :?>

        <tr>
          <td><?php echo $no++;?></td>
          <td><?php echo $spp->tahun; ?></td>
          <td><?php echo $spp->nominal;?></td>
          <td>
            <a href='<?php echo site_url('admin/Main_admin/form_edit_spp/'.$spp->id_spp,''); ?>' onClick='return confirm("Yakin akan mengedit SPP tahun <?php echo $spp->tahun?>?")' title="Edit SPP">Edit</a>

            <a href='<?php echo site_url('admin/Main_admin/get_hapus_spp/'.$spp->id_spp,''); ?>' onClick='return confirm("Yakin akan menghapus SPP tahun <?php echo $spp->tahun?>?")' title="Hapus SPP">Hapus</a> 
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
