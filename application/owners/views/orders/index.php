<?php include(ADMIN_INCLUDE_PATH . '/header.php'); ?>
<?php include(ADMIN_INCLUDE_PATH . '/sidebar.php'); ?>
<div class="content-wrap">
    <div class="main">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 p-0">
                    <div class="page-header">
                        <div class="page-title">
                            <h1><?= $this->lang->line('orders') ?></h1>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 p-0">
                    <div class="page-header">
                        <div class="page-title">
                            <ol class="breadcrumb text-right">
                                <li><a href="<?= DASHBOARD_PATH ?>"><?= $this->lang->line('dashboard') ?></a></li>
                                <li><a href="<?= ORDER_PATH ?>"><?= $this->lang->line('order_list') ?></a></li>
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
                        <strong><?= $this->lang->line('success') ?>!</strong> <?php echo isset($success_message) ? $success_message : $this->session->flashdata('invalid'); ?>
                    </div>

                <?php  } ?>

                <?php if (isset($error_message) && $error_message != '') {  ?>

                    <div class="alert alert-info alert-dismissable">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong><?= $this->lang->line('error') ?>!</strong> <?php echo isset($error_message) ? $error_message : $this->session->flashdata('invalid'); ?>
                    </div>

                <?php } ?>

                <div class="row">
                    <div class="col-lg-12">

                        <div class="card alert">



                            <div class="bootstrap-data-table-panel">
                                <table id="bootstrap-data-table-export" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <!-- <th><input type='checkbox' name='select_all' id='select_all' value='' /></th> -->
                                            <th><?= $this->lang->line('order_id') ?></th>
                                            <th><?= $this->lang->line('user') ?></th>
                                            <th><?= $this->lang->line('order_status') ?></th>
                                            <th>Contactless Delivery</th>
                                            <th>Delivery Type</th>
                                            <th><?= $this->lang->line('total_amount') ?></th>
                                            <th><?= $this->lang->line('discount') ?></th>
                                            <th><?= $this->lang->line('tip') ?></th>
                                            <th><?= $this->lang->line('order_date') ?></th>
                                            <!-- <th><?= $this->lang->line('action') ?></th> -->

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php

                                        if (!empty($results)) {

                                            $html = '';

                                            foreach ($results as $single) { ?>
                                                <tr onClick="getOrderDetails(<?= $single['id'] ?>)" class="getOrderDetails">
                                                    <!-- <td><input type='checkbox' name='checked_id' id='checkbox1' class='checkbox' value='<?= $single['id'] ?>' /></td> -->
                                                    <td>#<?= $single['id'] ?></td>
                                                    <td><?= urldecode($single['fullname']) ?></td>
                                                    <td><?= $controller->getOrderStatus($single['order_status']) ?></td>
                                                    <td><?= $single['is_contactless'] == 0 ? "No" : "Yes" ?></td>
                                                    <td><?= $single['service_type'] == 0 ? "Pick Up" : "Delivery" ?></td>
                                                    <td>$<?= $single['grand_total'] ?></td>
                                                    <td><?= $single['discount_price'] ?></td>
                                                    <td><?= $single['tip_price'] ?></td>
                                                    <td><?= date('d-m-Y h:i a', strtotime($single['created'])) ?></td>
                                                    <!-- <td>&nbsp;&nbsp;<a class="ti-eye" data-toggle="tooltip" style="color: #00c0ef;" title="View!" href="<?= ORDER_PATH ?>/view/<?= $single['id'] ?>"></a></td> -->
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
            <!-- <div class="modal-header text-center">
            </div> -->

            <div id="modal-body" class="modal-body">
                <h2>Order Details</h2>
                <table style="max-height:500px;overflow:scroll;display:grid" class="detailTable table">
				<tbody class="nestedTbody">
                    <tr>
                        <th>OrderId</th>
                        <td id="tbl_orderId"></td>
                    </tr>
                    <tr>
                        <th>Customer</th>
                        <td id="tbl_orderCustomer"></td>
                    </tr>
                    <tr>
                        <th>Address</th>
                        <td id="tbl_orderAddress"></td>
                    </tr>
                    <tr>
                        <th>Phone</th>
                        <td id="tbl_orderPhone"></td>
                    </tr>
                    <tr>
                        <th>email</th>
                        <td id="tbl_orderEmail"></td>
                    </tr>
					<tr><td>Total Items</td><td id="tbl_total_items"></td></tr>
					<tr >
						<tr id="trListItems" colspan="2" style="width:97%">

						</tr>
					</tr>
					<tr>
						<th>Discount Amount</th>
						<td id="tbl_orderdiscount"></td>
					</tr>
					<tr>
						<th>Total Amount</th>
						<td id="tbl_ordergrandTotal"></td>
					</tr>
					<tr>
						<th>Tip Amount</th>
						<td id="tbl_ordertip"></td>
					</tr>
					<tr>
						<th>Delivery Type</th>
						<td id="tbl_delivery_type"></td>
					</tr>
					</tbody>
<!--                    <tr>-->
<!--                        <th>Special Note</th>-->
<!--                        <td id="tbl_orderNote"></td>-->
<!--                    </tr>-->

                </table>
				<table id="movableTable" class="table-bordered detailTable table tableNested">
					<tbody id="tbl_list_items">

					</tbody>

				</table>
                <form action="<?= ORDER_PATH ?>/change_order_status2" method="post">
                    <input type="hidden" name="order_status" value="2">
                    <input type="hidden" name="orderid" id="formorderid" value="">
                    <input type="hidden" name="userid" id="formuserid" value="">
                    <button type="submit" id="modalformbtn" style="margin: 0 auto;display: block;" class="btn btn-success btn-lg">Accept Order</button>
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
            url: "<?= ORDER_PATH ?>/details/" + orderId,
            method: "get",
            context: document.body,

        }).done(function(response) {
            showOrderDetails(orderId, response);
        });

    }

    function showOrderDetails(id, response) {

        response = JSON.parse(response)

        $('#tbl_orderId').html(id)
        $('#formorderid').val(id)
        $('#formuserid').val(response[0]['user_id'])
        $('#tbl_orderCustomer').html(response[0]['customer_name'])
        $('#tbl_orderAddress').html(response[0]['address'])
        $('#tbl_orderPhone').html(response[0]['phone'])
        $('#tbl_orderEmail').html(response[0]['customer_email'])
        $('#tbl_ordergrandTotal').html(response[0]['grand_total']+"$")
        $('#tbl_ordertip').html(response[0]['tip_price']+"$")
        $('#tbl_orderdiscount').html(response[0]['discount_price']+"$")
        // $('#tbl_orderItem').html(response[1][0]['title'])
        // $('#tbl_orderQty').html(response[1][0]['product_quantity'])
        // $('#tbl_orderNote').html(response[1][0]['extra_note'])

		let delivery_type =  (response[1][0]['service_type']==0?"Pickup":"Delivery")+(response[0]["is_contactless"]==1?" (Contactless)":"")

		$('#tbl_delivery_type').html(delivery_type)

		if(response[0]['order_status']!=1)
		{
			$('#modalformbtn').hide()
		}else{
			$('#modalformbtn').show()
		}

		let list = response[1].map(item=>{

			let newRow = document.createElement("tr")

			let titleCell = document.createElement("td")
			let titleText = document.createTextNode(item['title'])
			titleCell.appendChild(titleText)

			let qtyCell = document.createElement("td")
			let qtyText = document.createTextNode(item['product_quantity'])
			qtyCell.appendChild(qtyText)

			let noteCell = document.createElement("td")
			let noteText = document.createTextNode(item['extra_note'])
			noteCell.appendChild(noteText)

			newRow.appendChild(titleCell)
			newRow.appendChild(qtyCell)
			newRow.appendChild(noteCell)

			return newRow;
		})
		document.getElementById("tbl_list_items").innerHTML="<tr style=\"background:darkgray;\"><th>Item</th><th>Qty</th><th>Special Note</th></tr>"
		list.forEach(listItem => {
			document.getElementById("tbl_list_items").appendChild(listItem)
		})

		document.getElementById("trListItems").appendChild(document.getElementById("movableTable"))

		$('#orderDetails').modal()

    }
</script>

<?php include(ADMIN_INCLUDE_PATH . '/footer.php');
include(ADMIN_INCLUDE_PATH . '/close.php'); ?>
