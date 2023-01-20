 <!DOCTYPE html>
<html moznomarginboxes mozdisallowselectionprint>
 <head>
 	<title>Laporan Pembayaran</title>
 	<style type="text/css">
 		body{
 			font-family: Arial;
 		}

 		@media print{
 			.no-print{
 				display: none;
 			}

 			@page {
 				size : landscape;
 			}
 		}

 		table{
 			border-collapse: collapse;
 		}
 	</style>
 </head>
 <body>
 	<a href="#" class="no-print" onclick="window.print();">Cetak Laporan</a>
 	<a href="<?php echo base_url('admin/Main_admin/form_laporan?tgl1='.$this->input->get('tgl1').'&tgl2='.$this->input->get('tgl2').'');?>" class="no-print">Kembali</a><br>

 	<h3 align="center">LAPORAN PEMBAYARAN SPP <br> SMK </h3>
 	<h5 align="center">Dari Tanggal <?php echo $this->input->get('tgl1')?> Sampai Tanggal <?php echo $this->input->get('tgl2')?> </h5>
 	<table width="80%" align="center" border="1" cellspacing="0" cellpadding="4">
 		<thead>
 			<tr align="center">
 			<td>NO</td>
	 		<td>NIS</td>
	 		<td>Nama Siswa</td>
	 		<td>Kelas</td>
	 		<td>Tanggal Bayar</td>
	 		<td>Pembayaran Bulan</td>
	 		<td>Keterangan</td>
	 		<td>Jumlah</td>
	 		</tr>
	 	</thead>
	 	<tbody>
	 		<?php
	 			$no=1;
	 			foreach($tbl_pembayaran as $a){ 
	 		?>
	 		<tr>
	 			<td><?php echo $no++;?></td>
				<td><?php echo $a->nis ?></td>
				<td><?php echo $a->nama ?></td>
				<td><?php echo $a->nama_kelas ?> <?php echo $a->kompetensi_keahlian ?></td>
				<td><?php echo $a->tgl_bayar ?></td>
				<td><?php echo $a->bulan_dibayar ?></td>
				<td>LUNAS</td>
				<td><?php echo $a->nominal ?></td>
	 		</tr>
	 		<?php } ?>

	 		<?php
	 			foreach($jml as $b){ 
	 		?>
	 		<tr>
	 			<td colspan="7" align="center"><strong>Total</strong></td>
	 			<td align="left"><strong><?php echo $b->jml_total ?></strong></td>
	 		</tr>
	 		<?php } ?>
	 	</tbody>
 	</table>

 	<table width="80%" align="center">
 		<tr>
 			<td></td>
 			<td width="200px">
 				<p>Ciamis, <?php echo date('d-m-Y') ?><br><?php echo $this->session->userdata('level');?></p>
 				<br><br>
 				<p style="margin-bottom: -15%;"><?php echo $this->session->userdata('username');?></p>
 				<p>_________________</p>
 				
 			</td>
 		</tr>
 	</table>
 	

 </body>
 </html>