<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
		function __construct()
		{
			parent:: __construct();
			if($this->session->userdata('status') != "Login"){
				redirect(base_url('Login'));
			}
		}
	
	public function index()
	{
		//membuat variabel title 
		$data['title']='Dashboard';
        $this->load->view('template/header',$data);
		$this->load->view('template/sidebar',$data);
        $this->load->view('dashboard');
        $this->load->view('template/footer');
	}
}
