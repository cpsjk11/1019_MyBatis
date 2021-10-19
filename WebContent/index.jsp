<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
	   table{
	      width: 500px;
	      border: 1px solid black;
	      border-collapse: collapse;
	   }
	   table th, table td{
	      border: 1px solid black;
	      padding: 4px;
	   }
	   table thead tr{
	      background-color: #dedede;
	   }
	   div#search_win{
	      width: 250px;
	      height: 90px;
	      padding: 5px;
	      border: 1px solid black;
	      background-color: #fff;
	      border-radius: 5px;
	      position: absolute;
	      top: 120px;
	      left: 200px;
	      display: none;
	   }
	</style>
</head>
<body>
	<header>
		<h1>전체사원</h1>
	</header>
	<article>
		<header>
			<button type="button" class="s_btn">이름검색</button>
			&nbsp;&nbsp;
			<button type="button" class="s_btn">사번검색</button>
			&nbsp;&nbsp;
			<button type="button" class="s_btn">직종검색</button>
			&nbsp;&nbsp;
		</header>
		<div>
			<table>
				<colgroup>
					<col width="80px">
					<col width="*">
					<col width="100px">
					<col width="70px">
				</colgroup>
				<thead>
					<tr>
						<th>사번</th>
						<th>이름</th>
						<th>직종</th>
						<th>부서</th>
					</tr>
				</thead>
				<tbody></tbody>
			</table>
		</div>
	</article>
	
	<div id="search_win">
		<form method="post" action="search.jsp">
			<input type="hidden" name="type" id="type"/>
			<div id="empno_s"><%--사번 검색시 보여질 영역 --%>
				<label for="s_empno">검색할 사번:</label>
				<input type="text" id="s_empno" name="s_empno"/>
			</div>
			<div id="name_s"><%--이름 검색시 보여질 영역 --%>
				<label for="s_name">검색할 이름:</label>
				<input type="text" id="s_name" name="s_name"/>
			</div>
			<div id="job_s"><%--직종 검색시 보여질 영역 --%>
				<label for="s_job">검색할 직종:</label>
				<input type="text" id="s_job" name="s_job"/>
			</div>
			<div id="btn">
				<input type="button" value="검색" id="search_btn"/>&nbsp;
				<input type="button" value="취소" id="cancel_btn"/>
			</div>
		</form>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
		$(function(){
			$(".s_btn").bind("click",function(){
				
				// 일단! search_win 안에 존재하는 div들을 모두 숨긴다.
				$("#search_win div").css("display","none");
				
				// 클릭한 버튼의 문자열이 "이름검색"이면 name_s라는 아이디를 가진 div 보여주기
				var str = $(this).text(); 
				
				if(str == "이름검색"){
					$("#name_s").css("display","block");
					$("#type").val("1");
					//document.forms[0].action = "search.jsp"	
				}else if(str == "사번검색"){
					$("#empno_s").css("display","block");
					$("#type").val("0");
					//document.forms[0].action = "search.jsp"	
				}else if(str == "직종검색"){
					$("#job_s").css("display","block");
					$("#type").val("2");
					//ocument.forms[0].action = "search.jsp"	
				}
				
				$("#btn").css("display","block");
				$("#search_win").css("display","block");
				
			});
			
			$("#cancel_btn").bind("click",function(){
				$("#search_win").css("display","none");
			});
			$("#search_btn").bind("click",function(){
				document.forms[0].submit();
			});
		});
	</script>
</body>
</html>








