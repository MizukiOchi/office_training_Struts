<%@ page contentType="text/html; charset=Shift_JIS" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html>
<head>
<meta charset="UTF-8">
<title>おみくじ結果</title>
<%--↓↓↓結果出力画面のレイアウト↓↓↓ --%>
<style>
body {
	margin-left: 500px;
	margin-top: 50px;
	background: #EEE8AA;
}
.fortune {
	color: #708090;
	font-family: fantasy;
	margin-top: 10px;
	margin-left: -50px;
}
.title {
	font-size: 30px;
}
.unsei {
	font-size: 35px;
	margin-left: 100px;
	color: #CD5C5C;
}
.wish {
	font-size: 20px;
}
.business {
	font-size: 20px;
}
.study {
	font-size: 20px;
}
<%--画像--%>
.panda{
margin-left: 400px;
margin-top: 50px;
width: 300px;
height: 300px;
}
<%--共通ボタン--%>
<%--まずはお決まりのボックスサイズ算出をborer-boxに --%>
 *, *:before, *:after {
	-webkit-box-sizing: inherit;
	box-sizing: inherit;
}
html {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	font-size: 62.5%; /*rem算出をしやすくするために*/
}
.button, .btn, a.btn, button.btn {
	font-size: 1.6rem;
	font-weight: 700;
	line-height: 1.5;
	position: relative;
	display: inline-block;
	padding: 1rem 4rem;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	-webkit-transition: all 0.3s;
	transition: all 0.3s;
	text-align: center;
	vertical-align: middle;
	text-decoration: none;
	letter-spacing: 0.1em;
	color: #000000;
	border-radius: 0.5rem;
	border: 0px none;
	font-family: arial narrow;
}
a.btn--green.btn--emboss {
	color: #000000;
	text-shadow: -1px -1px 1px 55d8ff;
	border-bottom: 5px solid #C0C0C0;
	background: #FFFFFF;
}
a.btn--green.btn--cubic:hover {
	margin-top: 3px;
	border-bottom: 2px solid #C0C0C0;
}
button.btn--green.btn--emboss {
	color: #000000;
	text-shadow: -1px -1px 1px 55d8ff;
	border-bottom: 5px solid #C0C0C0;
	background: #FFFFFF;
}
button.btn--green.btn--cubic:hover {
	margin-top: 3px;
	border-bottom: 2px solid #C0C0C0;
}
.button{
margin-top: 30px;
margin-left: -200px;
}
</style>
<%--↑↑↑結果出力画面のレイアウト↑↑↑ --%>
</head>
<body>

<div class="fortune">
		<div class="title">あなたの今日の運勢は、</div>

		<div class="unsei">
	 	<bean:write  name="results" property="fortuneName" scope="session"/>
	 	</div>
		<div class="wish">
			願い事：<bean:write name="results" property="wish" scope="session"/>
		</div>
		<div class="business">
			商い：<bean:write name="results" property="business"  scope="session"/>
		</div>
		<div class="study">
			学問：<bean:write name="results" property="study" scope="session"/><br>
		</div>
		</div>

		<img class="panda" src="img/panda.jpg">
		<div class="button">
			<button class="btn btn--green btn--emboss btn--cubic" type=button onclick="history.back()">RETURN</button>
			<%-- <html:form action="hmResults"/>
			<html:submit property="submit" value="RESULTS OF PERCENTAGE"/> --%>
			<a class="btn btn--green btn--emboss btn--cubic"  href="/officeTrainingStruts/hmResults.do">RESULTS OF PERCENTAGE</a>
			<a class="btn btn--green btn--emboss btn--cubic" href="/officeTrainingStruts/sbResults.do">YOUR FORTUNE RESULTS</a>
	</div>

</body>
</html>