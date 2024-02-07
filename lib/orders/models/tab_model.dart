class TabModel {
  TabModel({required this.label, required this.index});
  String label;
  int index;
}

List<TabModel> tabs = [
  TabModel(label: 'Pending', index: 0),
  TabModel(label: 'Delivered', index: 1),
  TabModel(label: 'Cancelled', index: 2),
];
