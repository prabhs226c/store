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
                                <!--	<li class="active">Data Table</li>-->
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

                            

                            <div class="bootstrap-data-table-panel"><table id="bootstrap-data-table-export" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th><input type='checkbox' name='select_all' id='select_all' value=''/></th>
                                            <th><?=$this->lang->line('order_id')?></th>
                                            <th><?=$this->lang->line('user')?></th>
                                            <th><?=$this->lang->line('order_status')?></th>
                                            <th>Contactless Delivery</th>
                                            <th><?=$this->lang->line('payment_type')?></th>
                                            <th><?=$this->lang->line('total_amount')?></th>
                                            <th><?=$this->lang->line('discount')?></th>
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
                                            <tr onClick="getOrderDetails(<?=$single['id']?>)" class="getOrderDetails">
                                            <td><input type='checkbox' name='checked_id' id='checkbox1' class='checkbox' value='<?=$single['id']?>'/></td>
                                            <td>#<?=$single['id']?></td>
                                            <td><?=urldecode($single['fullname'])?></td>
                                            <td><?=$controller->getOrderStatus($single['order_status'])?></td>
                                            <td><?=$single['contactless']==0?"No":"Yes"?></td>
                                            <td><?=$controller->getPaymentType($single['payment_type'])?></td>c
                                            <td>$<?=$single['grand_total']?></td>
                                            <td><?=$single['discount_price']?></td>
                                            <td><?=$single['tip_price']?></td>
                                            <td><?=date('d-m-Y h:i a', strtotime($single['created']))?></td>
                                            <td>&nbsp;&nbsp;<a class="ti-eye" data-toggle="tooltip" style="color: #00c0ef;" title="View!" href="<?=ORDER_PATH?>/view/<?=$single['id']?>"></a></td>
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

	<div class="modal fade" id="orderDetails" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header text-center">
					<h2>Order Details</h2>
				</div>

				<div id="modal-body" class="modal-body">
					<table class="detailTable">
						<tr><th>OrderId</th><td id="tbl_orderId"></td></tr>
						<tr><th>Customer</th><td id="tbl_orderCustomer"></td></tr>
						<tr><th>Address</th><td id="tbl_orderAddress"></td></tr>
						<tr><th>Phone</th><td id="tbl_orderPhone"></td></tr>
						<tr><th>email</th><td id="tbl_orderEmail"></td></tr>
						<tr><th>Item</th><td id="tbl_orderItem"></td></tr>
						<tr><th>Qty</th><td id="tbl_orderQty"></td></tr>
						<tr><th>Special Note</th><td id="tbl_orderNote"></td></tr>

					</table>
					<form action="<?=ORDER_PATH?>/change_order_status2" method="post">
						<input type="hidden" name="order_status" value="2">
						<input type="hidden" name="orderid" id="formorderid" value="">
						<input type="hidden" name="userid"  id="formuserid" value="">
						<button type="submit"  style="margin: 0 auto;display: block;" class="btn btn-success btn-lg">Accept Order</button>
					</form>

				</div>
			</div>
		</div>
	</div>
<input type="hidden" id="currentOrder" value="">
	<script>
        function getOrderDetails(id) {

                let orderId = id;
                $.ajax({
                    url: "<?= ORDER_PATH ?>/details/"+orderId,
                    method: "get",
                    context: document.body,

                }).done(function (response) {
                    showOrderDetails(orderId,response);
                });

        }

        function showOrderDetails(id,response)
		{

			response = JSON.parse(response)

			$('#tbl_orderId').html(id)
			$('#formorderid').val(id)
			$('#formuserid').val(response[0]['user_id'])
			$('#tbl_orderCustomer').html(response[0]['customer_name'])
			$('#tbl_orderAddress').html(response[0]['address'])
			$('#tbl_orderPhone').html(response[0]['phone'])
			$('#tbl_orderEmail').html(response[0]['customer_email'])
			$('#tbl_orderItem').html(response[1][0]['title'])
			$('#tbl_orderQty').html(response[1][0]['product_quantity'])
			$('#tbl_orderNote').html(response[1][0]['extra_note'])


			$('#orderDetails').modal()

		}
	</script>

<?php include(ADMIN_INCLUDE_PATH . '/footer.php');
include(ADMIN_INCLUDE_PATH . '/close.php'); ?>
