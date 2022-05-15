<%@page import="com.ComplaintService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complaint Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/ComplaintManagement.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Complaint Management</h1>

				<form id="formComplaintManagement" name="formComplaintManagement" method="post" action="ComplaintManagement.jsp">


					UserID: <input id="user_id" name="user_id" type="text"
						class="form-control form-control-sm"> 
						
						<br>Mobile: <input id="mobile" name="mobile" type="number"
						class="form-control form-control-sm"> 
						
						<br> Complaint Type : <input id="com_type" name="com_type" type="text"
						class="form-control form-control-sm"> 
						
						<br> Complaint Descript : <input id="com_descript" name="com_descript" type="text"
						class="form-control form-control-sm">
						
						<br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidProjectIDSave" name="hidProjectIDSave" value="">
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>

				<br>
				<div id="divProjectGrid">
					<%
					ComplaintService projectObj = new ComplaintService();
						out.print(projectObj.readItems());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
