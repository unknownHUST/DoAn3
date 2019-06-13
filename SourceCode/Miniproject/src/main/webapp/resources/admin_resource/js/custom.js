$(document).ready(function(){
	$("#xacthuchoadon").click(function(){
		var currentRow = $(this).closest("tr");
		
		var col1 = currentRow.find("td:eq(0)").text();
		//alert(col1);
		$.ajax({
			url:"/Miniproject/api/xacthuchoachuybohoadon",
			type:"GET",
			data:{
				idhd:col1,
				tinhtrang:"Processed"
			},
			success:function(value){
				//alert(value);
				currentRow.find("td:eq(4)").addClass("process");
				currentRow.find("td:eq(4)").html(value);
				$("#huyhoadon").remove();
				$("#xacthuchoadon").remove();
			}
		})
	});
	
	
	$("#huyhoadon").click(function(){
		var currentRow = $(this).closest("tr");
		
		var col1 = currentRow.find("td:eq(0)").text();
		//alert(col1);
		$.ajax({
			url:"/Miniproject/api/xacthuchoachuybohoadon",
			type:"GET",
			data:{
				idhd:col1,
				tinhtrang:"Denied"
			},
			success:function(value){
				//alert(value);
				currentRow.find("td:eq(4)").addClass("denied");
				currentRow.find("td:eq(4)").html(value);
				$("#huyhoadon").remove();
				$("#xacthuchoadon").remove();
			}
		})
	});
	
	
	$("#btnthemchitiet").click(function(){
		var divthemchitiet = $("#themchitiet").clone().removeAttr("id");
		
		$("#container_chitiet").append(divthemchitiet);
	});
	
	$("#btnthemsanpham").click(function(){
		
	});
	
	
//	$("#updatechitiet").click(function(){
//		var currentRow = $(this).closest('.chitietsanpham');
//		
//		var col1 = currentRow.find('.machitiet>input').val();
//		alert(col1);
////		$.ajax({
////			url:"/Miniproject/api/xacthuchoachuybohoadon",
////			type:"GET",
////			data:{
////				idhd:col1,
////				tinhtrang:"Denied"
////			},
////			success:function(value){
////				//alert(value);
////				currentRow.find("td:eq(4)").addClass("denied");
////				currentRow.find("td:eq(4)").html(value);
////				$("#huyhoadon").remove();
////				$("#xacthuchoadon").remove();
////			}
////		})
//	});
	
	
//	$("#btndeletesanpham").click(function(){
//		var currentRow = $(this).closest("tr");
//		
//		var col1 = currentRow.find("td:eq(0)").text();
//		alert(col1);
//		//console.log(col1);
////		$.ajax({
////			url:"/Miniproject/api/xacthuchoachuybohoadon",
////			type:"GET",
////			data:{
////				idhd:col1,
////				tinhtrang:"Denied"
////			},
////			success:function(value){
////				//alert(value);
////				currentRow.find("td:eq(4)").addClass("denied");
////				currentRow.find("td:eq(4)").html(value);
////				$("#huyhoadon").remove();
////				$("#xacthuchoadon").remove();
////			}
////		})
//	});
	
})