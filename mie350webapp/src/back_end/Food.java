package back_end;



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
		System.out.println("1");
		return foodid;//
	}
	public void setFoodid(int foodid) {
		this.foodid = foodid;
	}
	public String getFoodName() {
		System.out.println("2");
		return FoodName;//
	}
	public void setFoodname(String name) {
		this.FoodName = name;
	}
	public int getCalories() {
		System.out.println("3");
		return Calories;//
	}
	public void setCalories(int cal) {
		this.Calories = cal;
	}
	public int getTotFat() {
		System.out.println("4");
		return TotFat;//
	}
	public void setTotFat(int TotFat) {
		this.TotFat = TotFat;
	}
	public int getSodium() {
		System.out.println("5");
		return sodium;//
	}
	public void setSodium(int sodium) {
		this.sodium = sodium;
	}
	public int getCarb() {
		System.out.println("6");
		return Carbohydrate;//
	}
	public void setCarb(int carb) {
		this.Carbohydrate = carb;
	}
	public int getSugars() {
		System.out.println("7");
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
