package illsang.manage.em;

public enum Code {

	Y("사용", "1", "true"), 
	N("미사용", "0", "false"),
	SUCCESS("성공", "0", "SUCCESS"),
	FAIL("실패", "-1", "FAIL");
	
	String name; // view text
	String code; // code
	String desc; // descript
	
	private Code(String name, String code, String desc) {
		this.name = name;
		this.code = code;
		this.desc = desc;
	}

	public String getName() {
		return name;
	}

	public String getCode() {
		return code;
	}

	public String getDesc() {
		return desc;
	}
	
}
