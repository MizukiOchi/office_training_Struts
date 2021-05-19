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

<!--   ↓↓↓画面のデザイン設定（<head>内に設定すること）↓↓↓ -->
		<style>
		/** 共通部品 */
		body{
		margin-left: 950px;
		margin-top: 200px;
		background: #EEE8AA;
		}
		/** h3で反映される部品 */
		title{
		text-align: center;
		}
		/** InputImage部分の設定 */
		.InputImage{
		width: 500px;
		height: 500px;
		}
		/** .balloon部分の設定 */
		.balloon{
		position: relative;
		display: inline-block;
		margin-left: -900px;
		margin-top: -150px;
		margin-bottom: -300px;
		width: 300px;
		height: 150px;
		text-align: center;
		padding:50px 0;
		color: #FFF;
		font-family: fantasy;
		font-size: 25px;
		font-weight: bold;
		background: #778899;
		border-radius: 50%;
		box-sizing: border-box;
		}

		.balloon:before {
		content:\"\";
		position: absolute;
		bottom: -25px;
		left: 50%;
		margin-left: -15px;
		border: 15px solid transparent;
		border-top: 15px solid #778899;
		z-index: 0;
		}

		.balloon p {
		margin: 0;
		padding: 0;
		text-align: center;
		color: #fff;
		line-height: 90px !important;
		}
		/**画像の挿入*/
		/** .panda画像の設定 */
		.panda{
		margin-left: -900px;
		margin-top: 100px;
		width: 300px;
		height: 300px;
		}
		/**InputBirthdayの全体*/
		/** InputBirthday部分の設定*/
		.InputBirthday{
		float: left;
		}
		/**エラー文のデザイン*/
		/**errorMessage部分の設定*/
		.errorMessage{
		font-size: 14px;
		color: #CD5C5C;
		}
		/**説明文のデザイン*/
		/**.explain部分の設定 */
		.explain{
		font-size: 50px;
		font-family: cursive;
		color: #708090;
		}
	</style>
		<!--  ↑↑↑デザイン終了↑↑↑-->

</head>
<body>

<div class="InputBirthday">
<p class="explain">Input Your Birthday Here↓</p>

<%--エラーメッセージの処理 --%>
<html:errors/>  <%-- (3)<html:error/>タグはエラーが生成されている場合は、エラーメッセージを表示し、エラーが生成されていない場合は、何も表示したいタグ。--%>
<html:form action="/fortuneResults" focus="birthday"> <%-- (4) <html:form>タグはHTMLの<form>タグとほぼ同様の振舞いをするタグ。action属性はsubmitボタンが押された時の遷移先を指定。focus属性はこのJSPファイルが開かれた時にどのフォーム項目を初めに選択可能にするかを指定する。--%>
	<html:text property="birthday" size="8" /> <%-- (5) <html:text>タグはHTMLの<input type=text>タグとほぼ同様の振舞いをするタグ。property属性はHTMLのname属性、size属性はHTMLのsize属性と同様の働きをする。--%>
	<div class = "button">
	<html:submit property="submit" value="占う"/>
	</div>
</html:form>
</div>

<!-- 吹き出しと画像の追加処理 -->
		<div class="InputImage">
		<!-- 吹き出しの挿入 -->
		<div class="balloon">
		今日のあなたの運勢は...
		</div>
		<!-- 画像の挿入 -->
		<div>
		<img class="panda" src="/officeTrainingStruts/img/panda.jpg">
		</div>
		</div>
		<!-- ↑↑↑画面表示の内容↑↑↑  -->

</body>
</html>