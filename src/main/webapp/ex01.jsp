<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<input type="text" id="input" name="data">
	<button onClick="ajax()">전송하기</button>

	<p id="result">결과값 출력</p>


	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	
		function ajax(){
			
			// 1. 데이터 수집
			// $('선택자').html() --> 여는(맨처음)/닫는(맨마지막) 태그 사이 모든 코드를 리턴
			// $('선택자').html('123123') --> html()안에 데이터를 입력하면 해당내용으로 덮어씌움
			//$('button').html(); // <-- '전송하기' 출력
			
			// $('선택자').val() --> value 속성값, 입력해둔 값을 가져올 수 있다.
			let data = $('#input').val()
			
			// 속성으로 선택
			// $('태그명[속성명=속성값]')
			let data2 = $('input[name=data]').val()
			
			// 2. AJAX 요청
			$.ajax({
				url : 'ex01ajax', // 요청할 URL(url Mapping)
				type : 'POST', // GET? POST?
				data : {
					// JavaScript 객체 형태
					// "name" : value,
					"data" : data
				},
				// dataType : 'json', // 응답받는 데이터 형식
				success : function(res){
					// 성공 시 실행될 함수
					// 매개변수 --> 응답받은 내용이 자동으로 들어감(res)
					console.log(res);
					// p태그 선택
					// p태그 안에 있는 값 덮어쓰기
					$('#result').html(res);
				},
				error : function(){
					// 에러 발생시 실행될 함수
					alert('error!');
				}
				
			});
			
			
		}
	
	</script>


</body>
</html>