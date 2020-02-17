$(function () {
	
	function checkNameAjax(username){
		var flag=false;
		$.ajax({
			url:"checkUsername.do",
			type:"post",
			async:false,
			data:{"username":username},
			dataType:"text",
			success:function(result){
//				alert(result);
				if("Y" == result){
					var msgBox = $("#checknamespan");
					msgBox.show();
					msgBox.text("用户名已经存在！"); 					
				}else{
					var msgBox = $("#checknamespan");
					msgBox.text(""); 
					flag=true;
				}
			},
			complete:function(XMLHttpRequest,statusText){				
			},
			error:function(XMLHttpRequest,statusText){
				alert("操作失败！")
			}
		});
		return flag;
	}
	
//	function checkEmailAjax(email){
//		var flag = false;
//		$.ajax({
//			url:"checkEmail.do",
//			type:"post",
//			async:false,
//			data:{email:email},
//			dataType:"text",
//			success:function(result){
//				//alert(email);
//				if("Y" == result){
//					var msgBox = $("#checkemailspan");
//					msgBox.show();
//					msgBox.text("邮箱已经存在!");
//				}else{
//					var msgBox = $("#checkemailspan");
//					msgBox.text(""); 
//					flag=true;
//				}
//			},
//			complete:function(XMLHttpRequest,statusText){
//				
//			},
//			error:function(XMLHttpRequest,statusText){
//				alert("操作失败！");
//			}
//		});
//		return flag;
//	}
//	
//	function checkIdcardAjax(idcard){
//		var flag = false;
//		$.ajax({
//			url:"checkIdcard.do",
//			type:"post",
//			async:false,
//			data:{idcard:idcard},
//			dataType:"text",
//			success:function(result){
//				if("Y" == result){
//					var msgBox = $("#checkidcardspan");
//					msgBox.show();
//					msgBox.text("该身份证已经注册!");
//				}else{
//					var msgBox = $("#checkidcardspan");
//					msgBox.text(""); 
//					flag=true;
//				}
//			},
//			complete:function(XMLHttpRequest,statusText){
//				
//			},
//			error:function(XMLHttpRequest,statusText){
//				alert("操作失败！");
//			}
//		});
//		return flag;
//	}
//	
//	function checkPhoneAjax(phone){
//		var flag = false;
//		$.ajax({
//			url:"checkPhone.do",
//			type:"post",
//			async:false,
//			data:{phone:phone},
//			dataType:"text",
//			success:function(result){
//				if("Y" == result){
//					var msgBox = $("#checkphonespan");
//					msgBox.show();
//					msgBox.text("该号码已经被注册！");
//				}else{
//					var msgBox = $("#checkphonespan"); 
//					msgBox.text("");
//					return true;
//				}
//			}
//		});
//	}

	//1.验证用户名
	$("#user").blur(function(){
		var name = $(this).val();
		var res = checkName(name);
		if(res){
			$("#usernamespan").hide();
			checkNameAjax(name)			
		}else{
			$("#usernamespan").show();			
		}		
	});
	
	//2.验证密码
	$("#password").blur(function(){
		var passEle = $(this).val();
		var res = checkPassword(passEle);
		if(res){
			$("#passwordspan").hide();			
		}else{
			$("#passwordspan").show();						
		}
	});
	//3.验证确认密码
	$("#repassword").blur(function(){
		var pwd01 = $("#password").val();
		var pwd02 = $("#repassword").val();
		if(pwd01 != pwd02){
			$("#repasswordspan").show();			
		}else{
			$("#repasswordspan").hide();			
		}
	});
	//4.验证邮箱
	$("#email").blur(function(){
		var emailEle = $(this).val();
		var res = checkEmail(emailEle);
		if(res){
			$("#emailspan").hide();
//			checkEmailAjax(emailEle);		
		}else{
			$("#emailspan").show();			
		}
		
	});
	//5.验证身份证
//	$("#idcard").blur(function(){
//		var idcardEle = $(this).val();
//		var res = checkIdcard(idcardEle);
//		if(res){
//			$("#idcardspan").hide();
//			checkIdcardAjax(idcardEle);			
//		}else{
//			$("#idcardspan").show();			
//		}
//	});
	//6.验证手机号
	$("#phone").blur(function(){
		var phoneEle = $(this).val();
		var res = checkPhone(phoneEle);
		if(res){
			$("#phonespan").hide();
//			checkPhoneAjax(phoneEle);			
		}else{
			$("#phonespan").show();			
		}
	});
	
	//用户名为空不能提交
	$("#registForm").submit(function(){			
			var name = $("#user").val()
			var res = checkName(name);
			if(res){
				$("#usernamespan").hide();
				checkNameAjax(name);		
			}else{
				$("#usernamespan").show();
				return false;
			}				
	})
	//密码为空不能提交
	$("#registForm").submit(function(){		
		var passEle = $("#password").val();
		var res = checkPassword(passEle);
		if(res){
			$("#passwordspan").hide();	
			return true;
		}else{
			$("#passwordspan").show();	
			return false;
		}		
	})	
	
	//重复密码为空不能提交
	$("#registForm").submit(function(){		
		var pwd01 = $("#password").val();
		var pwd02 = $("#repassword").val();
		if(pwd01 != pwd02){
			$("#repasswordspan").show();
			return false;
		}else{
			$("#repasswordspan").hide();
			return true;
		}
	})
	//邮箱为空不能提交
//	$("#registForm").submit(function(){			
//		var emailEle = $("#email").val();
//		var res = checkEmail(emailEle);
//		if(res){
//			$("#emailspan").hide();
//			checkEmailAjax(emailEle);		
//		}else{
//			$("#emailspan").show();
//			return false;
//		}
//	})	
	//身份证号码为空不能提交
//	$("#registForm").submit(function(){
//		var idcardEle = $("#idcard").val();
//		var res = checkIdcard(idcardEle);
//		if(res){
//			$("#idcardspan").hide();
//			checkIdcardAjax(idcardEle);			
//		}else{
//			$("#idcardspan").show();
//			return false;
//		}
//	})	
	//电话号码为空不能提交
//	$("#registForm").submit(function(){		
//		var phoneEle =$("#phone").val();
//		var res = checkPhone(phoneEle);
//		if(res){
//			$("#phonespan").hide();
//			checkPhoneAjax(phoneEle);			
//		}else{
//			$("#phonespan").show();	
//			return false;
//		}
//	})	
	//手机号的验证方法
	function checkPhone(phone){
		var Reg = /^1[34578]\d{9}$/;
		var res = Reg.test(phone);
		return res;
	}
	
	//身份证的验证方法
	function checkIdcard(idcard){
		var Reg = /^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;
		var res = Reg.test(idcard);
		return res;
	}
	
	
	//验证邮箱的方法
	function checkEmail(emailEle){
		 var Reg=/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/;
	     var res=Reg.test(emailEle);
	     return res;
	}
	
	//验证密码的方法
	//规则：您的密码可以由大小写英文字母、数字组成，长度6-20位。
	function checkPassword(password){
		var Reg = /^[A-Za-z0-9\u4e00-\u9fa5]{6,20}$/;
        var res = Reg.test(password);
        return res;
	}
	//验证用户名的方法
	//规则：您的昵称可以由小写英文字母、中文、数字组成，长度4-20个字符，一个汉字为两个字符。
	function checkName(name){
		 var Reg = /^[a-z0-9\u4e00-\u9fa5]+$/;
		 /*var Reg = /^[a-zA-Z0-9_-]{4,16}$/;*/
	     var res = Reg.test(name);
	     if(res){
	    	 var len = getLength(name);
	    	 if(len >= 4 && len <= 20){
	    		 return true;
	    	 }else{
	    		 return false;
	    	 }
	     }else{
	    	 return false
	     }
	}
	
	//获取字符串的长度
	function getLength(str){
		var len = 0;
		for(var i=0;i<str.length;i++){
			 if(str.charAt(i)>'~'){len+=2;}else{len++;}
		}
		return len;
	}
});