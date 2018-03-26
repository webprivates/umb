<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Ujian extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        //is_login();
        $this->load->model('Ujian_model');
        $this->load->model('Mahasiswa_model');
        $this->load->model('Panitia_model');
        $this->load->model('Matauji_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . 'ujian?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'ujian?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'ujian';
            $config['first_url'] = base_url() . 'ujian';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Ujian_model->total_rows($q);
        $ujian = $this->Ujian_model->get_limit_data($config['per_page'], $start, $q);
        $ujian = $this->Ujian_model->peserta($config['per_page'], $start, $q);
        $ujian = $this->Ujian_model->panitia($config['per_page'], $start, $q);
        $ujian = $this->Ujian_model->batch($config['per_page'], $start, $q);
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'ujian_data' => $ujian,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','ujian/tbl_ujian_list', $data);
    }

    public function read($id) 
    {
        $row = $this->Ujian_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id_ujian' => $row->id_ujian,
		'id_peserta' => $row->id_peserta,
		'id_panitia' => $row->id_panitia,
		'id_batch' => $row->id_batch,
		'jumlah_salah' => $row->jumlah_salah,
		'jumlah_benar' => $row->jumlah_benar,
		'nilai' => $row->nilai,
		'status' => $row->status,
	    );
            $this->template->load('template','ujian/tbl_ujian_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('ujian'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'peserta_data' => $this->Peserta_model->get_all(),
            'panitia_data' => $this->Panitia_model->get_all(),
            'batch_data' => $this->Batch_model->get_all(),
            'action' => site_url('ujian/create_action'),

	    'id_ujian' => set_value('id_ujian'),
	    'id_peserta' => set_value('id_peserta'),
	    'id_panitia' => set_value('id_panitia'),
	    'id_batch' => set_value('id_batch'),
	    'jumlah_salah' => set_value('jumlah_salah'),
	    'jumlah_benar' => set_value('jumlah_benar'),
	    'nilai' => set_value('nilai'),
	    'status' => set_value('status'),
	);
        $this->template->load('template','ujian/tbl_ujian_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'id_peserta' => $this->input->post('id_peserta',TRUE),
		'id_panitia' => $this->input->post('id_panitia',TRUE),
		'id_batch' => $this->input->post('id_batch',TRUE),
		'jumlah_salah' => $this->input->post('jumlah_salah',TRUE),
		'jumlah_benar' => $this->input->post('jumlah_benar',TRUE),
		'nilai' => $this->input->post('nilai',TRUE),
		'status' => $this->input->post('status',TRUE),
	    );

            $this->Ujian_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('ujian'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Ujian_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'peserta_data' => $this->Peserta_model->get_all(),
                'panitia_data' => $this->Panitia_model->get_all(),
                'batch_data' => $this->Batch_model->get_all(),
                'action' => site_url('ujian/update_action'),
		'id_ujian' => set_value('id_ujian', $row->id_ujian),
		'id_peserta' => set_value('id_peserta', $row->id_peserta),
		'id_panitia' => set_value('id_panitia', $row->id_panitia),
		'id_batch' => set_value('id_batch', $row->id_batch),
		'jumlah_salah' => set_value('jumlah_salah', $row->jumlah_salah),
		'jumlah_benar' => set_value('jumlah_benar', $row->jumlah_benar),
		'nilai' => set_value('nilai', $row->nilai),
		'status' => set_value('status', $row->status),
	    );
            $this->template->load('template','ujian/tbl_ujian_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('ujian'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_ujian', TRUE));
        } else {
            $data = array(
		'id_peserta' => $this->input->post('id_peserta',TRUE),
		'id_panitia' => $this->input->post('id_panitia',TRUE),
		'id_batch' => $this->input->post('id_batch',TRUE),
		'jumlah_salah' => $this->input->post('jumlah_salah',TRUE),
		'jumlah_benar' => $this->input->post('jumlah_benar',TRUE),
		'nilai' => $this->input->post('nilai',TRUE),
		'status' => $this->input->post('status',TRUE),
	    );

            $this->Ujian_model->update($this->input->post('id_ujian', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('ujian'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Ujian_model->get_by_id($id);

        if ($row) {
            $this->Ujian_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('ujian'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('ujian'));
        }
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('id_peserta', 'id peserta', 'trim|required');
	$this->form_validation->set_rules('id_panitia', 'id panitia', 'trim|required');
	$this->form_validation->set_rules('id_batch', 'id batch', 'trim|required');
	$this->form_validation->set_rules('jumlah_salah', 'jumlah salah', 'trim|required');
	$this->form_validation->set_rules('jumlah_benar', 'jumlah benar', 'trim|required');
	$this->form_validation->set_rules('nilai', 'nilai', 'trim|required');
	$this->form_validation->set_rules('status', 'status', 'trim|required');

	$this->form_validation->set_rules('id_ujian', 'id_ujian', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

}

/* End of file Ujian.php */
/* Location: ./application/controllers/Ujian.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2018-03-26 11:30:08 */
/* http://harviacode.com */