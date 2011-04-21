
<%
	String title = "Stock Order";
%>
<%@ include file="/includes/header.jsp"%>
<link rel="stylesheet" href="/ireport/script/example.css"
	TYPE="text/css" MEDIA="screen">
<link rel="stylesheet" href="/ireport/script/example-print.css"
	TYPE="text/css" MEDIA="print">
<script type="text/javascript" src="/ireport/script/tabber.js"></script>
<style type="text/css">
.tabberlive .tabbertab {
	height: 400px;
	width: 800px;
}
</style>
<form id="myForm" name="myForm" action="<%=request.getContextPath()%>/pages/stock-order"
	method="post">
	<%	
	ArrayList<String> comboData = (ArrayList<String>) request
			.getAttribute("comboData");
%> <img
	src="<%=request.getContextPath()%>/images/icons/system-users.png">
<b>Stock Order Information</b> <br>
<br>
<div class="tabber">

<div class="tabbertab">
<h2>Tab 1</h2>
<p>
<table>
	<tr>
		<td>Item 1</td>
		<td><select name=field>
		<% for(String combo : comboData){ %>
    <option value="<%=combo %>"><%=combo %></option>
    <% } %>        
</select></td>				
	</tr>
	<tr>
		<td>Item 2</td>
		<td><input name="item-2" type="text" value="">&nbsp;<a onclick="OpenPop_UpList('<%=request.getContextPath()%>/pages/list?title=Search%20User&tableTitle=List%20Of%20User&itemName=item-2&showFields=username,address,division&queryData=userQuery');return false;" href="">Look up</a>
		</td>
	</tr>
	<tr>
		<td>Item 3&nbsp;&nbsp;</td>
		<td><input name="item-3" type="text" value="">&nbsp;<a onclick="OpenPop_UpList('<%=request.getContextPath()%>/pages/list?title=Search%20User%20Audit&tableTitle=List%20Of%20User%20Audit&itemName=item-3&showFields=user,date_time,action&queryData=userAuditQuery');return false;" href="">Look up</a>
		</td>
	</tr>	
</table>
</p>

</div>


<div class="tabbertab">
<h2>Tab 2</h2>
<p>
<table>
	<tr>
		<td>Item 4</td>
		<td><input name="item-4" type="text" value="">
		</td>
	</tr>
	<tr>
		<td>Item 5</td>
		<td><input name="item-5" type="text" value="">
		</td>
	</tr>
	<tr>
		<td>Item 6&nbsp;&nbsp;</td>
		<td><input name="item-6" type="text" value="">
		</td>
	</tr>	
</table>
</p>
</div>


<div class="tabbertab">

<h2>Tab 3</h2>
<p>
<table>
	<tr>
		<td>Item 7</td>
		<td><input name="item-7" type="text" value="">
		</td>
	</tr>
	<tr>
		<td>Item 8</td>
		<td><input name="item-8" type="text" value="">
		</td>
	</tr>
	<tr>
		<td>Item 9&nbsp;&nbsp;</td>
		<td><input name="item-9" type="text" value="">
		</td>
	</tr>	
</table>
</p>
</div>

</div>
<input type="submit" value="Order">
</form>
<%@ include file="/includes/footer.jsp"%>