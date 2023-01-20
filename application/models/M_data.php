<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_data extends CI_Model {

// MODEL UNTUK CRUD

  function get_one_table($table){
    $query = $this->db->get_where($table);   
    return $query->result();
  }

  function get_where_table($where,$table){
    $query = $this->db->get_where($table,$where);   
    return $query->result();
  }

  function hapus_data($where,$table){
    $this->db->where($where);
    $this->db->delete($table);
  }

  function update_data($where,$data,$table){
    $this->db->where($where);
    $this->db->update($table,$data);
  }

  function input_data($data,$table){
    $this->db->insert($table,$data);
  }

// akhir MODEL UNTUK CRUD



  function get_siswa_by_nis($nis){
    $hsl=$this->db->query("CALL get_siswa_by_nis('$nis')");
    return $hsl->result();
  }

  function get_siswa(){
    $hsl=$this->db->query("CALL get_siswa()");
    return $hsl->result();
  }

  function m_pembayaran($nisn){
    $hsl=$this->db->query("SELECT *, SUM( bulan_dibayar ) AS total_bulan FROM tbl_pembayaran WHERE nisn = '".$nisn."'");
    return $hsl;
  }

  function get_history_pembayaran()
  {
    $hsl=$this->db->query("CALL get_history_pembayaran");
    return $hsl->result();
  }

  function cek_nis($table,$where){
    return $this->db->get_where($table,$where);
  }

  function tampil_siswa_by_nis($where,$table){  
    $this->db->select('tbl_siswa.*, tbl_kelas.*, tbl_spp.*');
    $this->db->join('tbl_kelas', 'tbl_siswa.id_kelas = tbl_kelas.id_kelas');
    $this->db->join('tbl_spp', 'tbl_siswa.id_spp = tbl_spp.id_spp');

    $query = $this->db->get_where($table,$where);   
    return $query->result();
  }

  function get_laporan($tgl1,$tgl2){
    $hsl=$this->db->query("SELECT
                            *
                          FROM
                            tbl_pembayaran AS a
                            INNER JOIN tbl_siswa AS b ON a.nisn = b.nisn
                            INNER JOIN tbl_kelas AS c ON b.id_kelas = c.id_kelas 
                            INNER JOIN tbl_spp AS d ON a.id_spp = d.id_spp 
                          WHERE
                            tgl_bayar BETWEEN '$tgl1' AND '$tgl2' 
                          ORDER BY
                            a.tgl_bayar ASC, b.nis ASC;");
    return $hsl->result();
  }

  function get_sum_from_laporan($tgl1,$tgl2){
    $hsl=$this->db->query("SELECT
                            *, SUM(nominal) as jml_total
                          FROM
                            tbl_pembayaran AS a
                            INNER JOIN tbl_siswa AS b ON a.nisn = b.nisn
                            INNER JOIN tbl_kelas AS c ON b.id_kelas = c.id_kelas 
                            INNER JOIN tbl_spp AS d ON a.id_spp = d.id_spp 
                          WHERE
                            tgl_bayar BETWEEN '$tgl1' AND '$tgl2' 
                          ORDER BY
                            b.nis ASC;");
    return $hsl->result();
  }

  function transfer($ammount,$from,$to)
  {
    $sender = 'UPDATE accounts SET balance = balance - ? WHERE user_id = ? ';
    $receiver =  'UPDATE accounts SET balance = balance + ? WHERE user_id = ? ';

    $this->db->trans_start();
    $this->db->query($sender, array($ammount, $from));
    $this->db->query($receiver, array($ammount, $to));
    $this->db->trans_complete();

    if ($this->db->trans_status() === false)
    {
      echo $this->db->trans_status();
      echo "rollback!";
      $this->db->trans_rollback();
    }
    else
    {
      echo $this->db->trans_status();
      echo "commited!";
      $this->db->trans_commit();
    }
  }

  



  





// ///////////////////////////////////////////
  function transfer2($nominal,$from,$nisn)
  {
    $sender = 'UPDATE accounts SET balance = balance - ? WHERE user_id = ? ';
    $master =  'UPDATE tbl_siswa SET total = total - ? WHERE nisn = ? ';

    $this->db->trans_start();
    $this->db->query($sender, array($ammount, $from));
    $this->db->query($master, array($nominal, $nisn));
    $this->db->trans_complete();

    if ($this->db->trans_status() == false)
    {
      $this->db->trans_rollback();
    }
    elseif ($this->db->trans_status() == true)
    {
      $this->db->trans_commit();
    }
  }
// //////////////////////////////////////////






}

/* End of file M_data.php */
/* Location: ./application/models/M_data.php */