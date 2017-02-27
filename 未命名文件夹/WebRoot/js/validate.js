//必须输入
function requree_name(name){
	var name_value=$("input[name='"+name+"']").val();
	if(name_value=="" || name_value.length<1){
		return false;
	}else{
		return true;
	}
}
		
//验证长度
function requree_length(name,min,max){
	var name_value=$("input[name='"+name+"']").val();
	if(name_value.length<min || name_value.length>max){
		return false;
	}else{
		return true;
	}
}
		
//验证电子邮件
function requree_email(name){
	var name_value=$("input[name='"+name+"']").val();
	var Regex = /^(?:\w+\.?)*\w+@(?:\w+\.)*\w+$/;
	if(Regex.test(name_value)){
		return true;
	}else{
		return false;
	}
}
		
//验证整数
function requree_integer(name){
	var name_value=$("input[name='"+name+"']").val();
	var Regex =/^[0-9]*[1-9][0-9]*$/;
	if(Regex.test(name_value)){
		return true;
	}else{
		return false;
	}
}
		
//验证手机号码
function requree_iphone(name){
	if(requree_integer(name)&&requree_length(name,11,11)){
		return true;
	}else{
		return false;
	}
}
		
//验证英文字母
function requree_eng(name){
	var name_value=$("input[name='"+name+"']").val();
	var Regex =/^[A-Za-z]+$/;
	if(Regex.test(name_value)){
		return true;
	}else{
		return false;
	}
}
		
//验证身份证号码
function requree_cer(name){
	var name_value=$("input[name='"+name+"']").val();
	var Regex =/^\d{6}(18|19|20)?\d{2}(0[1-9]|1[12])(0[1-9]|[12]\d|3[01])\d{3}(\d|X)$/i;
	if(Regex.test(name_value)){
		return true;
	}else{
		return false;
	}
}
		
//验证真实的姓名
function requree_rel_name(name){
	var name_value=$("input[name='"+name+"']").val();
	var Regex =/^[\ue-\ufa]{,}$/;
	if(Regex.test(name_value)){
		return true;
	}else{
		return false;
	}
}
		
//验证double，如价格
function requree_double(name){
	var name_value=$("input[name='"+name+"']").val();
	var Regex =/^[-\+]?\d+(\.\d+)?$/;
	if(Regex.test(name_value)){
		return true;
	}else{
		return false;
	}
}
		
//验证textarea是否输入
function requree_textarea_length(name,min,max){
	var name_value=$("textarea[name='"+name+"']").val();
	if(name_value.length<min || name_value.length>max){
		return false;
	}else{
		return true;
	}
}
		
//验证checkbox至少选中一项
function requree_checkbox(name){
	var name_value=$("input[name='"+name+"']");
	var tag = false;
	for(var i=0;i<name_value.length;i++){
		if(name_value[i].type =="checkbox" && name_value[i].checked){  
			tag = true;  
		}  
	}
	return tag;
}
		
//判断radio是否选中
function requree_radio(name){
	var name_value=$("input[name='"+name+"']");
	var tag = false;
	for(var i=0;i<name_value.length;i++){
		if(name_value[i].type=="radio" && name_value[i].checked){  
			tag = true;  
		}  
	}
	return tag;
}

//只能输入字母和数字下划线（例如用户名）,如果是用户名还需要使用requree_length组合
function requree_num_code(name){
	var name_value=$("input[name='"+name+"']");
	var Regex =/^[\w\u4e00-\u9fa5]+$/gi;
	if(Regex.test(name_value)){
		return true;
	}else{
		return false;
	}
}
		
//输入的字符有特殊字符就返回假
function requree_sper(name){
	var name_value=$("input[name='"+name+"']");
	var Regex =/["'*<>%;)(&+]/;
	if(Regex.test(name_value)){
		return false;
	}else{
		return true;
	}
}

