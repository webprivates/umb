<!doctype html>
<html>
    <head>
        <title>harviacode.com - codeigniter crud generator</title>
        <link rel="stylesheet" href="<?php echo base_url('assets/bootstrap/css/bootstrap.min.css') ?>"/>
        <style>
            body{
                padding: 15px;
            }
        </style>
    </head>
    <body>
        <h2 style="margin-top:0px">Tampilan Panitia</h2>
        <table class="table">
	    <tr><td>Nama Panitia</td><td><?php echo $nama_panitia; ?></td></tr>
	    <tr><td>Username</td><td><?php echo $username; ?></td></tr>
	    <tr><td>Password</td><td><?php echo $password; ?></td></tr>
        <tr>
            <td>
                <?php 
                if ($panitia->status == 1) {
                    echo "AKTIF";
                }else{
                    echo "TIDAK AKTIF";
                    }
                 ?>         
                
            </td>
        </tr>
	    <!-- <tr><td>Status</td><td><?php echo $status; ?></td></tr> -->
	    <tr><td></td><td><a href="<?php echo site_url('panitia') ?>" class="btn btn-default">Kembali</a></td></tr>
	</table>
        </body>
</html>