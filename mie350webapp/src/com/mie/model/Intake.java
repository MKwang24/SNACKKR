package com.mie.model;

import java.util.Date;

public class Intake {
	private String email;
	private Date date = new Date();
	private String meal;
	private String foods;

	public String getEmail(){
		return email;
	}
	public Date getDate(){
		return date;
	}
	public String getMeal(){
		return meal;
	}
	public String getFoods(){
		return foods;
	}
	public void setEmail(String email){
		this.email = email;
	}
	public void setDate(Date date){
		this.date = date;
	}
	public void setMeal(String meal){
		this.meal = meal;
	}
	public void setFoods(String foods){
		this.foods = foods;
	}
	public String toString(){
		return this.meal;
	}
}