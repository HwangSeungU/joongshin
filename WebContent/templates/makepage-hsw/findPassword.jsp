<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��й�ȣ ã��</title>
</head>
<link href="../../static/css/singupcss-hsw/basic.css" rel="stylesheet">
<body>
	<div>
		<div class="find">
			<h2>��й�ȣ ã��</h2>
			<div class="card">
				<form>
					<div class="form-row">
						<div id="email" class="col-12">
							<fieldset class="form-group">
								<legend class="legen-text">������ �̸��� �ּҸ� �Է����ּ���</legend>
								<div>
									<input name="email" type="email"
										placeholder="example@joongsin.com" maxlength="30"
										class="inputclass">
									<div class="col-14">
										<small class="notice">�����Ͻ� �̸��� �ּҸ� �Է����ֽø� <br>���ο� ��й�ȣ�� ���� ������ ��ũ�� �����帳�ϴ�.</small> 
									</div>
									<!-- �Է�â ���콺�� Ŭ���� �����ϰ� ��ũ��Ʈ �ۼ� -->
								</div>
							</fieldset>
						</div>
						<div id="sendEmail" class="col-12">
							<button type="submit" class="btn-signup">
								<span class="btntext">�̸��� �����ϱ�</span>
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>