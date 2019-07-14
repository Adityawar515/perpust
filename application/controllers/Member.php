<?php
defined('BASEPATH') or exit ('NO Direct Script Access Allowed');

class Member extends CI_Controller{
	function __construct(){
		parent::__construct();
		// cek login
		//if($this->session->userdata('status') != "login"){
		//	$alert=$this->session->set_flashdata('alert', 'Anda belum Login');
		//	redirect(base_url());
		//}
	}

	function index(){
		$data['anggota'] = $this->M_perpus->get_data('anggota')->result();
		//$data['buku'] = $this->M_perpus->get_data('buku')->result();
		$data['header'] = 'Katalog Buku ABC';
		
		//Pagination
		$jumlah_data = $this->M_perpus->jumlah_data('buku');
		$this->load->library('pagination');
		$config['base_url'] = base_url().'index.php/member/index/';
		$config['total_rows'] = $jumlah_data;
		$config['per_page'] = 8;
		$from = $this->uri->segment(3);//ngambil dari url segment ke 3
		$this->pagination->initialize($config);		
		$data['buku'] = $this->M_perpus->data('buku', $config['per_page'],$from);
		
		//akhir pagination
		
		$this->load->view('daftarbuku', $data);
	}

	function ganti_password_member(){
    $this->load->view('desain');
    $this->load->view('toplayout');
    $this->load->view('ganti_password');
  }
function update(){
	$id_anggota = $this->input->post('id_anggota');
	$password = $this->input->post('password');
	$data = array(
		'password' => $password,
	);

	$where = array(
		'id_anggota' => $id_anggota
	);

      $this->M_perpus->update_data('anggota',$data,$where);
      redirect(base_url().'member/ganti_password_member?pesan=berhasil');
    }

	function tambah_anggota(){
	  $this->load->view('desain');
      $this->load->view('toplayout');
      $this->load->view('tambahanggota');
    }
    function tambah_anggota_act(){
      $username = $this->input->post('username');
      $nama_anggota = $this->input->post('nama_anggota');
      $gender = $this->input->post('gender');
      $no_telp = $this->input->post('no_telp');
      $alamat = $this->input->post('alamat');
      $email = $this->input->post('email');
      $password = $this->input->post('password');
      $this->form_validation->set_rules('nama_anggota','Nama Anggota','required');
      $this->form_validation->set_rules('no_telp','No.Telpon','required');
      $this->form_validation->set_rules('alamat','Alamat','required');
      $this->form_validation->set_rules('email','Email','required');
      $this->form_validation->set_rules('password','Password','required');
      if($this->form_validation->run() != false){
          $data = array(
          	'username' => $username,
            'nama_anggota' => $nama_anggota,
            'gender' => $gender,
            'no_telp' => $no_telp,
            'alamat' => $alamat,
            'email' => $email,
            'password' => $password,
          );
          $this->M_perpus->insert_data($data,'anggota');
          redirect(base_url().'welcome');
           }else{
          $this->load->view('desain');
          $this->load->view('toplayout');
          $this->load->view('tambahanggota');
        }
      }
}
