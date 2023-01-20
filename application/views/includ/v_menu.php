
<!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">GENERAL</li>
            
<?php $level = $this->session->userdata('level'); ?>

<?php if ($level== 'admin'): ?>
  

        <li><a href="<?php echo base_url('admin/Main_admin')?>"onclick="loadPage"><i class="fa fa-dashboard text-aqua"></i> <span>DASHBOARD</span></a></li> 
        
        <li>
          <a href="<?php echo base_url().'admin/Main_admin/history_siswa'?>" >
            <i class="fa fa-shopping-cart"></i> <span>History</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green"></small>
            </span>
          </a>
        </li>
         <li>
          <a href="<?php echo base_url().'admin/Main_admin/entri'?>">
            <i class="fa fa-shopping-cart"></i> <span>Entri Pembayran</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green"></small>
            </span>
          </a>
        </li>
        
         <li>
          <a href="<?php echo base_url().'admin/Main_admin/tampil_petugas'?>">
            <i class="fa fa-line-chart"></i> <span>Petugas</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green"></small>
            </span>
          </a>
        </li>
       
         <li>
          <a href="<?php echo base_url().'admin/Main_admin/tampil_siswa'?>">
            <i class="fa fa-file"></i> <span>Siswa</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green"></small>
            </span>
          </a>
        </li>

         <li>
          <a href="<?php echo base_url().'admin/Main_admin/tampil_kelas'?>">
            <i class="fa fa-cubes"></i> <span>kelas</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green"></small>
            </span>
          </a>
        </li>
        
         <li>
          <a href="<?php echo base_url().'admin/Main_admin/tampil_spp'?>">
            <i class="fa fa-sitemap"></i> <span>Spp</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green"></small>
            </span>
          </a>
        </li>

         <li>
          <a href="<?php echo base_url().'admin/Main_admin/laporan'?>">
            <i class="fa fa-sitemap"></i> <span>Laporan</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green"></small>
            </span>
          </a>
        </li>

        <?php else : ?>
        <li><a href="<?php echo base_url('admin/Main_admin')?>"onclick="loadPage"><i class="fa fa-dashboard text-aqua"></i> <span>DASHBOARD</span></a></li> 
        
        <li>
          <a href="<?php echo base_url().'admin/Main_admin/history_siswa'?>" >
            <i class="fa fa-shopping-cart"></i> <span>History</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green"></small>
            </span>
          </a>
        </li>
         <li>
          <a href="<?php echo base_url().'admin/Main_admin/entri'?>">
            <i class="fa fa-shopping-cart"></i> <span>Entri Pembayran</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green"></small>
            </span>
          </a>
        </li>
        
      <?php endif; ?>

      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>