package struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessages;

public final class ReturnAction extends Action { //Actionクラスをスーパークラスに指定して、AuthenticatonActionクラスを宣言する。
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {

//		OmikujiResultsForm OmikujiResultsForm = (OmikujiResultsForm) form;
//		String birthday = OmikujiResultsForm.getBirthday();
		HttpSession session = request.getSession();
		String birthday = (String) session.getAttribute("birthday");

		ActionMessages messages  = getErrors(request);
		if(messages.isEmpty()) {
			birthday = "";
			return (mapping.findForward("success"));
	}
		return null;
	}
}