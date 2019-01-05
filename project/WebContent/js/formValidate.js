//姓名验证
jQuery.validator.addMethod("nameValidator", function(value, element){
	if(value==null||value==undefined||value=="" ){return true};
	var patrn=/^[A-Za-z\u4e00-\u9fa5\·]+$/;
	if (!patrn.exec(value.replace(/[ ]/g,""))) return false
	return true
});

//标题（中英文、数字、引号、括号、空格、书名号、减号、下划线）
jQuery.validator.addMethod("titleStr", function(value, element){
	if(value==null||value==undefined||value=="" ){return true};
	var patrn=/^(?:[\u4e00-\u9fa5]*\w*-*_*\s*）*\"*\'*<*>*《*》*（*\(*\)*)+$/;  
	if (!patrn.exec(value.replace(/[ ]/g,""))) return false  
	return true  
});
//地址（中英文、数字、括号、空格、减号、#号）
jQuery.validator.addMethod("addressStr", function(value, element){
	if(value==null||value==undefined||value=="" ){return true};
	var patrn=/^(?:[\u4e00-\u9fa5]*\w*-*\s*）*#*（*\(*\)*)+$/;  
	if (!patrn.exec(value.replace(/[ ]/g,""))) return false  
	return true  
});
//多姓名（中英文、数字、括号、空格、减号、#号、；号）
jQuery.validator.addMethod("multiNames", function(value, element){
	if(value==null||value==undefined||value=="" ){return true};
	var patrn=/^(?:[\u4e00-\u9fa5]*\w*,*\s*，*、*;*；*)+$/;  
	if (!patrn.exec(value.replace(/[ ]/g,""))) return false  
	return true  
});
//密码验证（数字和字母混合体）
jQuery.validator.addMethod("passValidator", function(value, element){
	if(value==null||value==undefined||value=="" ){return true};
	var patrn=/^(([a-z]+[0-9]+)|([0-9]+[a-z]+))[a-z0-9]*$/i;
	if (!patrn.exec(value.replace(/[ ]/g,""))) return false
	return true
});

jQuery.validator.addMethod("validatePwd", function(value, element){
	if(value==null||value==undefined||value=="" ){return true};
	var patrn=/^(([a-z]+[0-9]+)|([0-9]+[a-z]+))[a-z0-9]*$/i;
	if (!patrn.exec(value.replace(/[ ]/g,""))) return false;
	$.ajax({
		url:"/userManage/validatePwd",
		data:{password:value},
		async:false,
		type:'post',
		success:function(data){
			if(data.ErrorMessage){
				return true;
			}
		}
	})
	return true
});


//数字、字母
jQuery.validator.addMethod("isDigitAndStr", function(value, element){
	if(value==null||value==undefined||value=="" ){return true};
	var patrn=/^[A-Za-z0-9]+$/;
	if (!patrn.exec(value.replace(/[ ]/g,""))) return false
	return true
});
//数字、字母、下划线
jQuery.validator.addMethod("isDigitStrAndUnderline", function(value, element){
	if(value==null||value==undefined||value=="" ){return true};
	var patrn=/^[A-Za-z0-9_]+$/;
	if (!patrn.exec(value.replace(/[ ]/g,""))) return false
	return true
});
//字母、下划线
jQuery.validator.addMethod("isStrAndUnderline", function(value, element){
	if(value==null||value==undefined||value=="" ){return true};
	var patrn=/^[A-Za-z_]+$/;
	if (!patrn.exec(value.replace(/[ ]/g,""))) return false
	return true
});
//数字、字母、短划线
jQuery.validator.addMethod("isCodeValidate", function(value, element){
	if(value==null||value==undefined||value=="" ){return true};
	var patrn=/^[A-Za-z0-9\\-]+$/;
	if (!patrn.exec(value.replace(/[ ]/g,""))) return false
	return true
});
//数字
jQuery.validator.addMethod("isNumber", function(value, element){
	if(value==null||value==undefined||value=="" ){return true};
	var patrn=/^[0-9]+$/;
	if (!patrn.exec(value.replace(/[ ]/g,""))) return false
	return true
});
//不包含特殊字符
jQuery.validator.addMethod("exculdeParticalChar", function(value, element){
	if(value==null||value==undefined||value=="" ){return true};
	var patrn=/^(?:[A-Za-z0-9\,\，\u4E00-\u9FA5]*[\(|\（]*[\)|\）]*-*)+$/;
	if (!patrn.exec(value.replace(/[ ]/g,""))) return false
	return true
});
//不包含有冒号的特殊字符
jQuery.validator.addMethod("exculdePartical", function(value, element){
	if(value==null||value==undefined||value=="" ){return true};
	var patrn=/^(?:[A-Za-z0-9\u4E00-\u9FA5]*[\(|\（\:\]*[\：)|\）]*-*)+$/;
	if (!patrn.exec(value.replace(/[ ]/g,""))) return false
	return true
});
//只包含数字、字母、中文
jQuery.validator.addMethod("isDigitStr", function(value, element){
	if(value==null||value==undefined||value=="" ){return true};
	var patrn=/^[A-Za-z0-9\u4e00-\u9fa5]+$/;
	if (!patrn.exec(value.replace(/[ ]/g,""))) return false
	return true
});
//电话号码
jQuery.validator.addMethod("telephone", function(value, element){
	if(value==null||value==undefined||value=="" ){return true};
	var patrn=/^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/;
	if (!patrn.exec(value.replace(/[ ]/g,""))) return false
	return true
});
//手机
jQuery.validator.addMethod("mobile", function(value, element) {
	var length = value.length;
	var mobile = /^1[3|4|5|7|8]\d{9}$/;
	return this.optional(element) || (length == 11 && mobile.test(value));
});

//身高
jQuery.validator.addMethod("stature", function(value, element) {
	var stature = /^[0-9]*[1-9][0-9]*$/;
	return this.optional(element) || (value <= 300 && stature.test(value));
});

//正整数
jQuery.validator.addMethod("positiveInteger", function(value, element) {
	var positiveInteger = /^[0-9]*[1-9][0-9]*$/;
	return this.optional(element) || (positiveInteger.test(value));
});
//非正整数
jQuery.validator.addMethod("nonPositiveInteger", function(value, element) {
	var positiveInteger = /^((-\d+)|(0+))$/;
	return this.optional(element) || (positiveInteger.test(value));
});

//一位到两位小数的正实数（这个有问题的，结尾是特殊符号或者字母验证不出来）
jQuery.validator.addMethod("posNumWiPot", function(value, element) {
	var positiveInteger = /^[0-9]+(.[0-9]{0,2})?$/;
	return this.optional(element) || (positiveInteger.test(value));
});

//金额（1到2位小数）
jQuery.validator.addMethod("valiMoney", function(value, element) {
	var positiveInteger = /^([1-9][\d]*|0)(\.[\d]{1,2})?$/;
	return this.optional(element) || (positiveInteger.test(value));
});

//时长（1小数）
jQuery.validator.addMethod("valiTime", function(value, element) {
	var positiveInteger = /^([1-9][\d]*|0)(\.[\d]{1})?$/;
	return this.optional(element) || (positiveInteger.test(value));
});
//合法的IP
jQuery.validator.addMethod("legalIp", function(value, element) {
	var parttern = /^(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9])\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9]|0)\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9]|0)\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[0-9])$/;
	return this.optional(element) || (parttern.test(value));
});

