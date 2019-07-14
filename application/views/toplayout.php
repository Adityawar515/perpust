<nav class="navbar navbar-default">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
	  <?=anchor('member', 'Perpustakaan', ['class'=>'navbar-brand'])?>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

      <ul class="nav navbar-nav navbar-right">
		<li><?php echo anchor('member', 'Home');?></li>
        <li>
			<?php
				$text_cart_url  = '<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>';

				$text_cart_url .= ' Booking Cart: '. $this->M_perpus->edit_data(array('id_anggota'=>$this->session->userdata('id_agt')),'transaksi')->num_rows() .' Buku';
			?>
			<?=anchor('peminjaman/lihat_keranjang', $text_cart_url)?>
		</li>	
		<?php if($this->session->userdata('id_agt')) { ?>
			<li><?php echo anchor('admin/logout', 'Logout');?></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" ariaexpanded="false"><?php echo "Hai,<b>".$this->session->userdata('nama_agt');?></b><span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="<?php echo base_url().'member/ganti_password_member' ?>"><i class="glyphicon glyphicon-lock"></i>Ganti Password</a></li>
		<?php } else { ?>
			<li><?php echo anchor('welcome', 'Login');?></li>
		<?php } ?>
      </ul>

    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
