package struts;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import Bean.ResultsBean;
import DAO.ResultsDao;

public final class SameBirthdayAction extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {

		/**今日の日付を取得する */
		Date today = new Date();
		java.sql.Date resultsDate = convert(today);

		/**今日から半年前の日付を取得*/
		Calendar calendar = Calendar.getInstance();
		calendar.add(Calendar.MONTH, -6);
		today = calendar.getTime();
		java.sql.Date sqlDate = convert(today);

		/**いま入力された誕生日の過去半年間の結果を取得*/
		HttpSession session = request.getSession();
		String birthday = (String) session.getAttribute("birthday");
		List<ResultsBean> pastBirhdayResults = ResultsDao.pastBirhdayResults(sqlDate, resultsDate, birthday);

		request.setAttribute("pastBirhdayResults", pastBirhdayResults);
		return (mapping.findForward("success"));

	}

	/**
	 * メソッドの説明：
	 * utilクラスのDate型からsqlクラスのDate型に変換するメソッド
	 * （SQLで取得した本日の日付を使用するために、SQL使用できる型に変換する）
	 *
	 * @param java.util.Date utilDate
	 * @return resultDate
	 */
	private static java.sql.Date convert(java.util.Date utilDate) {
		java.sql.Date resultDate = new java.sql.Date(utilDate.getTime());
		return resultDate;
	}

}
