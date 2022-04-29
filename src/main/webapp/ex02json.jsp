<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<table border="1">
	<thead>		
		<tr>
			<td>email</td>
			<td>pw</td>
			<td>tel</td>
			<td>address</td>
		</tr>
		</thead>
		<tbody>
		
		</tbody>
	</table>


	<button onclick="load()">불러오기</button>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
   
	function load() {
	      $.ajax({
	         url : 'ex02json',
	         type : 'post',
	         //data : {},
	         dataType : 'json', // json String데이터 --> javascript객체
	         success : function(res){
	            // 1 -> JsonObject : { }
	            // 2+ -> JsonArray : [ { }, { }, { } ]
	            console.log(res);
	            $('tbody').html('');
	            for (var i = 0; i < res.length; i++) {
	               let email = res[i].email;
	               let pw = res[i].pw;
	               let tel = res[i].tel;
	               let addr = res[i].address;
	               
	               // $('선택자').html('code')
	               // --> 선택한 태그 "안"덮어쓰기
	               // $('선택자').before('code')
	               // --> 선택한 태그 바로앞에 추가
	               // $('선택자').after('code')
	               // --> 선택한 태그 바로뒤에 추가
	               // $('선택자').append('code')
	               // --> 선택한 태그 "안"에 추가
	               tr = `
	                  <tr>
	                     <td>`+email+`</td>
	                     <td>`+pw+`</td>
	                     <td>`+tel+`</td>
	                     <td>`+addr+`</td>
	                  </tr>
	               `;
	               $('tbody').append(tr);
	               
	            }
	            
	         },
	         error : function() { alert("error!"); }
	      });
	   }
   
   
   </script>

</body>
</html>