<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Soal_model extends CI_Model
{

    public $table = 'tbl_soal';
    public $id = 'id_soal';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

        function matauji($limit, $start = 0, $q = NULL)
        {
            $query = ('SELECT
                        tbl_soal.id_soal,
                        tbl_soal.id_matauji,
                        tbl_soal.pertanyaan,
                        tbl_soal.pilihan_a,
                        tbl_soal.pilihan_b,
                        tbl_soal.pilihan_c,
                        tbl_soal.pilihan_d,
                        tbl_soal.pilihan_e,
                        tbl_soal.jawaban,
                        tbl_matauji.id_matauji,
                        tbl_matauji.nama_matauji,
                        tbl_matauji.aktif
                        FROM
                        tbl_matauji
                        INNER JOIN tbl_soal ON tbl_matauji.id_matauji = tbl_soal.id_matauji');
            return $this->db->query($query);
        }

    // get all
    function get_all()
    {
        $this->db->order_by($this->id, $this->order);
        return $this->db->get($this->table)->result();
    }

    // get data by id
    function get_by_id($id)
    {
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }
    
    // get total rows
    function total_rows($q = NULL) {
        $this->db->like('id_soal', $q);
	$this->db->or_like('id_matauji', $q);
	$this->db->or_like('pertanyaan', $q);
	$this->db->or_like('pilihan_a', $q);
	$this->db->or_like('pilihan_b', $q);
	$this->db->or_like('pilihan_c', $q);
	$this->db->or_like('pilihan_d', $q);
    $this->db->or_like('pilihan_e', $q);
	$this->db->or_like('jawaban', $q);
	$this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
        $this->db->order_by($this->id, $this->order);
        $this->db->like('id_soal', $q);
    $this->db->or_like('id_matauji', $q);
	$this->db->or_like('pertanyaan', $q);
	$this->db->or_like('pilihan_a', $q);
	$this->db->or_like('pilihan_b', $q);
	$this->db->or_like('pilihan_c', $q);
	$this->db->or_like('pilihan_d', $q);
    $this->db->or_like('pilihan_e', $q);
	$this->db->or_like('jawaban', $q);
	$this->db->limit($limit, $start);
        return $this->db->get($this->table)->result();
    }

    // insert data
    function insert($data)
    {
        $this->db->insert($this->table, $data);
    }

    // update data
    function update($id, $data)
    {
        $this->db->where($this->id, $id);
        $this->db->update($this->table, $data);
    }

    // delete data
    function delete($id)
    {
        $this->db->where($this->id, $id);
        $this->db->delete($this->table);
    }

}

/* End of file Soal_model.php */
/* Location: ./application/models/Soal_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2018-02-20 12:22:30 */
/* http://harviacode.com */