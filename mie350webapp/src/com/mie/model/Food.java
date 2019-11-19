package com.mie.model;
/** This is the work done by Mingkun Wang
 * 
 * @author mingkunkev.wang@mail.utoronto.ca
 *
 */


public class Food {
	/**
	 * This class contains all of the relevant information, and getter
	 * methods for the Food object.
	 */

	private int foodid;
	private String FoodName;
	private int TotFat;
	//private int SaturatedFat;
	private int sodium;
	private int VD;
	private int VC;
	private int Protein;
	private int Calories;
	private int Carbohydrate;
	private int sugars;
	private int water;
	
	public int getFoodid() {
		return foodid;//
	}
	public void setFoodid(int foodid) {
		this.foodid = foodid;
	}
	public String getFoodName() {
		return FoodName;//
	}
	public void setFoodname(String name) {
		this.FoodName = name;
	}
	public int getCalories() {
		return Calories;//
	}
	public void setCalories(int cal) {
		this.Calories = cal;
	}
	public int getTotFat() {
		return TotFat;//
	}
	public void setTotFat(int TotFat) {
		this.TotFat = TotFat;
	}
	public int getSodium() {
		return sodium;//
	}
	public void setSodium(int sodium) {
		this.sodium = sodium;
	}
	public int getCarb() {
		return Carbohydrate;//
	}
	public void setCarb(int carb) {
		this.Carbohydrate = carb;
	}
	public int getSugars() {
		return sugars;//
	}
	public void setSugars(int sugars) {
		this.sugars = sugars;
	}
	public int getProteins() {
		return Protein;//
	}
	public void setProtein(int Protein) {
		this.Protein = Protein;
	}
	public int getVD() {
		return VD;
	}
	public void setVD(int VD) {
		this.VD = VD;
	}
	public int getVC() {
		return VC;
	}
	public void setVC(int VC) {
		this.VC = VC;
	}
	public int getWater() {
		return water;
	}
	public void setWater(int water) {
		this.water = water;
	}






	@Override
	public String toString() {
		return "Food [Foodid=" + foodid + ", FoodName=" + FoodName
				+ ", Calories=" + Calories + ", TotalFat=" + TotFat + ", Sodium="
				+ sodium +", Carbohydrate=" + Carbohydrate +", Sugars=" + sugars +", "
						+ "Protein=" + Protein + "VitaminC=" + VC 
						+"VitaminD=" + VD +"Water=" + water +"]";
	}
}
