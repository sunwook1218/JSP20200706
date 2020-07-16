<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="chap11.Member"%>

<%
	String name = request.getParameter("name");
	if (name != null) {
		Member member = new Member();
		member.setName(name);
		member.setEmail(request.getParameter("email"));
		member.setSsn(Integer.parseInt(request.getParameter("ssn")));
		member.setAddress(request.getParameter("address"));
		application.setAttribute("member", member);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<style>
div {
	display: flex;
	justify-content: center;
}
</style>
<title>Insert title here</title>


</head>
<body>

	<div><h1>회원가입</h1> </div>
	<div>
		<form action="memberInfo.jsp" method="post">
			name: <input type="text" name="id" /> <br /> e-mail: <input
				type="text" name="email" /> <br /> ssn: <input type="number"
				name="ssn" /> <br /> address: <input type="text" name="address" />
			<br /> <input type="submit" value="가입" />
		</form>
	</div>
</body>
</html>