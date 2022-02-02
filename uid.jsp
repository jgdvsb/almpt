<script language="javascript">
function validateForm(){
if(""==document.contact.name.value){
alert("Please enter your First Name.");
document.contact.name.focus();
return false;
}
}
</script>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta content="en-us" http-equiv="Content-Language" />
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Untitled 0</title>
<style type="text/css">
.style1 {
	font-size: xx-large;
	margin-left: 80px;
}
</style>
</head>

<body>

<p>&nbsp;</p>
<p class="style1">City:<%=request.getParameter("city")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
Date:<%=request.getParameter("date")%></p>
<form name="contact" method="get" action="reg.jsp" onSubmit="return validateForm(contact);">
	<table style="width: 100%">
		<tr>
			<td style="width: 215px">Name</td>
			<td style="width: 359px">
			<input name="name" size="50" tabindex="1" type="text" /></td>
			<td>*</td>
		</tr>
		<tr>
			<td style="width: 215px">Phone No</td>
			<td style="width: 359px">
			<input name="phone" size="50" tabindex="2" type="text" /></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td style="width: 215px">E-Mail</td>
			<td style="width: 359px">
			<input name="email" size="50" tabindex="3" type="text" /></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td style="width: 215px"><input name="city" type="hidden" value=<%=request.getParameter("city")%>></td>
			<td style="width: 359px"><input name="date" type="hidden" value=<%=request.getParameter("date")%>></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td style="width: 215px">
			<input name="Submit1" style="width: 168px" type="submit" value="submit" /></td>
			<td style="width: 359px">
			<input name="Reset1" style="width: 154px" type="reset" value="reset" /></td>
			<td>&nbsp;</td>
		</tr>
	</table>
</form>
<p>&nbsp;</p>

</body>

</html>
