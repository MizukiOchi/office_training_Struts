package struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessages;

public final class BirthdayAction extends Action {//Actionクラスをスーパークラスに指定して、AuthenticatonActionクラスを宣言する。
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {

		HttpSession session = request.getSession(); //getSessionメソッドを使用し、HttpSessionオブジェクトを取得。
		ActionMessages errors = new ActionMessages();//ActionMessagesは、単一のメッセージを管理するクラス

		//アクション・フォームBeanから値の取り出し
		BirthdayForm birthdayForm = (BirthdayForm) form;
		String birthday = birthdayForm.getBirthday();

		session.setAttribute("birthday", birthday);
		return (mapping.findForward("success"));

	}

}
