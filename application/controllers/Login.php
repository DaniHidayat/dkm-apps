<?php 
 class Login Extends CI_Controller{


     function __construct()
     {
        parent:: __construct();
        $this->load->model('m_login');
     }
    public  function index(){
        $this->load->view('v_login');
     }
     public function aksi_login()
     {
        $username = $this->input->post('username');
        $password = $this->input->post('password');

        $where = array(
            'username' =>
            $username,
            'password' =>
            md5($password)
        );
        $cek = $this->m_login->cek_data('tb_users', $where);
        $xcadmin = $cek->row_array();
        if($cek->num_rows() > 0){
            if($xcadmin['is_admin'] === "TRUE"){
                $data_session = array(
                    'nama' => $username,
                    'status' => 'Login',
                    'is_admin' => TRUE
                );
            }else{
                $data_session = array(
                    'nama' => $username,
                    'status' => 'Login',
                    'is_admin' => FALSE
                );
            }
            
            $this->session->set_userdata($data_session);

            redirect('Dashboard');
        }else{
            $this->session->set_flashdata('errLog', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
            <strong>Password atau Username Salah!
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>');
            redirect('Login');
        }

      
     }
    public  function Register()
    {
        $this->load->view('v_register');
    }

    public  function aksi_register()
    {
        $name = $this->input->post('name');
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $konfirmasipassword = $this->input->post('konfirmasi_password');
        $data = array(
            'name' => $name,
            'username' => $username,
            'password' => md5($password)
        );

        $where = array(
            'username' => $username
        );
        $cek = $this->m_login->cek_data('tb_admin', $where)->num_rows();
        if($cek < 1){        
        if($konfirmasipassword !== $password ){
                $this->session->set_flashdata('errPass', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
            <strong>Password Tidak sama!
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>');
                redirect('Login/Register');
        }else {
            $this->m_login->input_data($data, 'tb_admin');
            redirect('Login');
         }
        }else{
            echo "Sa;aj";
        }

      
    }
    public  function lupa_password()
    {
        $this->load->view('v_lupa_password');
    }
    public  function aksi_lupa_password()
    {
       
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $konfirmasipassword = $this->input->post('konfirmasi_password');
        $data = array(
            'password' => md5($password)
        );

        $where = array(
            'username' => $username
        );
        $cek = $this->m_login->cek_data('tb_admin', $where)->num_rows();

        
        if ($cek >= 1) {
            if ($konfirmasipassword !== $password) {
                echo "password tidak Sama ";
            } else {
                $this->m_login->update_password($where,$data, 'tb_admin');
                redirect('Login');
            }
        } else {
            echo "username tidak  tersedia";
        }
    }
 }
?>