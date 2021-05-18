<%@ page contentType="text/html; charset=Shift_JIS" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<logic:notPresent name="birthday" scope="session">  <%-- (1)loginタグライブラリの<logic:notPresent>タグはname属性で指定したオブジェクトが生成されていない場合、<logic:redirect>タグで指定されたページへ遷移する処理を行う。<logic:redirect>タグのforward属性で指定されたキーワードに合致する遷移先のページが開くジョン・コンフィギュレーション・ファイルに指定されます。((2)で説明) --%>
    <logic:redirect forward="fail"/>
</logic:notPresent>

<html>
<head>
<title>今日のあなたの運勢は</title>
</head>
<body>

		<div class="title">あなたの今日の運勢は、</div>
		<div class="unsei"><bean:write name="unsei" scope="session"/>
		</div>
		<div class="wish">
			願い事：<bean:write name="wish" scope="session"/></div>
		<div class="business">
			商い：<bean:write name="business" scope="session"/></div>
		<div class="study">
			学問：<bean:write name="study" scope="session"/><br>
		</div >
		</div>
		<img class="panda" src="img/panda.jpg">
		<div class="button">
			<button class="btn btn--green btn--emboss btn--cubic" type=button onclick="history.back()">RETURN</button>
			<a class="btn btn--green btn--emboss btn--cubic" href="/office_training_Servlet_JSP/HalfMonthResults">RESULTS OF PERCENTAGE</a>
			<a class="btn btn--green btn--emboss btn--cubic" href="/office_training_Servlet_JSP/SameBirthday">YOUR FORTUNE RESULTS</a>
	</div>

	 <bean:write name="birthday" scope="session"/> <%-- (2) beanタグライブラリの<bean:write>タグはname属性で指定されたオブジェクトが生成されている場合、その値を表示する。ここでは、login.jspファイルの(5)で説明したフォームに入力された値が表示される。--%>


</body>
</html>