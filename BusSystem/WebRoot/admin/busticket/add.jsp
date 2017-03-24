<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<HTML>
<HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath}/admin/css/Style.css"
	type="text/css" rel="stylesheet">


</HEAD>

<body>
	<form id="userAction_save_do" name="Form1" method="post"
		action="${pageContext.request.contextPath }/addBusticketServlet" >
		&nbsp;
		<table cellSpacing="1" cellPadding="5" width="100%" align="center"
			bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
			<tr>
				<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
					height="26"><strong><STRONG>添加车票信息</STRONG> </strong>
				</td>
			</tr>


		<tr>
					<td>
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
							<tr>
								<td height="22" align="center" bgColor="#f5fafe" class="ta_01">
									线路编号：</td>
								<td class="ta_01" bgColor="#ffffff">
										<select name="buslineNO">
										<option value="">-------请选择-------</option>
									<c:forEach items="${busline }" var="busline">
											<option value="${busline.buslineNO }">${busline.buslineNO }</option>
									</c:forEach>
										</select>${msg.buslineNO }
								</td>
								<td height="22" align="center" bgColor="#f5fafe" class="ta_01">
									票价：</td>
								<td class="ta_01" bgColor="#ffffff"><input type="text"
									name="ticketprice" size="15" value="" id="Form1_userName"
									class="bg" />${msg.ticketprice }</td>
							</tr>

							<tr>
								<td height="22" align="center" bgColor="#f5fafe" class="ta_01">
									购票日期：</td>
								<td class="ta_01" bgColor="#ffffff"><input type="date"
									name="ticketbuydate" />${msg.ticketbuydate }</td>
								<td height="22" align="center" bgColor="#f5fafe" class="ta_01">
									使用日期：</td>
								<td class="ta_01" bgColor="#ffffff"><input type="date"
									name="ticketusedate" />${msg.ticketusedate }</td>
							</tr>
							<TR>
								<TD class="ta_01" align="center" bgColor="#f5fafe">备注：</TD>
								<TD class="ta_01" bgColor="#ffffff" colSpan="3"><textarea
										name="ticketmemo" cols="30" rows="3" style="WIDTH: 96%"></textarea>
								</TD>
							</TR>

			<TR>
				<td align="center" colSpan="4" class="sep1"><img
					src="${pageContext.request.contextPath}/admin/images/shim.gif">
				</td>
			</TR>


			<tr>
				<td class="ta_01" style="WIDTH: 100%" align="center"
					bgColor="#f5fafe" colSpan="4">
					
					
						
					<input type="submit" class="button_ok" value="确定">	
						
					<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
					
					
					
					<input type="reset" value="重置" class="button_cancel">

					<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <INPUT
					class="button_ok" type="button" onclick="history.go(-1)" value="返回" />
					<span id="Label1">
					
					</span>
				</td>
			</tr>
		</table>
	</form>
</body>
</HTML>