<%--(1)page�f�B���N�e�B�u���g�p���AJSP�t�@�C���̑������w��--%>
<%@ page contentType="text/html; charset=Shift_JIS" %>
<%--(2)taglib�f�B���N�e�B�u���g�p���AJSP�t�@�C���Ŏg�p����^�O���C�u�������w�肷��B
�����ł́AStruts�ł��炩���ߗp�ӂ���Ă���Struts�^�O���C�u�����̂����Astruts-html.tld�̎g�p���w�肷��B
prefix�����ɂ��Astruts-html.tld���g�p����ꍇ�́A�^�O��html���w�肷��B--%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

<html>
<head>
<meta charset="UTF-8">
<title>���݂���</title>

<!--   ��������ʂ̃f�U�C���ݒ�i<head>���ɐݒ肷�邱�Ɓj������ -->
		<style>
		/** ���ʕ��i */
		body{
		margin-left: 750px;
		margin-top: 200px;
		background: #EEE8AA;
		}
		/** h3�Ŕ��f����镔�i */
		title{
		text-align: center;
		}
		/** InputImage�����̐ݒ� */
		.InputImage{
		width: 500px;
		height: 500px;
		}
		/** .balloon�����̐ݒ� */
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
		/**�摜�̑}��*/
		/** .panda�摜�̐ݒ� */
		.panda{
		margin-left: -1000px;
		margin-top: 100px;
		width: 300px;
		height: 300px;
		}
		/**InputBirthday�̑S��*/
		/** InputBirthday�����̐ݒ�*/
		.InputBirthday{
		float: left;
		}
		/**�G���[���̃f�U�C��*/
		/**errorMessage�����̐ݒ�*/
		.errorMessage{
		font-size: 18px;
		color: #CD5C5C;
		}
		/**�������̃f�U�C��*/
		/**.explain�����̐ݒ� */
		.explain{
		font-size: 50px;
		font-family: cursive;
		color: #708090;
		}
	</style>
		<!--  �������f�U�C���I��������-->

</head>
<body>

<div class="InputBirthday">
<p class="explain">Input Your Birthday Here��</p>

<%--�G���[���b�Z�[�W�̏��� --%>
<div class="errorMessage">
<html:errors/>  <%-- (3)<html:error/>�^�O�̓G���[����������Ă���ꍇ�́A�G���[���b�Z�[�W��\�����A�G���[����������Ă��Ȃ��ꍇ�́A�����\���������^�O�B--%>
</div>
<html:form action="/fortuneResults" focus="birthday"> <%-- (4) <html:form>�^�O��HTML��<form>�^�O�Ƃقړ��l�̐U����������^�O�Baction������submit�{�^���������ꂽ���̑J�ڐ���w��Bfocus�����͂���JSP�t�@�C�����J���ꂽ���ɂǂ̃t�H�[�����ڂ����߂ɑI���\�ɂ��邩���w�肷��B--%>
	<html:text property="birthday" size="8" /> <%-- (5) <html:text>�^�O��HTML��<input type=text>�^�O�Ƃقړ��l�̐U����������^�O�Bproperty������HTML��name�����Asize������HTML��size�����Ɠ��l�̓���������B--%>
	<div class = "button">
	<html:submit property="submit" value="�肤"/>
	</div>
</html:form>
</div>

<!-- �����o���Ɖ摜�̒ǉ����� -->
		<div class="InputImage">
		<!-- �����o���̑}�� -->
		<div class="balloon">
		�����̂��Ȃ��̉^����...
		</div>
		<!-- �摜�̑}�� -->
		<div>
		<img class="panda" src="/officeTrainingStruts/img/panda.jpg">
		</div>
		</div>
		<!-- ��������ʕ\���̓��e������  -->

</body>
</html>