class BusesModel {
  List<Data>? data;

  BusesModel({this.data});

  BusesModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? bus;
  List<Stops>? stops;
  bool? isAC;

  Data({this.bus, this.stops, this.isAC});

  Data.fromJson(Map<String, dynamic> json) {
    bus = json['bus'];
    if (json['stops'] != null) {
      stops = <Stops>[];
      json['stops'].forEach((v) {
        stops!.add(Stops.fromJson(v));
      });
    }
    isAC = json['isAC'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bus'] = bus;
    if (stops != null) {
      data['stops'] = stops!.map((v) => v.toJson()).toList();
    }
    data['isAC'] = isAC;
    return data;
  }
}

class Stops {
  String? name;
  double? distance;
  double? fare;

  Stops({this.name, this.distance, this.fare});

  Stops.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    distance = double.parse((json['distance']??'0').toString());
    fare = double.parse((json['fare']??'0').toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['distance'] = double.parse((distance??'0').toString());
    data['fare'] = double.parse((fare??'0').toString());
    return data;
  }
}
