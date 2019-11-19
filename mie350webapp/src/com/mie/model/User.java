package com.mie.model;

import java.util.Date;

public class User{
	/**
	 * This class contains all of the relevant information, and getter/setter
	 * methods for the Member object.
	 */
	private int userid;
	private String firstName;
	private String lastName;
	private String nickname;
	private int yearofbirth;
	private String email;
	private String password;
	private String sex;
	private String healthcondition;
	private int height;
	private int weight;
	private String objectives;
	private boolean valid;

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}
	public void setYearofBirth(int yearofbirth){
		this.yearofbirth = yearofbirth;
	}
	public int getYearofBirth(){
		return yearofbirth;
	}
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getsex() {
		return sex;
	}

	public void setsex(String sex) {
		this.sex = sex;
	}
	
	public String gethealthcondition() {
		return healthcondition;
	}

	public void sethealthcondition(String healthcondition) {
		this.healthcondition = healthcondition;
	}
	
	public int getheight() {
		return height;
	}

	public void setheight(int height) {
		this.height = height;
	}
	public int getweight() {
		return weight;
	}

	public void setweight(int weight) {
		this.weight = weight;
	}
	
	public String getobjectives() {
		return objectives;
	}

	public void setobjectives(String objectives) {
		this.objectives = objectives;
	}
	
	public boolean isValid() {
		return valid;
	}

	public void setValid(boolean newValid) {
		valid = newValid;
	}
	
	

	@Override
	public String toString() {
		return "Member [userid=" + userid + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", nickname=" + nickname
				+ ", password=" + password + ", email=" + email +", sex=" + sex +", healthcondition=" + healthcondition +", height=" + height + ", weight=" + weight  + ", objectives=" + objectives  +  "]";
	}
}