<div class="content-wrapper">
    
    <section class="content">
        <div class="box box-warning box-solid">
            <div class="box-header with-border">
                <h3 class="box-title">INPUT DATA TBL_UJIAN</h3>
            </div>
            <form action="<?php echo $action; ?>" method="post">
            
<table class='table table-bordered>'        

	    <tr><td width='200'>Id Soal <?php echo form_error('id_soal') ?></td><td><input type="text" class="form-control" name="id_soal" id="id_soal" placeholder="Id Soal" value="<?php echo $id_soal; ?>" /></td></tr>
	    <tr><td width='200'>Id Mahasiswa <?php echo form_error('id_mahasiswa') ?></td><td><input type="text" class="form-control" name="id_mahasiswa" id="id_mahasiswa" placeholder="Id Mahasiswa" value="<?php echo $id_mahasiswa; ?>" /></td></tr>
	    <tr><td width='200'>Nilai <?php echo form_error('nilai') ?></td><td><input type="text" class="form-control" name="nilai" id="nilai" placeholder="Nilai" value="<?php echo $nilai; ?>" /></td></tr>
	    <tr><td width='200'>Status <?php echo form_error('status') ?></td><td><input type="text" class="form-control" name="status" id="status" placeholder="Status" value="<?php echo $status; ?>" /></td></tr>
	    <tr><td></td><td><input type="hidden" name="id_ujian" value="<?php echo $id_ujian; ?>" /> 
	    <button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('ujian') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> Kembali</a></td></tr>
	</table></form>        </div>
</div>
</div>