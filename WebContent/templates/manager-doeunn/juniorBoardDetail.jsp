<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������������-�̿��ڰԽñ� ��</title>
<link rel="stylesheet" href="../../static/css/manager-doeunn/junior-board-detail.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
   <div class="wrap">
        <header class="navi-bar">
            <div class="logo"></div>
            <div class="navi-container">
                <!-- navi-box �ϳ��� ū ī�װ� �ϳ��� �ش��մϴ�-->
               <section class="navi-box">
                    <div class="flex-line">
                        <div class="icon board-icon"></div>
                        <div class="navi-title">Ŀ�´�Ƽ ����</div>
                        <div class="arrow"></div>
                    </div>
                    <ul class="board-list list">
                        <li>�̿��� �Խ���</li>
                        <li>�ִϾ� �Խ���</li>
                    </ul>
               </section>

               <section class="navi-box">
                    <div class="flex-line">
                        <div class="icon message-icon"></div>
                        <div class="navi-title">���� ����</div>
                        <div class="arrow"></div>
                    </div>
                    <ul class="inquiries-list list">
                        <li>��ü ���Ǹ��</li>
                    </ul>
               </section>
            </div>
        </header>
        <main>
            <div class="main-title-box">
                <h4 onclick="location.href='juniorBoardList.jsp'">�� ��� ȭ������ ���ư���</h3>
            </div>
            <div class="main-container">
                <section class="content">
                   <div class="line">
                    <div class="box title">����</div>
                    <div class="box item">������ �� �ڸ��Դϴ�.</div>
                   </div>
                   <div class="line">
                    <div class="box title">�ۼ���</div>
                    <div class="box item">�ۼ���</div>
                   </div>
                   <div class="line">
                    <div class="box title">�ۼ���¥</div>
                    <div class="box item">�ۼ���¥</div>
                   </div>
                   <div class="line">
                    <div class="box title">����</div>
                    <div class="box item">������ �� �ڸ��Դϴ�.</div>
                   </div>
                   <div class="line">
                    <button class="button go-to-post-btn">�ش� �Խù� �������� �̵��ϱ�</button>
                   </div>
                   <div class="line">
                    <button class="button remove-btn">�����ϱ�</button>
                   </div>
                </section>
            </form>
        </main>
   </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="../../static/js/manager-doeunn/user-board-detail.js"></script>
</html>