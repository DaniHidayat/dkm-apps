<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login_siswa extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_login');
	}

	public function index()
	{
		$this->load->view('siswa/v_login');
	}
	function aksi_login(){
		$nisn=$this->input->post('nisn');

		$where=  array('nisn' => $nisn
		 );

		$cek=$this->M_login->cek_login("tbl_siswa",$where)->num_rows();

		if ($cek > 0) {

			$data = array(
						  'id_user' =>  $nisn,
						   'status' => 'login'
						);
			$this->M_login->input($data,'log_history');
			$last_insert_id = $this->db->insert_id();

			$yglogin = $this->db->get_where('tbl_siswa',array('nisn'=>$nisn))->row();

			$data_session = array(
				'nisn' => $yglogin->nisn,		
				'nis' => $yglogin->nis,		
				'nama' => $yglogin->nama,		
				'id_log' => $last_insert_id,		
				'status' => "login_siswa");

			$this->session->set_userdata($data_session);

			redirect('siswa/History_siswa');
		}
		else
		{
			  $this->session->set_flashdata('msg', '<div class="alert alert-warning" role="alert">
               Opsss! NISN Tidak Ditemukan!</div>');
			redirect('Login_siswa');
		}
	}
	function logout(){
		$nisn = $this->session->userdata('nisn');
		$id_log = $this->session->userdata('id_log');

		$data = array(
            'id_user' => $nisn,
            'status' => 'logout'
        );

        $where = array(
            'id_log' => $id_log
        );

        $this->M_login->update($where,$data,'log_history');
        
		$this->session->sess_destroy();
		redirect(base_url('Login_siswa'));
	}

}

/* End of file Login_siswa.php */
/* Location: ./application/controllers/siswa/Login_siswa.php */