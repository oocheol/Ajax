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


	<button onclick="load()">�ҷ�����</button>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
   
	function load() {
	      $.ajax({
	         url : 'ex02json',
	         type : 'post',
	         //data : {},
	         dataType : 'json', // json String������ --> javascript��ü
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
	               
	               // $('������').html('code')
	               // --> ������ �±� "��"�����
	               // $('������').before('code')
	               // --> ������ �±� �ٷξտ� �߰�
	               // $('������').after('code')
	               // --> ������ �±� �ٷεڿ� �߰�
	               // $('������').append('code')
	               // --> ������ �±� "��"�� �߰�
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