<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class History_siswa extends CI_Controller {
	function __construct()
	{
		parent::__construct();

		// panggil model
		$this->load->model('M_data');

		// pembatasan hak akses
		if($this->session->userdata('status') != "login_siswa"){
			redirect(base_url("siswa/Login_siswa"));
		}
	}

	function index()
	{
		$nisn = $this->session->userdata('nisn');
		$data['tbl_bulan'] = $this->M_data->get_one_table('tbl_bulan');

		$data['bulan'] = $this->M_data->m_pembayaran($nisn)->result();

		$nis = $this->session->userdata('nis');
		$data['tbl_siswa'] = $this->M_data->get_siswa_by_nis($nis);

		$this->load->view('siswa/v_siswa',$data);
	}

	function index2(){
		$ammount = 20;
		$sender_id = 1;
		$receiver_id = 2;

		$this->M_data->transfer($ammount,$sender_id,$receiver_id);
	}

}

/* End of file History_siswa.php */
/* Location: ./application/controllers/siswa/History_siswa.php */