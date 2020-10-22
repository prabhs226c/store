<?php include(ADMIN_INCLUDE_PATH . '/header.php'); ?>
<?php include(ADMIN_INCLUDE_PATH . '/sidebar.php'); ?>
<div class="content-wrap">
    <div class="main">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 p-0">
                    <div class="page-header">
                        <div class="page-title">
                            <h1><?=$this->lang->line('orders')?></h1>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 p-0">
                    <div class="page-header">
                        <div class="page-title">
                            <ol class="breadcrumb text-right">
                                <li><a href="<?= DASHBOARD_PATH ?>"><?=$this->lang->line('dashboard')?></a></li>
                                <li><a class="active" href="javascript:void(0)"><?=$this->lang->line('order_list')?></a></li>
                                
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-content">
                <?php if (isset($success_message) && $success_message != '') {  ?>

                    <div class="alert alert-info alert-dismissable">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong><?=$this->lang->line('success')?>!</strong> <?php echo isset($success_message) ? $success_message : $this->session->flashdata('invalid'); ?>
                    </div>

                <?php  } ?>

                <?php if (isset($error_message) && $error_message != '') {  ?>

                <div class="alert alert-info alert-dismissable">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong><?=$this->lang->line('error')?>!</strong> <?php echo isset($error_message) ? $error_message : $this->session->flashdata('invalid'); ?>
                </div>

                <?php } ?>

                
                <div class="row">
                    <div class="col-lg-12">

                        <div class="card alert">


                            <div class="bootstrap-data-table-panel">
                                <table id="bootstrap-data-table-export" class="table table-striped table-bordered">

                                    <thead>
                                        <tr>
                                            <th>#</th>

                                            <th><?=$this->lang->line('order_id')?></th>
                                            <th><?=$this->lang->line('customer_name')?></th>
                                            <th><?=$this->lang->line('order_status')?></th>
                                            <th><?=$this->lang->line('grand_total')?></th>
                                            <th><?=$this->lang->line('tip')?></th>
                                            <th><?=$this->lang->line('order_date')?></th>
                                            <th><?=$this->lang->line('action')?></th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php

                                        if (!empty($results)) {

                                            $html = '';

                                            foreach ($results as $single) { ?>
                                                <tr>
                                                    <td><input type='checkbox' name='checked_id' id='checkbox1' class='checkbox' value='<?= $single['id'] ?>' <?=$single['order_status']==1?"":"disabled"?> /></td>
                                                    <td><?=$single['id'] ?></td>
                                                    <td><?= urldecode($single['user_name']) ?></td>
                                                    
                                                    <td><?= $controller->getOrderStatus($single['order_status']) ?></td>
                                                    <td>$<?= $single['total_price'] ?></td>
                                                    <td><?= $single['tip_price'] ?></td>
                                                    <td><?= date('d-m-Y h:i a', strtotime($single['created'])) ?></td>
                                                    <td>&nbsp;&nbsp;<a class="ti-eye" data-toggle="tooltip" style="color: #00c0ef;" title="<?=$this->lang->line('view')?>!" href="<?= ORDER_PATH ?>/view/<?= $single['id'] ?>"></a>&nbsp;&nbsp;<a href="javascript:void(0)" class="ti-trash" style="color:red" data-toggle="tooltip" title="<?=$this->lang->line('delete')?>!" onclick="delete_status('<?= ORDER_PATH ?>/delete', '<?= $single['id'] ?>')"></a>&nbsp;&nbsp;</td>
                                                </tr>
                                        <?php

                                            }
                                        }
                                        ?>




                                    </tbody>
                                </table>
                            </div>
                        </div><!-- /# card -->
                    </div><!-- /# column -->
                </div><!-- /# row -->
                
            </div><!-- /# main content -->
        </div><!-- /# container-fluid -->
    </div><!-- /# main -->
</div><!-- /# content wrap -->

<?php include(ADMIN_INCLUDE_PATH . '/footer.php'); ?>
<script type="text/javascript">
    $(document).on('change', '.change_state', function() {
        var order_id= $(this).attr('data-id');
        var driver_id= $(this).val();
        $.ajax({
                type:"POST",
                url:"<?=ORDER_PATH?>/assign_driver",
                data:{'order_id':order_id, 'driver_id': driver_id},
                success: function(data) {
                    window.location.reload();
                }
            }); 
        
    });

</script>
<?php include(ADMIN_INCLUDE_PATH . '/close.php'); ?>
