function StopButton(){
	document.getElementById(arguments[0]).disabled=true;
	document.getElementById(arguments[0]).value="�ύ("+arguments[1]+")";
	if(--arguments[1]>0){
		window.setTimeout("StopButton('"+arguments[0]+"',"+arguments[1]+")",1000);
	}
	if(arguments[1]<=0){
		document.getElementById(arguments[0]).value='comment';
		document.getElementById(arguments[0]).disabled=false;
	}
}
function GetComment($ID,$Page){
	$.ajax({
		url:"Comment.aspx?action=ajax_getcomment&id="+$ID+"&page="+$Page+"&time"+new Date().toString(),
		type:'GET',
        success: function () {
            $('#comment').html(arguments[0]);
		}
	});
}
function SendComment(){	
		var $CommentParentID	=arguments[0];
		var $CommentUser		=$('#CommentUser').val();
		var $CommentText		=$('#CommentText').val();
		var $CommentValidate	=$('#CommentValidate').val();
		if ($.trim($CommentUser)=='')
		{
			alert('������д�ǳƣ�');
			$('#CommentUser').focus();
			return false;
		}
		if ($.trim($CommentValidate)=='')
		{
			alert('������д��֤�룡');
			$('#CommentValidate').focus();
			return false;
		}		
		if ($.trim($CommentText)=='')
		{
			alert('������д�ظ����ݣ�');
			$('#CommentText').focus();
			return false;
		}
		if ($CommentText.length<5||$CommentText.length>200)
		{
			alert('���ݱ�����5-200��֮�䣡');		
			return false;
		}
		StopButton('CommentSubmit',10);
	$.ajax({
		url:"Comment.aspx?action=ajax_sendcomment&commentparentid="+$CommentParentID+"&commentuser="+escape($CommentUser)+"&commenttext="+escape($CommentText)+"&commentvalidate="+escape($CommentValidate)+"&time="+new Date().toString(),
		type:'GET',
		success:function(){
			if (arguments[0]=='ERROR')
			{
				alert('��֤�����');
			}else{
				GetComment($CommentParentID,1);
				alert(arguments[0]);
				$("#CommentText").val("");
					//��֤�ɹ�ʱ��ˢ����֤��ͼƬ
				$("#CommentValidateImages").attr("src","VerifyCode.aspx?s="+Math.random());
			}
			$("#CommentValidate").val("");
		}
	});
//SetCookie("CommentUser",$CommentUser,3);
}