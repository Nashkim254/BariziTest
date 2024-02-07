class LastModel {
  LastModel({
    required this.name,
    required this.image,
    required this.desc,
  });
  String? name;
  String? image;
  String desc;
}

List<LastModel> getLastModel = [
  LastModel(
    name: 'T-Shirts',
    image: 'assets/images/t-woman.png',
    desc: 'The\nOffice\nLife',
  ),
  LastModel(
    name: 'Dresses',
    image: 'assets/images/d-woman.png',
    desc: 'Elegant\nDesign',
  ),
];
