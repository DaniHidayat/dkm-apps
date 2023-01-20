
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>History</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<link href="<?php echo base_url();?>assets/images/slp.png" rel="icon">
  <!-- Bootstrap 3.3.6 -->
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
  <link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/plugins/toast/jquery.toast.min.css'?>"/></head>
<body class="hold-transition skin-yellow sidebar-mini">
<div class="wrapper">
  <!--Counter Inbox-->
<?php $this->load->view('includ/v_header'); ?>
<?php $this->load->view('includ/v_menu'); ?>



 
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
         History Siswa
        <small></small>
      </h1>
     
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">

          <div class="box">
            <div class="box-header">
              
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">
              <table id="example1" class="table table-striped" style="font-size:13px;">
               <thead>
                    <tr>
                        <th style="text-align:center;width:40px;">No</th>
                        <th>NISN</th>
                        <th>NIS</th>
                        <th >NAMA</th>
                         <th>KELAS</th>
                         <th >BULAN</th>
                          <th style="width:140px;text-align:center;">KETERANGAN</th>
                    </tr>
                </thead>
               <tbody>
               
    <?php
      $no=1; 
      foreach($tbl_pembayaran as $u) :?>
    <tr>
      <td><?php echo $no++ ?></td>
      <td><?php echo $u->nisn ?></td>
      <td><?php echo $u->nis ?></td>
      <td><?php echo $u->nama ?></td>
      <td><?php echo $u->nama_kelas ?> <?php echo $u->kompetensi_keahlian ?></td>
      <td>
        <?php
        if ($u->total_bulan < 1) {
          echo "0";
        }
        elseif ($u->total_bulan >= 1) {
          echo $u->total_bulan;
        }
        ?>  
      </td>
      <td>
        <?php
        if ($u->total_bulan == 12) {
          echo "<mark>LUNAS</mark>";
        }
        elseif ($u->total_bulan < 12) {
          echo "BELUM LUNAS";
        }
        else{
          echo "ERROR!!!";
        }
        ?>
      </td>
    </tr>
   
                <?php endforeach;?>
                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
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
      <b>Version</b> 
    </div>
    <strong>Copyright &copy; 2019 <a href="#">Inventory</a>.</strong> All rights reserved.
  </footer>

  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->


          
        


        <!--END MODAL-->
   
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
<script type="text/javascript" src="<?php echo base_url().'assets/plugins/toast/jquery.toast.min.js'?>"></script>
<!-- page script -->
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
