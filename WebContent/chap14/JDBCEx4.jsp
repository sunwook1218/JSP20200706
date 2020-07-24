<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/mytags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h1>데이터 입력</h1>
	<form action="" method="post">
		이름 : <input type="text" name="name" /> 
		나이 : <input type="number" name="age" /> 
		<input type="submit" value="입력" />
	</form>
	<%
		String name = request.getParameter("name");
		String age = request.getParameter("age");

		if (name != null && age != null) {

			// 1. 클래스 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 2. 연결 생성
			// 		2. 1) 접속정보
			String url = "jdbc:mysql://localhost/test1" + "?serverTimezone=Asia/Seoul";
			String id = "root";
			String pw = "rootpw";

			Connection con = DriverManager.getConnection(url, id, pw);
			// 3. statement 생성
			String sql = "INSERT INTO member VALUES ('" + name + "', " + age + ")";
			Statement stmt = con.createStatement();
			// 4. 쿼리 실행
			int result = stmt.executeUpdate(sql);
			// 5. 결과 처리
			out.println(result);
			out.print(sql);
			// 6. 자원 종료
			if (stmt != null) {
				stmt.close();
			}
			if (con != null) {
				con.close();
			}
		}
	%>
</body>
</html>