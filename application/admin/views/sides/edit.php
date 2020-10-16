<?php defined('BASEPATH') or exit('No direct script access allowed');
include(ADMIN_INCLUDE_PATH . '/header.php');
include(ADMIN_INCLUDE_PATH . '/sidebar.php');
?>
<div class="content-wrap">
    <div class="main">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 p-0">
                    <div class="page-header">
                        <div class="page-title">
                            <h1><?=$this->lang->line('sides')?></h1>
                        </div>
                    </div>
                </div><!-- /# column -->
                <div class="col-lg-4 p-0">
                    <div class="page-header">
                        <div class="page-title">
                            <ol class="breadcrumb text-right">
                                <li><a href="<?= DASHBOARD_PATH ?>"><?=$this->lang->line('dashboard')?></a></li>
                                <li><a href="<?= SIDES_PATH ?>"><?=$this->lang->line('sides_list')?></a></li>
                                <li><a href="javascrit:void(0)" class="active"><?=$this->lang->line('edit_sides')?></a></li>
                            </ol>
                        </div>
                    </div>
                </div><!-- /# column -->
            </div><!-- /# row -->

            <div class="main-content">
            <?php if (isset($error_message) && $error_message != '') {  ?>

                <div class="alert alert-info alert-dismissable">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong><?=$this->lang->line('error')?>!</strong> <?php echo isset($error_message) ? $error_message : $this->session->flashdata('invalid'); ?>
                </div>

            <?php } ?>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card alert">
                            
                            <div class="card-body">
                                <div class="menu-upload-form">

                                    <form class="form-horizontal" action="<?= SIDES_PATH ?>/edit/<?= $results->id ?>" method="post" accept-charset="utf-8" enctype="multipart/form-data" id="addSides">
                                    <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="col-sm-4 control-label"><?=$this->lang->line('restaurant')?>:</label>
                                                    <div class="col-sm-8">
                                                        <select class="form-control required" name="restaurant_id" id="restaurant_id">

                                                            <option value=""><?=$this->lang->line('select_restaurant')?></option>
                                                            <?php
                                                            foreach ($restaurants as $row) { ?>
                                                                <option <?= $row['id'] == $results->restaurant_id ? 'selected' : '' ?> value="<?= $row['id']; ?>"><?= urldecode($row['name']); ?></option>
                                                            <?php } ?>
                                                        </select>
                                                        <?= form_error('restaurant_id'); ?>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">

                                                <div class="form-group">
                                                    <label class="col-sm-4 control-label"><?=$this->lang->line('subcategory')?>:</label>
                                                    <div class="col-sm-8">
                                                        <select class="form-control required" name="subcategory_id" id="subcategory_id">

                                                            <option value=""><?=$this->lang->line('select_subcategory')?></option>
                                                            <?php
                                                            foreach ($foodcategory as $row) { ?>
                                                                <option <?= $row['id'] == $results->subcategory_id ? 'selected' : '' ?> value="<?= $row['id']; ?>"><?= urldecode($row['title']); ?></option>
                                                            <?php } ?>
                                                        </select>
                                                        <?= form_error('sides_id'); ?>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="col-sm-4 control-label"><?=$this->lang->line('title')?>:</label>
                                                    <div class="col-sm-8">
                                                        <input id="title" class="form-control required" type="text" name="title" value="<?=urldecode($results->title)?>" placeholder="<?=$this->lang->line('enter_title')?>">
                                                        <?= form_error('title'); ?>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label"><?=$this->lang->line('description')?>:</label>
                                                    <div class="col-sm-10">
                                                        <textarea id="description" class="form-control required" name="description" placeholder="<?=$this->lang->line('enter_description')?>"><?=urldecode($results->description)?></textarea>
                                                        <?= form_error('description'); ?>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label"><?=$this->lang->line('price')?>:</label>
                                                    <div class="col-sm-10">
                                                        <input id="price" class="form-control" type="number" name="price" placeholder="Enter price" value="<?=$results->price?>" required>
                                                        <?= form_error('price'); ?>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label"><?=$this->lang->line('image')?>:</label>
                                                    <div class="col-sm-10">
                                                        <div class="form-control file-input dark-browse-input-box">
                                                            <label for="inputFile-2">
                                                                <span class="btn btn-danger dark-input-button image-custom">

                                                                    <input type="file" name="image" id="inputFile-2" onchange="validateImage()">
                                                                    <i class="fa fa-file-archive-o"></i>
                                                                    <div class="row fileuploadvalid">
                                                                    </div>
                                                                </span>
                                                            </label>
                                                            <input class="file-name input-flat" type="text" readonly="readonly" placeholder="<?=$this->lang->line('upload_image')?>">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <div class="col-sm-offset-2 col-sm-10">
                                                        <button type="submit" class="btn btn-lg btn-primary"><?=$this->lang->line('update')?></button>
                                                        <button type="button" onclick="window.history.go(-1); return false;" class="btn btn-lg btn-danger"><?=$this->lang->line('cancel')?></button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                            
                                    </form>
                                </div>
                            </div>
                        </div><!-- /# card -->
                    </div><!-- /# column -->
                </div><!-- /# row -->
            </div><!-- /# main content -->
        </div><!-- /# container-fluid -->
    </div><!-- /# main -->
</div><!-- /# content wrap -->

<?php
include(ADMIN_INCLUDE_PATH . '/footer.php'); ?>
<script type="text/javascript">
    function validateImage() {
        var formData = new FormData();

        var file = document.getElementById("inputFile-2").files[0];


        formData.append("Filedata", file);
        var t = file.type.split('/').pop().toLowerCase();
        if (t != "jpeg" && t != "jpg" && t != "png" && t != "bmp" && t != "gif") {
            $('.fileuploadvalid').css("display", "block");
            $('.image-custom label').css("display", "none");

            $('.fileuploadvalid').text('Accepted extensions are jpg, jpeg, png, gif,bmp');
            $('.fileuploadvalid').css("position", "absolute");
            $('.fileuploadvalid').css("top", "32px");
            $('.fileuploadvalid').css("float", "left");
            $('.fileuploadvalid').css("left", "-550px");
            $('.fileuploadvalid').css("font-weight", "400");
            $('.fileuploadvalid').css("font-size", "14px");
            document.getElementById('inputFile-2').value = '';
            $('.file-name').val('');


            return false;



        } else {
            var x = document.getElementById("inputFile-2").value;
            $('.file-name').val(x);
            $('.fileuploadvalid').css("display", "none");
            $('.image-custom label').css("display", "none");
        }


        return true;
    }

</script>
<?php
include(ADMIN_INCLUDE_PATH . '/close.php');
?>