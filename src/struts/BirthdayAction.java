package struts;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

public final class BirthdayAction extends Action {//Actionクラスをスーパークラスに指定して、AuthenticatonActionクラスを宣言する。
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {

		HttpSession session = request.getSession(); //getSessionメソッドを使用し、HttpSessionオブジェクトを取得。
//		ActionMessages errors = new ActionMessages();//ActionMessagesは、単一のメッセージを管理するクラス

		//アクション・フォームBeanから値の取り出し
		BirthdayForm birthdayForm = (BirthdayForm) form;
		String birthday = birthdayForm.getBirthday();

		List<ActionMessages> errorMessage = checkBirthday(birthday);
		if(errorMessage != null) {
//			saveErrors(request, errorMessage); //エラーの保存
			return (mapping.findForward("fail"));
		}else {
		session.setAttribute("birthday", birthday);
			return (mapping.findForward("success"));
		}
	}

	/**
	 * メソッドの説明：
	 * 受け取った誕生日の値が正しいかどうかをチェックするメソッド。
	 * １、入力された日付が８桁かのチェック
	 * ２、存在する日付かどうかのチェック
	 *
	 * @return checkBirthday(birthday)
	 */
	public static List<ActionMessages> checkBirthday(String birthday) {
		List<ActionMessages> checkBirthday = new ArrayList<ActionMessages>();
		ActionMessages errorsMessage = new ActionMessages();
		if (birthday.length() != 8) {
			errorsMessage.add(ActionMessages.GLOBAL_MESSAGE,
					new ActionMessage("errors.length")); //エラー生成
			checkBirthday.add(errorsMessage);
		}
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		format.setLenient(false);
		try {
			format.parse(birthday);
		} catch (Exception e) {
			errorsMessage.add(ActionMessages.GLOBAL_MESSAGE,
					new ActionMessage("errors.date")); //エラー生成
			checkBirthday.add(errorsMessage);
		}
		return checkBirthday; //遷移先の指定
	}

}
