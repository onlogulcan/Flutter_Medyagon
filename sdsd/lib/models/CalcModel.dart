class CalcModel {
  int id;
  int price;
  double chance;

  CalcModel({this.id, this.price, this.chance});

  CalcModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    chance = json['chance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['price'] = this.price;
    data['chance'] = this.chance;
    return data;
  }
}
