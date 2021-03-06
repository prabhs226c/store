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
                                <li><a href="<?= ORDER_PATH ?>"><?=$this->lang->line('order_list')?></a></li>
                                <li class="active"><?=$this->lang->line('order_details')?></li>
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
                    <div class="col-lg-6">
                        <div class="card alert">
                            <div class="card-header">
                                <h4>Order # <?php echo $order_info->id; ?> </h4>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-xs-12">
                                
                                    <table class="table table-borderless table-sm table-responsive custom-table">
                                        <tbody>
                                            <tr>
                                                <td><?=$this->lang->line('order_date')?>:</td>
                                                <td class="text-right"><?=date('d/m/Y H:i a', strtotime($order_info->created)); ?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$this->lang->line('order_status')?>:</td>
                                                <td class="text-right"><?=$controller->getOrderStatus($order_info->order_status); ?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$this->lang->line('payment_status')?>:</td>
                                                <td class="text-right"><?=$controller->getPaymentStatus($order_info->payment_status); ?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$this->lang->line('payment_type')?>:</td>
                                                <td class="text-right"><?=$controller->getPaymentType($order_info->payment_type); ?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$this->lang->line('tip')?>:</td>
                                                <td class="text-right"><?=CURRENCY?><?=$order_info->tip_price; ?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$this->lang->line('discount')?>:</td>
                                                <td class="text-right"><?=CURRENCY?><?=$order_info->discount_price; ?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$this->lang->line('wallet_amount')?>:</td>
                                                <td class="text-right"><?=CURRENCY?><?=$order_info->wallet_price; ?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$this->lang->line('paid_amount')?>:</td>
                                                <td class="text-right"><?=CURRENCY?><?=$order_info->total_price; ?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$this->lang->line('admin_charge')?>:</td>
                                                <td class="text-right"><?=CURRENCY?><?=$order_info->admin_charge; ?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$this->lang->line('grand_total')?>:</td>
                                                <td class="text-right"><?=CURRENCY?><?=$order_info->grand_total; ?></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card alert">
                            <div class="card-header">
                                <h4><?=$this->lang->line('customer_and_address_information')?></h4>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-xs-12">
                                        
                                    <table class="table table-borderless table-sm table-responsive custom-table">
                                        <tbody>
                                            <tr>
                                                <td><?=$this->lang->line('name')?>:</td>
                                                <td class="text-right"><a href="<?php echo $order_info->user_id; ?>" style="color:#ff2e44"><?=urldecode($order_info->customer_name); ?></a></td>
                                            </tr>
                                            <tr>
                                                <td><?=$this->lang->line('phone_number')?>:</td>
                                                <td class="text-right"><?=$order_info->customer_phone; ?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$this->lang->line('email_id')?>:</td>
                                                <td class="text-right"><a href=<?php echo 'mailto:'.urldecode($order_info->customer_email); ?>><?=urldecode($order_info->customer_email); ?></a></td>
                                            </tr>
                                            <tr>
                                                <td><?=$this->lang->line('name_on_address')?>:</td>
                                                <td class="text-right"><?php echo urldecode($order_info->user_name); ?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$this->lang->line('address')?>:</td>
                                                <td class="text-right"><?php echo urldecode($order_info->address_line_1) .' '.urldecode($order_info->address_line_2).', '.urldecode($order_info->city); ?></td>
                                            </tr>
                                           
                                            <tr>
                                                <td><?=$this->lang->line('contact_no')?>:</td>
                                                <td class="text-right"><?php echo $order_info->phone; ?></td>
                                            </tr>
                                        </tbody>
                                    </table>
                    
                                    
                                </div>                                    
                            </div>
                                
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    
                    
                    
                    
                    <div class="clearfix"></div>
                </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card alert">
                            <div class="card-header">
                                <h4><?=$this->lang->line('order_information')?></h4></h4>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-xs-12">
                                        
                                    <table class="table table-borderless table-sm table-responsive custom-table">
                                        <tr>
                                            <th><?=$this->lang->line('image')?></th>
                                            <th><?=$this->lang->line('item')?></th>
                                            <th><?=$this->lang->line('quantity')?></th>
                                            <th><?=$this->lang->line('item_price')?></th>
                                            <th><?=$this->lang->line('total_price')?></th>
                                            <th><?=$this->lang->line('extra_note')?></th>
                                        </tr>
                                        <?php
                                            foreach($get_order_details as $rows){ ?>
                                            <tr>
                                            <td width="100px"><img src="<?=UPLOAD_URL.'subcategory/'.$rows['image']?>" width="80px" /></td>
                                            <td><?=urldecode($rows['title'])?></td>
                                            <td><?=$rows['product_quantity']?></td>
                                            <td><?=CURRENCY?><?=$rows['product_price']?></td>
                                            <td><?=CURRENCY?><?=$rows['product_price'] * $rows['product_quantity']?></td>
                                            <td><?=urldecode($rows['extra_note'])?></td>
                                        </tr>
                                        <?php } ?>
                                    </table>
                                        
                                    
                                </div>
                                    
                                
                                
                            </div>
                                
                        </div>
                    </div>

                    <div class="col-lg-12">
                        <div class="card alert">
                            <div class="card-header">
                                <h4><?=$this->lang->line('change_order_status')?></h4>
                            </div>
                            <div class="row">
                    
                
                        
                
                            <div class="card-body">
                                <div class="menu-upload-form">

                                    <form class="form-horizontal" action="<?=ORDER_PATH;?>/change_order_status" method="post" accept-charset="utf-8"  id="MenuForm">
                                        <div class="form-group">
                                    
                                            <div class="col-sm-6">
                                                <select class="form-control required"  name="order_status" id="order_status">
                                                    <?=$order_info->order_status?>
                                                    <option <?=$order_info->order_status==1?"Selected" :""?> value="1"><?=$this->lang->line('pending')?></option>
                                                    <option <?=$order_info->order_status==2?"Selected" :""?> value="2"><?=$this->lang->line('accepted')?></option>
                                                    <option <?=$order_info->order_status==3?"Selected" :""?> value="3"><?=$this->lang->line('declined')?></option>
                                                    <option <?=$order_info->order_status==4?"Selected" :""?> value="4"><?=$this->lang->line('inprocess')?></option>
                                                    <!-- <option <?=$order_info->order_status==5?"Selected" :""?> value="5">Delivered</option> -->
                        
                                                </select>
                                            </div>
                                    <input type="hidden" name="orderid" value="<?=$order_info->id; ?>" >
                                    <input type="hidden" name="user_id" value="<?=$order_info->user_id; ?>" >
                                    
                                    <div class="col-sm-3">
                                            <button type="submit" class="btn btn-lg btn-primary"><?=$this->lang->line('change_status')?></button>
                                        </div>
                                    </div>
                                    
                                
                                </form>
                                
                            </div>
                        </div>
                    </div>
                    
                </div><!-- /# row -->
                                
               
                    
                    
                    
                </div>
            </div><!-- /# main content -->
        </div><!-- /# container-fluid -->
    </div><!-- /# main -->
</div><!-- /# content wrap -->

<?php include(ADMIN_INCLUDE_PATH . '/footer.php');
include(ADMIN_INCLUDE_PATH . '/close.php'); ?>