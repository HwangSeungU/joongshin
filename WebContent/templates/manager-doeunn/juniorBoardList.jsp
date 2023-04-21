<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������������-�ִϾ�Խ��Ǹ��</title>
<link rel="stylesheet" href="../../static/css/manager-doeunn/junior-board-list.css">
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
                        <li onclick="location.href='userBoardList.jsp'">�̿��� �Խ���</li>
						<li onclick="location.href='juniorBoardList.jsp'">�ִϾ� �Խ���</li>
                    </ul>
               </section>

               <section class="navi-box">
                    <div class="flex-line">
                        <div class="icon message-icon"></div>
                        <div class="navi-title">���� ����</div>
                        <div class="arrow"></div>
                    </div>
                    <ul class="inquiries-list list">
                        <li onclick="location.href='inquiriesList.jsp'">��ü ���Ǹ��</li>
                    </ul>
               </section>
            </div>
        </header>
        <main>
            <div class="main-title-box">
                <h3>�ִϾ� �Խ���</h3>
            </div>
            <form class="main-container">
                <section class="top-line">
                    <div class="search">
                        <div class="search-icon"></div>
                        <input placeholder="�Խñ� �˻�" name="search"/>
                    </div>
                    <button type="button" class="delete-btn">�Խù� ����</button>
                </section>
                <table border="1">
                    <thead>
                        <tr>
                            <th><input type="checkbox" class="check-top"/></th>
                            <th>�Խù� ��ȣ</th>
                            <th>����</th>
                            <th>����</th>
                            <th>�ۼ���¥</th>
                            <th>ȸ����ȣ</th>
                        </tr>
                    </thead>
                    <tr>
                        <td><input type="checkbox" class="checkbox"/></td>
                        <td>1</td>
                        <td>������ �� �ڸ��Դϴ�</td>
                        <td>������ �� �ڸ��Դϴ�</td>
                        <td>2023-04-19</td>
                        <td>21</td>
                    </tr>
                </table>
            </form>
        </main>
   </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="../../static/js/manager-doeunn/junior-borad-list.js"></script>
</html>