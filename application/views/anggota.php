<div class="page-header">
  <h3>Data Anggota</h3>
</div>
<br><br>
<div class="table-responsive">
  <table class="table table-bordered table-striped table-hover" id = "table-datatable">
    <thead>
      <tr>
        <th>No</th>
        <th>Nama Anggota</th>
        <th>Gender</th>
        <th>No.Telpon</th>
        <th>Alamat</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      <?php
      $no = 1;
      foreach ($anggota as $a) {
      ?>
      <tr>
        <td><?php echo $no++; ?></td>
        <td><?php echo $a->nama_anggota ?></td>
        <td><?php echo $a->gender ?></td>
        <td><?php echo $a->no_telp ?></td>
        <td><?php echo $a->alamat ?></td>
        <td><?php echo $a->email ?></td>
        <td nowrap="nowrap">
        </td>
      </tr>
    <?php } ?>
  </tbody>
</table>
</div>
