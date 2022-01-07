package mul.camp.a.dto;

import java.io.Serializable;

public class MemberDto implements Serializable{	// 직렬화(데이터에 줄을 세우는것)
	private String id;
	private String pwd;
	private String name;
	private String email;
	private int auth;
	private String aka;
	private String img;
	private String qst;
	private String asw;
	private int exp;
	private int lv;
	
	@Override
	public String toString() {
		return "MemberDto [id=" + id + ", pwd=" + pwd + ", name=" + name + ", email=" + email + ", auth=" + auth
				+ ", aka=" + aka + ", img=" + img + ", qst=" + qst + ", asw=" + asw + ", exp=" + exp + ", lv=" + lv
				+ "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getAuth() {
		return auth;
	}

	public void setAuth(int auth) {
		this.auth = auth;
	}

	public String getAka() {
		return aka;
	}

	public void setAka(String aka) {
		this.aka = aka;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getQst() {
		return qst;
	}

	public void setQst(String qst) {
		this.qst = qst;
	}

	public String getAsw() {
		return asw;
	}

	public void setAsw(String asw) {
		this.asw = asw;
	}

	public int getExp() {
		return exp;
	}

	public void setExp(int exp) {
		this.exp = exp;
	}

	public int getLv() {
		return lv;
	}

	public void setLv(int lv) {
		this.lv = lv;
	}

	public MemberDto(String id, String pwd, String name, String email, int auth, String aka, String img, String qst,
			String asw, int exp, int lv) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.auth = auth;
		this.aka = aka;
		this.img = img;
		this.qst = qst;
		this.asw = asw;
		this.exp = exp;
		this.lv = lv;
	}

	public MemberDto() {		
	}

}
