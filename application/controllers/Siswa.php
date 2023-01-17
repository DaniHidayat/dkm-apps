<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Siswa extends CI_Controller {

    public function __construct()
    {
        //function yang pertama dijalankan 
        parent ::__construct();
        $this->load->model('Siswa_Model');
        if ($this->session->userdata('status') != "Login") {
            redirect(base_url('Login'));
        }
    }
	
	public function index()
	{
		
        $data['title']='Siswa';
        $data['Siswa']=$this -> Siswa_Model-> get_data('tb_mahasiswa')->result();
        $this->load->view('template/header',$data);
        $this->load->view('template/sidebar',$data);
        $this->load->view('Siswa',$data);
       $this->load->view('template/footer',$data);
	}

    public function tambah(){
        $data['title'] = 'Tambah Data Siswa';
        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('v_tambah_siswa', $data);
        $this->load->view('template/footer', $data);

    }
    public function tambah_aksi(){
   
        $this->_rules();// validasi data
        if ($this->form_validation->run() == FALSE) {
           $this->tambah();
        } else {
         $data = array(
           'nama_siswa' => $this->input->post('nama_siswa'),
           'kelas_siswa' => $this->input->post('kelas_siswa'),
           'alamat_siswa' => $this->input->post('alamat_siswa'),
           'no_telepon' => $this->input->post('no_telepon'),
         );
         $this->Siswa_Model->insert_data($data, 'tb_siswa');
         $this->session->set_flashdata('pesan', '<div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Berhasil Di Tambahkan!
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>');
            redirect('siswa');
        }
    }

    public function _rules(){
        $this->form_validation->set_rules('nama_siswa', 'Nama Siswa', 'required',array(
            'required' => '%s Harus di isi'
        ));
        $this->form_validation->set_rules('kelas_siswa', 'Kelas Siswa', 'required',array(
            'required' => '%s Harus di isi'
        ));
        $this->form_validation->set_rules('alamat_siswa', 'alamat Siswa', 'required', array(
            'required' => '%s Harus di isi'
        ));
        $this->form_validation->set_rules('no_telepon', 'Nomor Telepon', 'required', array(
            'required' => '%s Harus di isi'
        ));
    }
    public function update_aksi()
    {

       
            $id = $this->input->post('kode');
            $data = array(
                'nama' => $this->input->post('xnama'),
                'nim' => $this->input->post('xnim'),
                'tanggal_lahir' => $this->input->post('xtglLahir'),
                'jenis_kelamin' => $this->input->post('xjenkel'),
            );
            $where = array('id' => $id);
            $this->Siswa_Model->proses_update($where, $data, 'tb_mahasiswa');
            $this->session->set_flashdata('pesan', '<div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Berhasil Di Ubah!
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>');
            redirect('siswa');
        }
        function excel(){
        $data['siswa'] = $this->Siswa_Model->get_data('tb_mahasiswa')->result();
        $this->load->view('laporan_excel', $data);
        }
    }
   
