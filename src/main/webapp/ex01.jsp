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
	<button onClick="ajax()">�����ϱ�</button>

	<p id="result">����� ���</p>


	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	
		function ajax(){
			
			// 1. ������ ����
			// $('������').html() --> ����(��ó��)/�ݴ�(�Ǹ�����) �±� ���� ��� �ڵ带 ����
			// $('������').html('123123') --> html()�ȿ� �����͸� �Է��ϸ� �ش系������ �����
			//$('button').html(); // <-- '�����ϱ�' ���
			
			// $('������').val() --> value �Ӽ���, �Է��ص� ���� ������ �� �ִ�.
			let data = $('#input').val()
			
			// �Ӽ����� ����
			// $('�±׸�[�Ӽ���=�Ӽ���]')
			let data2 = $('input[name=data]').val()
			
			// 2. AJAX ��û
			$.ajax({
				url : 'ex01ajax', // ��û�� URL(url Mapping)
				type : 'POST', // GET? POST?
				data : {
					// JavaScript ��ü ����
					// "name" : value,
					"data" : data
				},
				// dataType : 'json', // ����޴� ������ ����
				success : function(res){
					// ���� �� ����� �Լ�
					// �Ű����� --> ������� ������ �ڵ����� ��(res)
					console.log(res);
					// p�±� ����
					// p�±� �ȿ� �ִ� �� �����
					$('#result').html(res);
				},
				error : function(){
					// ���� �߻��� ����� �Լ�
					alert('error!');
				}
				
			});
			
			
		}
	
	</script>


</body>
</html>