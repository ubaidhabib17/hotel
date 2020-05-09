<div class="page-bar">
    <ul class="page-breadcrumb">
        <li>
            <i class="fa fa-home"></i>
            <a href="<?php echo base_url();?>sistem/home">Home</a>
            <i class="fa fa-angle-right"></i>
        </li>
        <li>
            <a href="<?php echo base_url();?>sistem/user_group">USER GROUP</a>
        </li>
    </ul>
</div>

<div class="portlet box green">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-gift"></i>Edit USER GROUP
        </div>
    </div>
    <div class="portlet-body form">
        <?php echo form_open('sistem/user_group_update/','class="form-horizontal"');?>
        <div class="form-body">
            <h3 class="form-section"></h3>
            <div class="row">
                <input type="hidden" name="id_user_group" value="<?php echo $id_user_group;?>" >
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label col-md-3">USER GROUP</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" placeholder="" name="nama_user_group" value="<?php echo $nama_user_group;?>">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-actions">
            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-offset-3 col-md-9">
                            <button type="submit" class="btn green">Update</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                </div>
            </div>
        </div>
        <?php echo form_close();?>
    </div>
</div>