//非负整数
jQuery.validator.addMethod("nonNegativeInteger", function(value, element) {
	var positiveInteger = /^\d+$/;
	return this.optional(element) || (positiveInteger.test(value));
});

//电子邮箱
jQuery.validator.addMethod("email", function(value, element) {
	if(value==null||value==undefined||value=="" ){return true};
	var email = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	if (!email.exec(value)) return false  ;
	return true;
});

//不合法字符集
jQuery.validator.addMethod("IllegalStr", function(value, element) {
	var patrn=/^(?:[\u4e00-\u9fa5]*\w*\s*)+$/;
	if (!patrn.exec(value)) return false
	return true
});
//身份证号码
jQuery.validator.addMethod("idCard", function(value, element){
	 return checkIdcard(value.toUpperCase(),element);
});

//生日
jQuery.validator.addMethod("birthDay", function(value, element){
	if(value==null||value==undefined||value=="" ){return true};
	var d=new Date();
	var dat=d.getYear() + "-"+(d.getMonth() + 1) + "-"+d.getDate() + " ";//当前日期
   return new Date(Date.parse(dat.replace("-", "/"))) > new Date(Date.parse(value.replace("-", "/")));

});
//excel
jQuery.validator.addMethod("isExcel", function(fileName, element){
	var suffix = fileName.substring(fileName.lastIndexOf(".")+1).toLowerCase();
	if(suffix!="xls"){
		return false;
	}
	return true ;
});
//不等于
jQuery.validator.addMethod("notEqualTo", function(value,element,param){
	var target=$(param).unbind(".validate-equalTo").bind("blur.validate-equalTo",function(){$(element).valid();});
	return value!=target.val();
});
//验证网址
jQuery.validator.addMethod("isUrl", function(value, element) {
	var patrn=/[a-zA-z]+:\/\/[^\s]+/;
	if (!patrn.exec(value)) return false;
	return true
});
//验证日期
jQuery.validator.addMethod("isDate", function(value, element) {
	var patrn=/^\d{4}(\-|\/|.)\d{1,2}\1\d{1,2}$/;
	if (!patrn.exec(value)) return false;
	return true
});
//仅中文
jQuery.validator.addMethod("isChinese", function(value, element) {
	var patrn=/^[\u4e00-\u9fa5]+$/;
	if (!patrn.exec(value)) return false;
	return true
});

