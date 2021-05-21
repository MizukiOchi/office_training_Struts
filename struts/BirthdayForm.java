package struts;

import org.apache.struts.action.ActionForm;

public final class BirthdayForm extends ActionForm {

	private String birthday;

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	@Override
	public String toString() {
		return "BirthdayForm [birthday=" + birthday + "]";
	}

}
