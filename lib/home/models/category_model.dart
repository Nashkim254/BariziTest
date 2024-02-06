class CategoryModel {
  CategoryModel({
    required this.name,
    required this.svg,
    required this.isSelected,
  });
  String? name;
  String? svg;
  bool isSelected = false;

  //toggle selected
  void toggleSelected() {
      isSelected = !isSelected;
    ;
  }
}

List<CategoryModel> getCategories = [
  CategoryModel(
    name: 'Women',
    svg: 'assets/svg/woman.svg',
    isSelected: true,
  ),
  CategoryModel(
    name: 'Men',
    svg: 'assets/svg/men.svg',
    isSelected: false,
  ),
  CategoryModel(
    name: 'Accessories',
    svg: 'assets/svg/accessory.svg',
    isSelected: false,
  ),
  CategoryModel(
    name: 'Beauty',
    svg: 'assets/svg/beauty.svg',
    isSelected: false,
  ),
];
