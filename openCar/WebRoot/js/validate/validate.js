//<![CDATA[
$(function(){
        /*
        *思路大概是先为每一个required添加必填的标记，用each()方法来实现。
        *在each()方法中先是创建一个元素。然后通过append()方法将创建的元素加入到父元素后面。
        *这里面的this用的很精髓，每一次的this都对应着相应的input元素，然后获取相应的父元素。
        *然后为input元素添加失去焦点事件。然后进行用户名、邮件的验证。
        *这里用了一个判断is()，如果是用户名，做相应的处理，如果是邮件做相应的验证。
        *在jQuery框架中，也可以适当的穿插一写原汁原味的javascript代码。比如验证用户名中就有this.value，和this.value.length。对内容进行判断。
        *然后进行的是邮件的验证，貌似用到了正则表达式。
        *然后为input元素添加keyup事件与focus事件。就是在keyup时也要做一下验证，调用blur事件就行了。用triggerHandler()触发器，触发相应的事件。
        *最后提交表单时做统一验证
        *做好整体与细节的处理
        */
        //如果是必填的，则加红星标识.
        $("form :input.required").each(function(){
            var $required = $("<strong class='high'> *</strong>"); //创建元素
            $(this).parent().append($required); //然后将它追加到文档中
       });
       
         //文本框失去焦点后
        $('form :input').blur(function(){
             var $parent = $(this).parent();
             $parent.find(".formtips").remove();
             //验证用户名
             if( $(this).is('#username') ){
                    if( this.value=="" || this.value.length < 6 ){
                        var errorMsg = '请输入至少6位，最多20位的用户名.';
                        $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                    }else if(this.value.length >20){
                    	 var errorMsg = '用户名长度不能超过20';
                         $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                    } else{
                        var okMsg = '输入正确.';
                        $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:green;" class="formtips onSuccess">'+okMsg+'</span>');
                    }
             }
             
             //验证名称
             if( $(this).is('#name') ){
                 if( this.value=="" || this.value.length < 2 ){
                     var errorMsg = '请输入至少2位，最长10位的名称';
                     $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 }else if(this.value.length >10){
                 	 var errorMsg = '名称不能超过10位';
                      $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 } else{
                     var okMsg = '输入正确.';
                     $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:green;" class="formtips onSuccess">'+okMsg+'</span>');
                 }
             }
             
           //验证标题
             if( $(this).is('#title') ){
                 if( this.value=="" || this.value.length < 2 ){
                     var errorMsg = '请输入至少2位，最长80位的标题';
                     $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 }else if(this.value.length >80){
                 	 var errorMsg = '标题不能超过80位';
                      $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 } else{
                     var okMsg = '输入正确.';
                     $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:green;" class="formtips onSuccess">'+okMsg+'</span>');
                 }
             }
             
           //验证关键字
             if( $(this).is('#keywords') ){
                 if( this.value=="" || this.value.length < 2 ){
                     var errorMsg = '请输入至少2位，最长200位的关键字';
                     $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 }else if(this.value.length >200){
                 	 var errorMsg = '关键字不能超过200位';
                      $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 } else{
                     var okMsg = '输入正确.';
                     $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:green;" class="formtips onSuccess">'+okMsg+'</span>');
                 }
             }
             
           //验证分组
            if( $(this).is('#grade') ){
                 if( this.value=="" || this.value.length < 2 ){
                     var errorMsg = '请输入至少2位，最长200位的分组,多个分组用,隔开';
                     $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 }else if(this.value.length >200){
                 	 var errorMsg = '分组不能超过200位';
                     $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 } else{
                     var okMsg = '输入正确,最长200位的分组,多个分组用,隔开';
                     $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:green;" class="formtips onSuccess">'+okMsg+'</span>');
                 }
             }
             
           //验证描述
             if( $(this).is('#descript') ){
                 if( this.value=="" || this.value.length < 2 ){
                     var errorMsg = '请输入至少2位，最长200位的描述';
                     $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 }else if(this.value.length >200){
                 	 var errorMsg = '描述不能超过200位';
                      $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 } else{
                     var okMsg = '输入正确.';
                     $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:green;" class="formtips onSuccess">'+okMsg+'</span>');
                 }
             }
             
             //验证性别
             if( $(this).is('#sex') ){
                 if( this.value=="" ){
                       var errorMsg = '请选择性别';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 }else{
                       var okMsg = '输入正确.';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:green;" class="formtips onSuccess">'+okMsg+'</span>');
                 }
              }
             
             //验证角色
             if( $(this).is('#role') ){
                 if( this.value==""){
                       var errorMsg = '请选择角色';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 }else{
                       var okMsg = '输入正确.';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:green;" class="formtips onSuccess">'+okMsg+'</span>');
                 }
              }
             
             /**
              * 选择类型
              */
             if( $(this).is('#type') ){
                 if( this.value==""){
                       var errorMsg = '请选择类型';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 }else{
                       var okMsg = '输入正确.';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:green;" class="formtips onSuccess">'+okMsg+'</span>');
                 }
              }
             
           //验证select
             if( $(this).is('#state') ){
                 if( this.value=="" ){
                       var errorMsg = '请选择状态';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 }else{
                       var okMsg = '输入正确.';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:green;" class="formtips onSuccess">'+okMsg+'</span>');
                 }
              }
             
           //验证结论
             if( $(this).is('#contact') ){
            	 if( this.value=="" || this.value.length < 2 ){
                     var errorMsg = '请输入至少7位，最长25位的结论';
                     $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 }else if(this.value.length >25){
                 	 var errorMsg = '结论不能超过25位';
                      $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 } else{
                     var okMsg = '输入正确.';
                     $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:green;" class="formtips onSuccess">'+okMsg+'</span>');
                 }
              }
             
             /**
              * 验证产品
              */
             if( $(this).is('#product') ){
                 if( this.value==""){
                       var errorMsg = '请选择产品';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 }else{
                       var okMsg = '输入正确.';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:green;" class="formtips onSuccess">'+okMsg+'</span>');
                 }
              }
             
             /**
              * 验证联系人
              */
             if( $(this).is('#person') ){
                 if( this.value==""){
                       var errorMsg = '请填写联系人';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 }else{
                       var okMsg = '输入正确.';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:green;" class="formtips onSuccess">'+okMsg+'</span>');
                 }
              }
            
             
             //验证 qq
             if( $(this).is('#qq') ){
                 if( this.value=="" || ( this.value!="" && !/^\d{5,10}$/.test(this.value) )){
                       var errorMsg = '请输入正确的qq号码';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 }else{
                       var okMsg = '输入正确.';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:green;" class="formtips onSuccess">'+okMsg+'</span>');
                 }
              }
             
             
             //验证邮件
             if( $(this).is('#email') ){
                if( this.value=="" || ( this.value!="" && !/.+@.+\.[a-zA-Z]{2,4}$/.test(this.value) ) ){
                      var errorMsg = '请输入正确的E-Mail地址.';
                      $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                }else{
                      var okMsg = '输入正确.';
                      $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:green;" class="formtips onSuccess">'+okMsg+'</span>');
                }
             }

             //电话号码验证
             if( $(this).is('#tel')){
                 if( this.value==""  ){
                       var errorMsg = '请输入正确的电话号码';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 }else{
                       var okMsg = '输入正确.';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:green;" class="formtips onSuccess">'+okMsg+'</span>');
                 }
              }
             
             //非负整数
             if( $(this).is('#integer') ){
                 if( this.value=="" ||  ( this.value!="" && !/^\d+$/.test(this.value) ) ){
                       var errorMsg = '请输入大于等于0的正整数';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 }else{
                       var okMsg = '输入正确.';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:green;" class="formtips onSuccess">'+okMsg+'</span>');
                 }
              }
             
             
             //判断URL
             if( $(this).is('#url') ){
            	 var url="(http|ftp|https):\/\/[\w\-_]+(\.[\w\-_]+)+([\w\-\.,@?^=%&amp;:/~\+#]*[\w\-\@?^=%&amp;/~\+#])?";
            	 
                 if( this.value=="" || !url.test(this.value)){
                       var errorMsg = '请输入正确的URL';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 }else{
                       var okMsg = '输入正确.';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:green;" class="formtips onSuccess">'+okMsg+'</span>');
                 }
              }
             
             //验证是否展示
             if( $(this).is('#display') ){
                 if( this.value=="" ){
                       var errorMsg = '请选择是否展示';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 }else{
                       var okMsg = '输入正确.';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:green;" class="formtips onSuccess">'+okMsg+'</span>');
                 }
              }
             
             //验证连接所在位置
             if( $(this).is('#addr') ){
                 if( this.value=="" ){
                       var errorMsg = '请选择连接所在位置';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:red;" class="formtips onError">'+errorMsg+'</span>');
                 }else{
                       var okMsg = '输入正确.';
                       $parent.append('<span style="display:block;width:200px;height:20px;font-size:14px;color:green;" class="formtips onSuccess">'+okMsg+'</span>');
                 }
              }
        }).keyup(function(){
           $(this).triggerHandler("blur");
        }).focus(function(){
             $(this).triggerHandler("blur");
        });//end blur
        
        
      //遍历所有的form表单
        for(var f=0;f<document.forms.length;f++){
        	var form=document.forms[f];
        	//遍历指定form表单所有元素
        	for(var i=0;i<form.length;i++){
        		var element=form[i];
        		if(element.id!=""){
        			var oInput = document.getElementById(""+element.id+"");
            		oInput.focus();
            		oInput.blur();
        		}
        	}
        	break;
        }
})
//]]>