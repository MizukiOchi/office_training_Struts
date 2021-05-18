package struts;

import org.apache.struts.action.ActionForm;

public final class OmikujiResultsForm extends ActionForm {

	private String birthday;
	private String unsei;
	private String wish;
	private String busines;
	private String study;

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getUnsei() {
		return unsei;
	}

	public void setUnsei(String unsei) {
		this.unsei = unsei;
	}

	public String getWish() {
		return wish;
	}

	public void setWish(String wish) {
		this.wish = wish;
	}

	public String getBusines() {
		return busines;
	}

	public void setBusines(String busines) {
		this.busines = busines;
	}

	public String getStudy() {
		return study;
	}

	public void setStudy(String study) {
		this.study = study;
	}

	@Override
	public String toString() {
		return "BirthdayForm [birthday=" + birthday + ", unsei=" + unsei + ", wish=" + wish + ", busines=" + busines
				+ ", study=" + study + ", servlet=" + servlet + ", multipartRequestHandler=" + multipartRequestHandler
				+ ", getBirthday()=" + getBirthday() + ", getUnsei()=" + getUnsei() + ", getWish()=" + getWish()
				+ ", getBusines()=" + getBusines() + ", getStudy()=" + getStudy() + ", getServlet()=" + getServlet()
				+ ", getServletWrapper()=" + getServletWrapper() + ", getMultipartRequestHandler()="
				+ getMultipartRequestHandler() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}

}
