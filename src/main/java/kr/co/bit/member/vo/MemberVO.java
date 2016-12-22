package kr.co.bit.member.vo;

public class MemberVO {
	
	private String id;
	private String password;
	private String name;
	private String gender;
	private String birth;
	private String addr;
	private String email;
	private String tel;
	private String favoritePlaces;
	private String nickname;
	private String type;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getFavoritePlaces() {
		return favoritePlaces;
	}
	public void setFavoritePlaces(String favoritePlaces) {
		this.favoritePlaces = favoritePlaces;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", gender=" + gender + ", birth="
				+ birth + ", addr=" + addr + ", email=" + email + ", tel=" + tel + ", favoritePlaces=" + favoritePlaces
				+ ", nickname=" + nickname + ", type=" + type + "]";
	}
	
}