//判断是否是育龄妇女，如果是则不能修改性别
jQuery.validator.addMethod("isNurturesWomen", function(value, element){
	var flag = true;
	var gender = $("#gender").find("option:selected").text();
	if($("#mode").val()=="edit"){
		if(gender != "女"){
			$.ajax({
				type:'post',
				dataType:'json',
				async: false,
				url:'/baseinfo/nurturesWomenManage/findNurturesWomenByIdCardNoAndOrgId.action',
				data:{
					"population.idCardNo":$("#idCardNo").val(),
					"population.organization.id":getCurrentOrgId()
				},
				success:function(data){
					if(data!=null){
						flag = false;
					}
				}
			});
		}
	}
	return flag;
});	
//非中文
jQuery.validator.addMethod("notChinese", function(value, element) {
	if(value==null||value==undefined||value=="" ){return true};
	var patrn=/[^\u4e00-\u9fa5]+$/;
	if (!patrn.exec(value)) return false;
	return true
});

//英文名
jQuery.validator.addMethod("englishName", function(value, element) {
	if(value==null||value==undefined||value=="" ){return true};
	var patrn=/^\w+$/;
	if (!patrn.exec(value)) return false;
	return true
});

function orgLevelLessEqual(orgId,level){
	var bol = false;
	$.ajax({
		async:false,
		url:PATH+"/tools/org/levelCompare.action",
		data:{
			"orgId":orgId,
			"orgLevel":level
		},
		success:function(responseData){
			bol = responseData<=0;
		}
	});
	return bol;
}
function objectEquals(level1,level2){
	var bol = false;
	if(level1==level2){
		bol=true;
	}
	return bol;
}
jQuery.validator.addMethod("orgLevelLessEqual", function(value, element,params){
	if(params[0]==null||params[0]==undefined||params[0]==""){return false;}
	return orgLevelLessEqual(params[0],params[1])==true || orgLevelLessEqual(params[0],params[1])=="true";
});
jQuery.validator.addMethod("objectEquals", function(value, element, params){
	if(params[0]==undefined||params[1]==undefined||params[0]==null||params[1]==null){return false;}
	return objectEquals(params[0],params[1])==true || objectEquals(params[0],params[1])=="true";;
});


