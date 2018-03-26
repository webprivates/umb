<div class="content-wrapper">
    
    <section class="content">
        <div class="box box-warning box-solid">
            <div class="box-header with-border">
                <h3 class="box-title">INPUT DATA PANITIA</h3>
            </div>
            <form action="<?php echo $action; ?>" method="post">
            
<table class='table table-bordered>'        

	    <tr><td width='200'>Nama Panitia <?php echo form_error('nama_panitia') ?></td><td><input type="text" class="form-control" name="nama_panitia" id="nama_panitia" placeholder="Nama Panitia" value="<?php echo $nama_panitia; ?>" /></td></tr>
	    <tr><td width='200'>Username <?php echo form_error('username') ?></td><td><input type="text" class="form-control" name="username" id="username" placeholder="Username" value="<?php echo $username; ?>" /></td></tr>
	    <tr><td width='200'>Password <?php echo form_error('password') ?></td><td><input type="text" class="form-control" name="password" id="password" placeholder="Password" value="<?php echo $password; ?>" /></td></tr>
	     <tr><td width='200'>Status Aktif <?php echo form_error('status') ?></td><td>
         <?php echo form_dropdown('status', array('1' => 'AKTIF', '0' => 'TIDAK AKTIF'), $status, array('class' => 'form-control')); ?></td></tr>
	    <!-- <tr><td width='200'>Status <?php echo form_error('status') ?></td><td><input type="text" class="form-control" name="status" id="status" placeholder="Status" value="<?php echo $status; ?>" /></td></tr> -->
	    <tr><td></td><td><input type="hidden" name="id_panitia" value="<?php echo $id_panitia; ?>" /> 
	    <button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('panitia') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> Kembali</a></td></tr>
	</table></form>        </div>
</div>
</div>