class FoodCategoryModel{
	int categoryID;
	String categoryName;
	String categoryImage;
	int categoryPrice;
	int cartCount = 1;

	FoodCategoryModel({this.categoryID, this.categoryName, this.categoryImage, this.categoryPrice, this.cartCount});
}