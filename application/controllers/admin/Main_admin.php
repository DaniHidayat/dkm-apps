<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main_admin extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		// panggil model
		$this->load->model('M_data');

		// pembatasan hak akses
		if($this->session->userdata('status') != "login_admin"){
			redirect(base_url("Login_admin"));
		}
	}

	public function index(){
		$data['data'] = $this->db->query("SELECT * FROM tbl_pembayaran");
		$this->load->view('admin/v_dashboard',$data);
	}

	function history_siswa(){
		$data['tbl_pembayaran'] = $this->M_data->get_history_pembayaran();
		$this->load->view('admin/history/v_history_siswa',$data);
	}

	function entri(){
		$this->load->view('admin/transaksi/v_entri_pembayaran');
	}

	function cari_siswa(){
		$nis = $this->input->get('nis');

		$where = array('nis' => $nis);
		$cek = $this->M_data->cek_nis("tbl_siswa",$where)->num_rows();

		if($cek > 0)
		{
			$cek2 = $this->db->get_where('tbl_siswa',array('nis'=>$nis))->row();

			$data['tbl_siswa'] = $this->M_data->tampil_siswa_by_nis($where,'tbl_siswa');
			$data['tbl_bulan'] = $this->M_data->get_one_table('tbl_bulan');
			$data['bulan'] = $this->M_data->m_pembayaran($cek2->nisn)->result();
			
			$this->load->view('admin/transaksi/v_detail_siswa',$data);
		}
		else
		{	
			$this->session->set_flashdata('no_data', '<div class="alert alert-warning" role="alert">
               Opsss! NISTidak Ditemukan!</div>');
			redirect(base_url('admin/Main_admin/entri'));
		}
	}

	function aksi_entri_pembayaran(){
		$nisn = $this->input->get('nisn');
		$cari_nisn = $this->db->get_where('tbl_siswa',array('nisn'=>$nisn))->row();

		$id_spp = $cari_nisn->id_spp;
		$cari_id_spp = $this->db->get_where('tbl_spp',array('id_spp'=>$id_spp))->row();

		$id_petugas = $this->session->userdata('id_petugas');

		$tgl_bayar = date('Y-m-d');
		$bulan_dibayar = 1;
		$tahun_dibayar = $cari_id_spp->tahun;
		$jumlah_bayar = $cari_id_spp->nominal*$bulan_dibayar;

		$data = array(
			'id_petugas' => $id_petugas,
			'nisn' => $nisn,
			'tgl_bayar' => $tgl_bayar,
			'bulan_dibayar' => $bulan_dibayar,
			'tahun_dibayar' => $tahun_dibayar,
			'id_spp' => $id_spp,
			'jumlah_bayar' => $jumlah_bayar
		);

		$this->M_data->input_data($data,'tbl_pembayaran');
		redirect('admin/Main_admin/cari_siswa?nis='.$cari_nisn->nis.'');
	}

	function tampil_petugas() {
		$data['data']=$this->M_data->get_one_table('tbl_petugas');
		$this->load->view('admin/petugas/v_petugas', $data);
	}


	function tambah_petugas(){
		$username = $this->input->post('username');
		$password = $this->input->post('password'); 
		$password2 = $this->input->post('password2'); 
		$nama_petugas = $this->input->post('nama_petugas');
		$level = $this->input->post('level');

		if($password2 <> $password){
			echo $this->session->set_flashdata('msg','<label class="label label-warning">Password yang Anda Masukan Tidak Sama</label>');
			
			redirect('admin/Main_admin/tampil_petugas');
		}else{

		$data = array(
			'username' => $username,
			'password' => md5($password),
			'nama_petugas' => $nama_petugas,
			'level' => $level
		);
		
		$this->M_data->input_data($data,'tbl_petugas');

		echo $this->session->set_flashdata('succes','<label class="label label-success">Data Berhasil Ditambah</label>');
		redirect('admin/Main_admin/tampil_petugas');
	}
	}

	function form_edit_petugas($id){
		$where = array('id_petugas' => $id );
		$data['data']=$this->M_data->get_one_table('tbl_petugas');
		$data['petugas'] = $this->M_data->get_where_table($where,'tbl_petugas');
		$this->load->view('admin/petugas/v_petugas_edit', $data);
	}

	function edit_petugas(){
		$id_petugas = $this->input->post('id_petugas');
		$nama_petugas = $this->input->post('nama_petugas');
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$password2 = $this->input->post('password2');
		$level = $this->input->post('level');
		if(empty($password) || empty($password2)) {
				$data = array(
			'nama_petugas' => $nama_petugas,
			'username' => $username,
			'level'		=> $level 
		);

		$where = array(
			'id_petugas' => $id_petugas
		);
		$this->M_data->update_data($where,$data,'tbl_petugas');
		echo $this->session->set_flashdata('succes','<label class="label label-success">Data Berhasil Diperbarui</label>');
		redirect('admin/Main_admin/tampil_petugas');

		}elseif($password2 <> $password){
			echo $this->session->set_flashdata('msg','<label class="label label-warning">Password yang Anda Masukan Tidak Sama</label>');
			redirect('admin/Main_admin/tampil_petugas');

		}else{

		$data = array(
			'nama_petugas' => $nama_petugas,
			'username' => $username,
			'password' => md5($password),
			'level'		=> $level 
		);

		$where = array(
			'id_petugas' => $id_petugas
		);

		$this->M_data->update_data($where,$data,'tbl_petugas');
		echo $this->session->set_flashdata('succes','<label class="label label-success">Data Berhasil Diperbarui</label>');
		redirect('admin/Main_admin/tampil_petugas');
	}
}

	function get_hapus_petugas($id_petugas){
		$where = array('id_petugas' => $id_petugas);
		$this->M_data->hapus_data($where,'tbl_petugas');
	echo $this->session->set_flashdata('succes','<label class="label label-danger">Data Berhasil Di hapus</label>');
		redirect('admin/Main_admin/tampil_petugas');
	}

	function tampil_siswa(){
		
		$data['tbl_kelas'] =$this->db->query("SELECT * FROM tbl_kelas");
		$data['tbl_spp'] =$this->db->query("SELECT * FROM tbl_spp");
		$data['tbl_siswa'] = $this->M_data->get_siswa();
		$this->load->view('admin/siswa/v_siswa_data', $data);
	}

	

	function tambah_siswa(){
		$nisn = $this->input->post('nisn'); //untuk name di view
		$nis = $this->input->post('nis');
		$nama = $this->input->post('nama');
		$id_kelas = $this->input->post('id_kelas');
		$no_telp = $this->input->post('no_telp');
		$alamat = $this->input->post('alamat');
		$id_spp = $this->input->post('id_spp');

		//cari id sp
		$cari = $this->db->get_where('tbl_spp',array('id_spp' => $id_spp ))->row();
		$nominal = $cari->nominal;
		$total = $nominal * 12;

		$data = array(
			'nisn' => $nisn,
			'nis' => $nis,
			'nama' => $nama,
			'id_kelas' => $id_kelas,
			'alamat' => $alamat,
			'no_telp' => $no_telp,
			'id_spp' => $id_spp,
			'total' => $total
		);
		
		$this->M_data->input_data($data,'tbl_siswa');
	echo $this->session->set_flashdata('succes','<label class="label label-success">Data Berhasil Ditambah</label>');
		redirect('admin/Main_admin/tampil_siswa');
	}

	function form_edit_siswa($nisn){
		$where = array( 'nisn' => $nisn);
		$data['siswa'] = $this->M_data->get_where_table($where,'tbl_siswa');
		$data['tbl_kelas'] = $this->M_data->get_one_table('tbl_kelas');
		$data['tbl_spp'] = $this->M_data->get_one_table('tbl_spp');
		$data['tbl_siswa'] = $this->M_data->get_siswa();

		$this->load->view('admin/siswa/v_siswa_edit', $data);
	}

	function edit_siswa(){
		$nisn = $this->input->post('nisn'); //untuk name di view
		$nis = $this->input->post('nis');
		$nama = $this->input->post('nama');
		$id_kelas = $this->input->post('id_kelas');
		$no_telp = $this->input->post('no_telp');
		$alamat = $this->input->post('alamat');
		$id_spp = $this->input->post('id_spp');

		//cari id sp
		$cari = $this->db->get_where('tbl_spp',array('id_spp' => $id_spp ))->row();
		$nominal = $cari->nominal;
		$total = $nominal * 12;
		
		$data = array(
			'nisn' => $nisn,
			'nis' => $nis,
			'nama' => $nama,
			'id_kelas' => $id_kelas,
			'alamat' => $alamat,
			'no_telp' => $no_telp,
			'id_spp' => $id_spp,
			'total' => $total
		);

		$where = array(
			'nisn' => $nisn
		);

		$this->M_data->update_data($where,$data,'tbl_siswa');
		echo $this->session->set_flashdata('succes','<label class="label label-success">Data Berhasil DiPerbarui</label>');
		redirect('admin/Main_admin/tampil_siswa');
	}

	function get_hapus_siswa($nisn){
		$where = array('nisn' => $nisn);
		$this->M_data->hapus_data($where,'tbl_siswa');
		echo $this->session->set_flashdata('succes','<label class="label label-danger">Data Berhasil Dihapus!</label>');
		redirect('admin/Main_admin/tampil_siswa');
	}

	function tampil_kelas(){
		$data['tbl_kelas'] = $this->M_data->get_one_table('tbl_kelas');
		$this->load->view('admin/kelas/v_kelas_data', $data);
	}

	function tambah_kelas(){
		$id_kelas=$this->input->post('id_kelas');
		$nama_kelas=$this->input->post('nama_kelas'); 
		$kompetensi_keahlian=$this->input->post('kompetensi_keahlian');

		$data = array(
			'id_kelas' => $id_kelas,
			'nama_kelas' => $nama_kelas,
			'kompetensi_keahlian' => $kompetensi_keahlian
		);
		
		$this->M_data->input_data($data,'tbl_kelas');
	echo $this->session->set_flashdata('succes','<label class="label label-success">Data Berhasil Ditambah!</label>');
		redirect('admin/Main_admin/tampil_kelas');
	}

	function form_edit_kelas($id_kelas){
		$where= array( 'id_kelas' => $id_kelas);
		$data['kelas']=$this->M_data->get_where_table($where,'tbl_kelas');
		$data['tbl_kelas'] = $this->M_data->get_one_table('tbl_kelas');
		$this->load->view('admin/kelas/v_kelas_edit', $data);
	}

	function edit_kelas(){
		$id_kelas=$this->input->post('id_kelas');
		$nama_kelas=$this->input->post('nama_kelas');
		$kompetensi_keahlian=$this->input->post('kompetensi_keahlian');

		
		$data = array(
			'nama_kelas' => $nama_kelas,
			'kompetensi_keahlian' => $kompetensi_keahlian
		);

		$where = array(
			'id_kelas' => $id_kelas
		);

		$this->M_data->update_data($where,$data,'tbl_kelas');
		$this->session->set_flashdata('berhasil_update', 'Data Kelas Berhasil Diupdate!');
		redirect('admin/Main_admin/tampil_kelas');
	}

	function get_hapus_kelas($id_kelas){
		$where = array('id_kelas' => $id_kelas);
		$this->M_data->hapus_data($where,'tbl_kelas');
		echo $this->session->set_flashdata('succes','<label class="label label-danger">Data Berhasil Dihapus!</label>');
		redirect('admin/Main_admin/tampil_kelas');
	}

	function tampil_spp(){
		$data['tbl_spp'] = $this->M_data->get_one_table('tbl_spp');
		$this->load->view('admin/spp/v_spp_data', $data);
	}

	function tambah_spp(){
		$id_spp = $this->input->post('id_spp');
		$tahun = $this->input->post('tahun'); 
		$nominal = $this->input->post('nominal');

		$data = array(
			'id_spp' => $id_spp,
			'tahun' => $tahun,
			'nominal' => $nominal
		);
		
		$this->M_data->input_data($data,'tbl_spp');
			echo $this->session->set_flashdata('succes','<label class="label label-success">Data Berhasil Ditambah!</label>');
		redirect('admin/Main_admin/tampil_spp');
	}

	function form_edit_spp($id_spp){
		$where = array('id_spp' => $id_spp );
		$data['spp'] = $this->M_data->get_where_table($where,'tbl_spp');
		$data['tbl_spp'] = $this->M_data->get_one_table('tbl_spp');
		$this->load->view('admin/spp/v_spp_edit', $data);
	}

	function edit_spp(){
		$id_spp = $this->input->post('id_spp');
		$tahun = $this->input->post('tahun');
		$nominal = $this->input->post('nominal');

		$data = array(
			'tahun' => $tahun,
			'nominal' => $nominal
		);

		$where = array(
			'id_spp' => $id_spp
		);

		$this->M_data->update_data($where,$data,'tbl_spp');
			echo $this->session->set_flashdata('succes','<label class="label label-success">Data Berhasil Diperbarui!</label>');
		redirect('admin/Main_admin/tampil_spp');
	}

	function get_hapus_spp($id_spp){
		$where = array('id_spp' => $id_spp);
		$this->M_data->hapus_data($where,'tbl_spp');
			echo $this->session->set_flashdata('succes','<label class="label label-danger">Data Berhasil Dihapus!</label>');
		redirect('admin/Main_admin/tampil_spp');
	}

	function laporan(){
		$this->load->view('admin/laporan/v_laporan');
	}

	function form_laporan(){
		$tgl1 = $this->input->get('tgl1');
		$tgl2 = $this->input->get('tgl2');
		$data['tbl_pembayaran'] = $this->M_data->get_laporan($tgl1,$tgl2);
		
		$this->load->view('admin/laporan/v_laporan_detail',$data);
	}

	function cetak_laporan(){
		$tgl1 = $this->input->get('tgl1');
		$tgl2 = $this->input->get('tgl2');
		$data['tbl_pembayaran'] = $this->M_data->get_laporan($tgl1,$tgl2);
		$data['jml'] = $this->M_data->get_sum_from_laporan($tgl1,$tgl2);
		$this->load->view('admin/laporan/v_cetak_laporan',$data);
	}

}

/* End of file Main_admin.php */
/* Location: ./application/controllers/admin/Main_admin.php */