<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel System</title>
    <meta content="" name="description"/>
    <meta content="" name="author"/>

    <link rel="stylesheet" href="<?php echo base_url();?>asset/global/plugins/font-awesome/css/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href="<?php echo base_url();?>asset/global/plugins/simple-line-icons/simple-line-icons.min.css" type="text/css"/>
    <link rel="stylesheet" href="<?php echo base_url();?>asset/global/plugins/bootstrap/css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="<?php echo base_url();?>asset/global/plugins/uniform/css/uniform.default.css" type="text/css"/>
    <link rel="stylesheet" href="<?php echo base_url();?>asset/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" type="text/css"/>

    <link rel="stylesheet" href="<?php echo base_url();?>asset/global/plugins/select2/select2.css" type="text/css"/>
    <link rel="stylesheet" href="<?php echo base_url();?>asset/admin/pages/css/login-soft.css" type="text/css"/>
    
    
    <link rel="stylesheet" href="<?php echo base_url();?>asset/global/css/components.css" type="text/css"/>
    <link rel="stylesheet" href="<?php echo base_url();?>asset/global/css/plugin.css" type="text/css"/>
    <link rel="stylesheet" href="<?php echo base_url();?>asset/admin/layout/css/layout.css" type="text/css"/>
    <link id="style_color" rel="stylesheet" href="<?php echo base_url();?>asset/admin/layout/css/themes/default.css" type="text/css"/>
    <link rel="stylesheet" href="<?php echo base_url();?>asset/admin/layout/css/custom.css" type="text/css"/>
</head>
<body class="login">

<div class=login>
    <div class="logo">
        <a href="<?php echo base_url();?>sistem">
            <?php
            foreach($tentang_kami->result_array() as $value){
                $logo = $value['logo'];
            }
            ?>
        <img src="<?php echo base_url();?>images/tentang_kami/<?php echo $logo;?>"alt="">
        </a>
    </div>
    <div class="menu-toogler sidebar-toogler">
    </div>

    <div class="content">
        <?php if(validation_errors()){?>
            <div class="alert alert-danger">
                <span>Username atau Password Kosong</span>
            </div>
            <?php } ?>
        
            <?php echo form_open('sistem/login','class="login-from"');?>

                <?php
                            if($this->session->flashdata('error')){
                        echo "<div class='alert alert-danger'>
                            <button class='close' data-closer='alert'></button>
                            <span>
                                Username atau password Salah!, 
                            </span>
                            </div>";
                            }



                        ?>
                <div class="form-group">
                    <label class="control-label visible-ie8 visible-ie9">Username</label>
                    <div class="input-icon">
                        <i class="fa fa-user"></i>
                        <input type="text" class="form-control placeholder-no-fix" autocomplete="off" placeholder="Username" name="username_user"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label visible-ie8 visible-ie9 ">Password</label>
                    <div class="input-icon">
                        <i class="fa fa-lock"></i>
                        <input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="Password" name="password_user"/>
                    </div>
                </div>
                <div class="form-actions" >

                    <button type="submit" class="btn blue pull-right">
                        Login <i class="m-icon-swapright m-icon-white"></i>
                    </button>
                </div>

                <?php echo form_close();?>
    </div>
    <div class="copyright">
        2020 &copy; Hotel System.
    </div>

    <script src="<?php echo base_url();?>asset/global/plugins/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script src="<?php echo base_url();?>asset/global/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
    
    <script src="<?php echo base_url();?>asset/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
    <script src="<?php echo base_url();?>asset/global/plugins/bootstrap/bootstrap.min.js" type="text/javascript"></script>
    <script src="<?php echo base_url();?>asset/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>    </div>
    <script src="<?php echo base_url();?>asset/global/plugins/jquery-slimscrool/jquery.slimscrool.min.js" type="text/javascript"></script>
    <script src="<?php echo base_url();?>asset/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
    <script src="<?php echo base_url();?>asset/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
    <script src="<?php echo base_url();?>asset/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
    <script src="<?php echo base_url();?>asset/global/plugins/bootstrap-switch/js/bootsrtap-switch.min.js" type="text/javascript"></script>
    
    <script src="<?php echo base_url();?>asset/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
    <script src="<?php echo base_url();?>asset/global/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
    
    <script src="<?php echo base_url();?>asset/global/scripts/metronic.js" type="text/javascript"></script>
    <script src="<?php echo base_url();?>asset/admin/layout/scripts/layout.js" type="text/javascript"></script>
    <script src="<?php echo base_url();?>asset/admin/layout/scripts/quick-sidebar.js" type="text/javascript"></script>
    <script src="<?php echo base_url();?>asset/admin/layout/scripts/demo.js" type="text/javascript"></script>
    <script src="<?php echo base_url();?>asset/admin/pages/scripts/login-soft.js" type="text/javascript"></script>
    <script>
    jQuery(document).ready(function){
        Metronic.init();
    Layout.init();
    QuickSidebar.init();
    Demo.init();
     Login.init();
    });
    </script>
</body>
</html>