public function register()
    {
      $site = $this->Konfigurasi_model->listing();
      $data = array(
          'title'     => 'Register | '.$site['nama_website'],
          'favicon'   => $site['favicon'],
          'site'      => $site
      );
      $this->template->load('authentication/layout/template','authentication/register',$data);
    }