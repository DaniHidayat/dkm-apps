<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login_admin extends CI_Controller {
	function __construct(){
		parent::__construct();		
		$this->load->model('M_login');
	}

	public function index()
	{
		$this->load->view('admin/v_login_admin_petugas');
	}

	function aksi_login(){
		$username = $this->input->post('username');
		$password = $this->input->post('password');	
		

		$where = array(
			'username' => $username,
			'password' => md5($password)
		);
		
		$cek = $this->M_login->cek_login("tbl_petugas",$where)->num_rows();

		if($cek > 0)
		{
			$yglogin = $this->db->get_where('tbl_petugas',array('username'=>$username))->row();
			
			// untuk log history
			$data = array(
							'id_user' => $yglogin->id_petugas,
							'status' => 'login'
						);
        	$this->M_login->input($data,'log_history');
        	$last_insert_id = $this->db->insert_id();


			$data_session = array(
				'id_petugas' => $yglogin->id_petugas,		
				'username' => $yglogin->username,		
				'nama_petugas' => $yglogin->nama_petugas,		
				'level' => $yglogin->level,	
				'id_log' => $last_insert_id,
				'status' => "login_admin");


			$this->session->set_userdata($data_session);


			if($yglogin->level == 'admin')
			{
				redirect(base_url('admin/main_admin'));
			}

			elseif($yglogin->level == 'petugas')
			{
				redirect(base_url('admin/main_admin'));
			}

		}

		else
		{
			$this->session->set_flashdata('msg', '<div class="alert alert-warning" role="alert">
               Opsss! Username atau password Salah!</div>');
			redirect(base_url('Login_admin'));
		}
	}

	function logout(){
		$id_petugas = $this->session->userdata('id_petugas');
		$id_log = $this->session->userdata('id_log');

		$data = array(
            'id_user' => $id_petugas,
            'status' => 'logout'
        );

        $where = array(
            'id_log' => $id_log
        );

        $this->M_login->update($where,$data,'log_history');
        
		$this->session->sess_destroy();
		redirect(base_url('Login_admin'));
	}

}

/* End of file Login_admin.php */
/* Location: ./application/controllers/admin/Login_admin.php */