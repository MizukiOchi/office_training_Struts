<%--(1)pageディレクティブを使用し、JSPファイルの属性を指定--%>
<%@ page contentType="text/html; charset=Shift_JIS" %>
<%--(2)taglibディレクティブを使用し、JSPファイルで使用するタグライブラリを指定する。
ここでは、Strutsであらかじめ用意されているStrutsタグライブラリのうち、struts-html.tldの使用を指定する。
prefix属性により、struts-html.tldを使用する場合は、タグにhtmlを指定する。--%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

<html>
<head>
<meta charset="UTF-8">
<title>おみくじ</title>
</head>
<body>

<div class="InputBirthday">
<p class="explain">Input Your Birthday Here↓</p>

<%--エラーメッセージの処理 --%>
<html:errors/>  <%-- (3)<html:error/>タグはエラーが生成されている場合は、エラーメッセージを表示し、エラーが生成されていない場合は、何も表示したいタグ。--%>
<html:form action="/fortuneResults" focus="birthday"> <%-- (4) <html:form>タグはHTMLの<form>タグとほぼ同様の振舞いをするタグ。action属性はsubmitボタンが押された時の遷移先を指定。focus属性はこのJSPファイルが開かれた時にどのフォーム項目を初めに選択可能にするかを指定する。--%>
	<html:text property="birthday" size="8" /> <%-- (5) <html:text>タグはHTMLの<input type=text>タグとほぼ同様の振舞いをするタグ。property属性はHTMLのname属性、size属性はHTMLのsize属性と同様の働きをする。--%>
	<html:submit property="submit" value="送信"/>
</html:form>
</body>
</html>