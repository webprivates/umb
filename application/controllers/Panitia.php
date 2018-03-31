<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Panitia extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Panitia_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->uri->segment(3));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . '.php/c_url/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/panitia/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/panitia/index/';
            $config['first_url'] = base_url() . 'index.php/panitia/index/';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Panitia_model->total_rows($q);
        $panitia = $this->Panitia_model->get_limit_data($config['per_page'], $start, $q);
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'panitia_data' => $panitia,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','panitia/tbl_panitia_list', $data);
    }

    public function read($id) 
    {
        $row = $this->Panitia_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id_panitia' => $row->id_panitia,
		'nama_panitia' => $row->nama_panitia,
		'id_batch' => $row->id_batch,
		'username' => $row->username,
		'password' => $row->password,
		'status' => $row->status,
	    );
            $this->template->load('template','panitia/tbl_panitia_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('panitia'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('panitia/create_action'),
	    'id_panitia' => set_value('id_panitia'),
	    'nama_panitia' => set_value('nama_panitia'),
	    'id_batch' => set_value('id_batch'),
	    'username' => set_value('username'),
	    'password' => set_value('password'),
	    'status' => set_value('status'),
	);
        $this->template->load('template','panitia/tbl_panitia_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'nama_panitia' => $this->input->post('nama_panitia',TRUE),
		'id_batch' => $this->input->post('id_batch',TRUE),
		'username' => $this->input->post('username',TRUE),
		'password' => $this->input->post('password',TRUE),
		'status' => $this->input->post('status',TRUE),
	    );

            $this->Panitia_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('panitia'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Panitia_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('panitia/update_action'),
		'id_panitia' => set_value('id_panitia', $row->id_panitia),
		'nama_panitia' => set_value('nama_panitia', $row->nama_panitia),
		'id_batch' => set_value('id_batch', $row->id_batch),
		'username' => set_value('username', $row->username),
		'password' => set_value('password', $row->password),
		'status' => set_value('status', $row->status),
	    );
            $this->template->load('template','panitia/tbl_panitia_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('panitia'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_panitia', TRUE));
        } else {
            $data = array(
		'nama_panitia' => $this->input->post('nama_panitia',TRUE),
		'id_batch' => $this->input->post('id_batch',TRUE),
		'username' => $this->input->post('username',TRUE),
		'password' => $this->input->post('password',TRUE),
		'status' => $this->input->post('status',TRUE),
	    );

            $this->Panitia_model->update($this->input->post('id_panitia', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('panitia'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Panitia_model->get_by_id($id);

        if ($row) {
            $this->Panitia_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('panitia'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('panitia'));
        }
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('nama_panitia', 'nama panitia', 'trim|required');
	$this->form_validation->set_rules('id_batch', 'id batch', 'trim|required');
	$this->form_validation->set_rules('username', 'username', 'trim|required');
	$this->form_validation->set_rules('password', 'password', 'trim|required');
	$this->form_validation->set_rules('status', 'status', 'trim|required');

	$this->form_validation->set_rules('id_panitia', 'id_panitia', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

}

/* End of file Panitia.php */
/* Location: ./application/controllers/Panitia.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2018-03-31 16:08:59 */
/* http://harviacode.com */