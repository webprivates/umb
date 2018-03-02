<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Soal extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        //is_login();
        $this->load->model('Soal_model');
        $this->load->model('Matauji_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . 'soal?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'soal?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'soal';
            $config['first_url'] = base_url() . 'soal';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Soal_model->total_rows($q);
        $soal = $this->Soal_model->matauji($config['per_page'], $start, $q);

        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'soal_data' => $soal,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','soal/tbl_soal_list', $data);
    }

    public function read($id) 
    {
        $row = $this->Soal_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id_soal' => $row->id_soal,
		'id_matauji' => $row->id_matauji,
		'pertanyaan' => $row->pertanyaan,
		'pilihan_a' => $row->pilihan_a,
		'pilihan_b' => $row->pilihan_b,
		'pilihan_c' => $row->pilihan_c,
		'pilihan_d' => $row->pilihan_d,
		'pilihan_e' => $row->pilihan_e,
        'jawaban' => $row->jawaban,
	    );
            $this->template->load('template','soal/tbl_soal_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('soal'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'matauji_data' => $this->Matauji_model->get_all(),
            'action' => site_url('soal/create_action'),
	    'id_soal' => set_value('id_soal'),
	    'id_matauji' => set_value('id_matauji'),
	    'pertanyaan' => set_value('pertanyaan'),
	    'pilihan_a' => set_value('pilihan_a'),
	    'pilihan_b' => set_value('pilihan_b'),
	    'pilihan_c' => set_value('pilihan_c'),
	    'pilihan_d' => set_value('pilihan_d'),
	    'pilihan_e' => set_value('pilihan_e'),
        'jawaban' => set_value('jawaban'),
	);
        $this->template->load('template','soal/tbl_soal_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'id_matauji' => $this->input->post('id_matauji',TRUE),
		'pertanyaan' => $this->input->post('pertanyaan',TRUE),
		'pilihan_a' => $this->input->post('pilihan_a',TRUE),
		'pilihan_b' => $this->input->post('pilihan_b',TRUE),
		'pilihan_c' => $this->input->post('pilihan_c',TRUE),
		'pilihan_d' => $this->input->post('pilihan_d',TRUE),
        'pilihan_e' => $this->input->post('pilihan_e',TRUE),
		'jawaban' => $this->input->post('jawaban',TRUE),
	    );

            $this->Soal_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('soal'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Soal_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('soal/update_action'),
                'matauji_data' => $row->id_matauji,
                'soal_data' => $this->Soal_model->get_by_id($id),

		'id_soal' => set_value('id_soal', $row->id_soal),
        'id_matauji' => set_value('id_matauji', $row->id_matauji),
		'pertanyaan' => set_value('pertanyaan', $row->pertanyaan),
		'pilihan_a' => set_value('pilihan_a', $row->pilihan_a),
		'pilihan_b' => set_value('pilihan_b', $row->pilihan_b),
		'pilihan_c' => set_value('pilihan_c', $row->pilihan_c),
		'pilihan_d' => set_value('pilihan_d', $row->pilihan_d),
        'pilihan_e' => set_value('pilihan_e', $row->pilihan_e),
		'jawaban' => set_value('jawaban', $row->jawaban),
	    );
            $this->template->load('template','soal/tbl_soal_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('soal'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_soal', TRUE));
        } else {
            $data = array(
		'id_matauji' => $this->input->post('id_matauji',TRUE),
		'pertanyaan' => $this->input->post('pertanyaan',TRUE),
		'pilihan_a' => $this->input->post('pilihan_a',TRUE),
		'pilihan_b' => $this->input->post('pilihan_b',TRUE),
		'pilihan_c' => $this->input->post('pilihan_c',TRUE),
		'pilihan_d' => $this->input->post('pilihan_d',TRUE),
        'pilihan_e' => $this->input->post('pilihan_e',TRUE),
		'jawaban' => $this->input->post('jawaban',TRUE),
	    );

            $this->Soal_model->update($this->input->post('id_soal', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('soal'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Soal_model->get_by_id($id);

        if ($row) {
            $this->Soal_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('soal'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('soal'));
        }
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('id_matauji', 'id matauji', 'trim|required');
	$this->form_validation->set_rules('pertanyaan', 'pertanyaan', 'trim|required');
	$this->form_validation->set_rules('pilihan_a', 'pilihan a', 'trim|required');
	$this->form_validation->set_rules('pilihan_b', 'pilihan b', 'trim|required');
	$this->form_validation->set_rules('pilihan_c', 'pilihan c', 'trim|required');
	$this->form_validation->set_rules('pilihan_d', 'pilihan d', 'trim|required');
	$this->form_validation->set_rules('pilihan_e', 'pilihan e', 'trim|required');

	$this->form_validation->set_rules('id_soal', 'id_soal', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

}

/* End of file Soal.php */
/* Location: ./application/controllers/Soal.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2018-02-20 12:22:30 */
/* http://harviacode.com */