;(function ($) {
	$.fn.formValidate = function(o){
		var self=$(this);
		var dfop = {
			focusInvalid : true,
			showErrors:function(errorMap, errorList){
				for(var i=0;i<this.successList.length;i++){
					var inputDoc=this.successList[i];
					$(inputDoc).removeClass("errorInput").poshytip('disable').attr("createMsg","false").closest(".errorInput").poshytip('disable').removeClass("errorInput").next().poshytip('disable').removeClass("errorInput");
				}
				for(var i=0;i<this.errorList.length;i++){
					var inputDoc=this.errorList[i].element;
					var errorMessage=this.errorList[i].message;
					var inputObject=$(inputDoc);
					var option={
						alignX:'center',
						alignY:'bottom',
						showOn: 'focus',
						content:errorMessage
					}
					if(inputObject[0].tagName==='SELECT' || inputObject.hasClass("treeSelectInput")){
						option.alignX='right';
						option.alignY='center';
					}
					if(inputObject.is(":file")){
						option.alignX='center';
						option.alignY='top';
						option.showOn="hover";
					}
					if(inputObject.css("display")=="none" || inputObject.attr("type")=="hidden" || inputObject.attr("type") == "radio" || inputObject.attr("type") == "checkbox"){
						inputObject = inputObject.parent();
					}
					if ( $.browser.msie && ($.browser.version<='7.0' || document.documentMode<=7) && inputObject[0].tagName==='SELECT'){
						inputObject = inputObject.parent();
					}
					inputObject.addClass("errorInput");
					if(inputObject.attr("createMsg")==undefined||inputObject.attr("createMsg")=="false"){
						inputObject.dialogtip(option);
						$(".tip-error").bgiframe();
						inputObject.attr("createMsg","true");
					}else{
						inputObject.poshytip('update',errorMessage).poshytip('show');
					}
				}
			},
			rules:{
				
			},
			messages:{
				
			},
			ignore:""
		}
		$.extend(dfop, o);
		return $(this).validate(dfop);
	};
	
	$.fn.questionFormValidate = function(o){
		var self=$(this);
		var dfop = {
			showErrors:function(errorMap, errorList){
				for(var i=0;i<this.successList.length;i++){
					var inputDoc=this.successList[i];
					$(inputDoc).closest(".formValidateBox").find(".errorMessage").html("");
				}
				for(var i=0;i<this.errorList.length;i++){
					var inputDoc=this.errorList[i].element;
					var errorMessage=this.errorList[i].message;
					$(inputDoc).closest(".formValidateBox").find(".errorMessage").html(errorMessage);
				}
			},
			rules:{
				
			},
			messages:{
				
			},
			ignore:""
		}
		$.extend(dfop, o);
		return $(this).validate(dfop);
	};
})(jQuery);
function showErrorsForTab(errorMap, errorList){
	for(var i=0;i<this.successList.length;i++){
		var inputDoc=this.successList[i];
		$(inputDoc).removeClass("errorInput").poshytip('disable');
		$(inputDoc).attr("createMsg","false");
	}
	var i = 0;
	for(var i=0;i<this.errorList.length;i++){
		var inputDoc=this.errorList[i].element;
		var errorMessage=this.errorList[i].message;
		var inputObject=$(inputDoc);
		if(inputObject.css("display")=="none" || inputObject.attr("type")=="hidden"){
			if(inputObject.next().css("display")!="none"){
				inputObject = inputObject.next();
			}else{
				inputObject = inputObject.parent();
			}
		}
		if(inputObject.attr("createMsg")==undefined||inputObject.attr("createMsg")=="false"){
			var option={
				alignX:'center',
				alignY:'bottom',
				showOn: 'focus',
				content:errorMessage
			}
			if(inputObject[0].tagName==='SELECT'){
				option.alignX='right';
				option.alignY='center';
			}
			inputObject.dialogtip(option);
			$(".tip-error").bgiframe();
			$(".tip-error").css("cursor","pointer");
			$(".tip-error").click(function(){
				var inputObj = $(document.getElementsByName($(this).find(".inputName").attr("inputName"))[0]);

				if(inputObj.css("display")=="none"){
					inputObj = inputObj.next();
				}

				inputObj.attr("createMsg","false");
				$(this).remove();
			});
			inputObject.attr("createMsg","true");
		}
		var containerId;
		if(i==0){
			containerId = inputObject.parents(".container:first").attr("id");
			var currentTab = $("a[href='#"+containerId+"']");
			currentTab.click();
		}
		if(inputObject.parents(".container:first").attr("id") == containerId){

			if(inputObject.css("display")=="none"){
				inputObject = inputObject.next();
			}

			inputObject.addClass("errorInput");
		}
		i++;
	}
}

//判断是否为女性身份证号
jQuery.validator.addMethod("isWomen", function(value, element){
	var flag = true;
	var idCardNo = $("#idCardNo").val();
	if(idCardNo.length != null && idCardNo.length == 18){
		if(idCardNo.substring(idCardNo.length-2,idCardNo.length-1) % 2 != 0){
			flag = false;
		}
	}
	if( idCardNo.length != null && idCardNo.length == 15){
		if(idCardNo.substring(idCardNo.length-1,idCardNo.length) % 2 != 0){
			flag = false;
		}
	}
	return flag;
});
//判断是否为男性身份证号
jQuery.validator.addMethod("isMen", function(value, element){
	var flag = true;
	var idCardNo = $("#husbandNum").val();
	if(idCardNo.length != null && idCardNo.length == 18){
		if(idCardNo.substring(idCardNo.length-2,idCardNo.length-1) % 2 == 0){
			flag = false;
		}
	}
	if( idCardNo.length != null && idCardNo.length == 15){
		if(idCardNo.substring(idCardNo.length-1,idCardNo.length) % 2 == 0){
			flag = false;
		}
	}
	return flag;
});
//输入身份证号自动关联性别
function fullSexValue(idCardNo){
	if(idCardNo.length != null && idCardNo.length == 18){
		if(idCardNo.substring(idCardNo.length-2,idCardNo.length-1) % 2 == 0){
			$("#gender option").each(function() {
				if($(this).text() == '女') {
			    	$(this).attr("selected", "selected");
			    }
			});
		}else{
			$("#gender option").each(function() {
				if($(this).text() == '男') {
			    	$(this).attr("selected", "selected");
			    }
			});
		}
	}
	if( idCardNo.length != null && idCardNo.length == 15){
		if(idCardNo.substring(idCardNo.length-1,idCardNo.length) % 2 == 0){
			$("#gender option").each(function() {
				if($(this).text() == '女') {
			    	$(this).attr("selected", "selected");
			    }
			});
		}else{
			$("#gender option").each(function() {
				if($(this).text() == '男') {
			    	$(this).attr("selected", "selected");
			    }
			});
		}
	}
};
