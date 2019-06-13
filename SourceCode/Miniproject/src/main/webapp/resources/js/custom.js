$(document).ready(function(){
	$(".btn-add-to-cart").click(function(){
		var ctsp = $("#idchitietsp").val();
		var sl = $("#soluongmua").val();
		$.ajax({
			url:"/Miniproject/api/addtocart",
			type:"GET",
			data:{
				idchitietsp:ctsp,
				soluongmua:sl
			},
			success: function(value){
				
			}
		}).done(function(){
			$.ajax({
				url:"/Miniproject/api/slCart",
				type:"GET",
				success: function(value){
					$(".count").html(value);
					$.notify({
						// options
						icon: 'glyphicon glyphicon-warning-sign',
						title: 'Notification: ',
						message: 'Đã thêm sản phẩm vào giỏ hàng!',
						target: '_blank'
					},{
						// settings
						element: 'body',
						position: null,
						type: "success",
						allow_dismiss: true,
						newest_on_top: false,
						showProgressbar: false,
						placement: {
							from: "top",
							align: "right"
						},
						offset: 20,
						spacing: 10,
						z_index: 1031,
						delay: 3000,
						timer: 1000,
						url_target: '_blank',
						mouse_over: null,
						animate: {
							enter: 'animated fadeInDown',
							exit: 'animated fadeOutUp'
						},
						onShow: null,
						onShown: null,
						onClose: null,
						onClosed: null,
						icon_type: 'class',
						template: '<div data-notify="container" class="col-xs-11 col-sm-3 alert alert-{0}" role="alert">' +
							'<span data-notify="icon"></span> ' +
							'<span data-notify="title">{1}</span> ' +
							'<span data-notify="message">{2}</span>' +
							'<div class="progress" data-notify="progressbar">' +
								'<div class="progress-bar progress-bar-{0}" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>' +
							'</div>' +
							'<a href="{3}" target="{4}" data-notify="url"></a>' +
						'</div>' 
					});
					//-------------
				}
			})
		})
	});
	
	
	$(".btn-minus-cart-one").click(function(){
		var currentRow = $(this).closest("tr");
		
		var col1 = currentRow.find("td:eq(0)").text();
		
		$.ajax({
			url:"/Miniproject/api/minustocart",
			type:"GET",
			data:{
				key:col1
			},
			success: function(value){
				$('.total-cart').html(value + " VNĐ");
			}
		})
	});
	
	
	$(".btn-plus-cart-one").click(function(){
		var currentRow = $(this).closest("tr");
		
		var col1 = currentRow.find("td:eq(0)").text();
		//alert(col1);
		$.ajax({
			url:"/Miniproject/api/plustocart",
			type:"GET",
			data:{
				key:col1
			},
			success: function(value){
				$('.total-cart').html(value + " VNĐ");
			}
		})
	});
	
	
	$(".btn-remove-item-cart").click(function(){
		var currentRow = $(this).closest("tr");
		
		var col1 = currentRow.find("td:eq(0)").text();
		currentRow.remove();
		//alert(col1);
		$.ajax({
			url:"/Miniproject/api/removeitemcart",
			type:"GET",
			data:{
				key:col1
			},
			success: function(value){
				$('.total-cart').html(value + " VNĐ");
			}
		})
	});
	
	
	$("#formCheckout").validate({
		rules: {
			hotenkhachhang: {
				required: true,
				maxlength: 30
			},
			sodienthoai: {
				required: true, //ko dc de trong
				number: true, //  bắt buộc là kiểu số
				digits: true,  // không được tồn tại số âm
				minlength: 10,  //ko dc it hon 10 ky tu
				maxlength: 10 // giới hạn số ký tự được nhập vào
			},
			diachigiaohang: {
				required: true,
				maxlength: 500
			}
		},
		messages: {
			hotenkhachhang: {
				required: "Vui lòng nhập họ và tên!",
				maxlength: "Tối đa 30 ký tự!"
			},
			sodienthoai: {
				required: "Vui lòng nhập số điện thoại !",
				number: "Số điện thoại bao gồm 10 chữ số !",
				digits: "Số điện thoại không được nhập số âm !",
				minlength: "Số điện thoại phải có 10 ký tự!",
				maxlength: "Số điện thoại không được nhập quá 10 ký tự !"
			},
			diachigiaohang: {
				required: "Không được để trống địa chỉ nhận hàng!",
				maxlength: "Tối đa 500 ký tự!"
			}
		}
	});
	
	$("#abc").click(function(){
		alert($("#amount").text());
	});
})