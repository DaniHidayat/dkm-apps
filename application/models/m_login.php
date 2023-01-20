<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_login extends CI_Model {

	function cek_login($table,$where){
		return $this->db->get_where($table,$where);
	}
	
	function input($data,$table){
        $this->db->insert($table,$data);
    }

    function update($where,$data,$table){
        $this->db->where($where);
        $this->db->update($table,$data);
    }

}

/* End of file M_login.php */
/* Location: ./application/models/M_login.php */