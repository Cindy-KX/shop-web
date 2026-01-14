
/**
 * 加入购物车
 */
function buy(goodid){
	$.post("goods_buy", {goodsid:goodid}, function(data){
		if(data=="ok")
		{
			layer.msg("Added to cart!", {time:800}, function(){
               location.reload();
            });
		}
		else if(data=="fail")
		{
            layer.msg("Insufficient stock, please choose other products!", {time:800}, function(){

            });
		}
		/*if(data=="ok"){
			layer.msg("Operation successful!", {time:800}, function(){
				location.reload();
			});
		}else if(data=="login"){
			alert("Please login to buy!");
			location.href="login.jsp";
		}else if(data=="empty"){
			alert("Insufficient stock!");
			location.reload();
		}else{
			alert("Request failed!");
		}*/

	});
}

function lessen(goodsid){
    $.post("goods_lessen", {goodsid:goodsid}, function(data){
        if(data=="ok"){
            layer.msg("Operation successful!", {time:800}, function(){
                location.reload();
            });
        }
//		if(data=="ok"){
//			layer.msg("Operation successful!", {time:800}, function(){
//				location.href="cart.action";
//			});
//		}else if(data=="login"){
//			alert("Please login to operate!");
//			location.href="login.jsp";
//		}else{
//			alert("Request failed!");
//		}
    });
}
/**
 * 购物车删除
 */
function deletes(goodid){
    $.post("goods_delete", {goodsid:goodid}, function(data){
        if(data=="ok"){
            layer.msg("Deleted successfully!", {time:800}, function(){
                location.reload();
            });
        }
    });
}