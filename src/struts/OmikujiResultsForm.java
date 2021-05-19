package struts;

import org.apache.struts.action.ActionForm;

public final class OmikujiResultsForm extends ActionForm {

	private String birthday;
	private String fortuneName;
	private String wish;
	private String business;
	private String study;

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getFortuneName() {
		return fortuneName;
	}

	public void setFortuneName(String fortuneName) {
		this.fortuneName = fortuneName;
	}

	public String getWish() {
		return wish;
	}

	public void setWish(String wish) {
		this.wish = wish;
	}

	public String getBusiness() {
		return business;
	}

	public void setBusiness(String business) {
		this.business = business;
	}

	public String getStudy() {
		return study;
	}

	public void setStudy(String study) {
		this.study = study;
	}

	@Override
	public String toString() {
		return "OmikujiResultsForm [birthday=" + birthday + ", fortuneName=" + fortuneName + ", wish=" + wish
				+ ", business=" + business + ", study=" + study + "]";
	}

}
