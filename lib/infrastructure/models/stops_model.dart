class StopModel {
  Stops? stops;

  StopModel({this.stops});

  StopModel.fromJson(Map<String, dynamic> json) {
    stops = json['stops'] != null ? Stops.fromJson(json['stops']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (stops != null) {
      data['stops'] = stops!.toJson();
    }
    return data;
  }
}

class Stops {
  List<Item>? item;

  Stops({this.item});

  Stops.fromJson(Map<String, dynamic> json) {
    if (json['item'] != null) {
      item = <Item>[];
      json['item'].forEach((v) {
        item!.add(Item.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (item != null) {
      data['item'] = item!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Item {
  String? name;
  double? lat;
  double? long;

  Item({this.name, this.lat, this.long});

  Item.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    lat = double.parse((json['lat']??0).toString());
    long = double.parse((json['long']??0).toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['lat'] = lat;
    data['long'] = long;
    return data;
  }
}
