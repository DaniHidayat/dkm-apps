<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Siswa_Model extends CI_Model {

	
	public function get_data($table)
	{
        return $this->db->get($table);

	}
	public function insert_data($data,$table){
		$this->db->insert($table,$data);
	}
	function proses_update($kondisi, $data, $nm_table)
	{
		$this->db->where($kondisi);
		$this->db->update($nm_table, $data);
	}
}
