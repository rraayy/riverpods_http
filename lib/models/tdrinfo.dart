class TdrInfoResponse {
  TdrInfoResponse({
    required this.attractions,
    // required this.entertainments,
    // required this.greetings,
    // required this.shops,
    // required this.restaurants,
    // required this.snapPhotos,
  });
  late final List<Attractions> attractions;
  // late final List<Entertainments> entertainments;
  // late final List<Greetings> greetings;
  // late final List<Shops> shops;
  // late final List<Restaurants> restaurants;
  // late final List<SnapPhotos> snapPhotos;

  TdrInfoResponse.fromJson(Map<String, dynamic> json) {
    attractions = List.from(json['attractions'])
        .map((e) => Attractions.fromJson(e))
        .toList();
    // entertainments = List.from(json['entertainments'])
    //     .map((e) => Entertainments.fromJson(e))
    //     .toList();
    // greetings =
    //     List.from(json['greetings']).map((e) => Greetings.fromJson(e)).toList();
    // shops = List.from(json['shops']).map((e) => Shops.fromJson(e)).toList();
    // restaurants = List.from(json['restaurants'])
    //     .map((e) => Restaurants.fromJson(e))
    //     .toList();
    // snapPhotos = List.from(json['snapPhotos'])
    //     .map((e) => SnapPhotos.fromJson(e))
    //     .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['attractions'] = attractions.map((e) => e.toJson()).toList();
    // _data['entertainments'] = entertainments.map((e) => e.toJson()).toList();
    // _data['greetings'] = greetings.map((e) => e.toJson()).toList();
    // _data['shops'] = shops.map((e) => e.toJson()).toList();
    // _data['restaurants'] = restaurants.map((e) => e.toJson()).toList();
    // _data['snapPhotos'] = snapPhotos.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Attractions {
  Attractions({
    required this.id,
    required this.facilityCode,
    required this.standbyTimeDisplayType,
    required this.startAt,
    required this.isSunset,
    // required this.operatings,
  });
  late final int? id;
  late final String? facilityCode;
  late final String? standbyTimeDisplayType;
  late final String? startAt;
  late final bool? isSunset;
  // late final List<Operatings> operatings;

  Attractions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    facilityCode = json['facilityCode'];
    standbyTimeDisplayType = json['standbyTimeDisplayType'];
    startAt = json['startAt'];
    isSunset = json['isSunset'];
    // operatings = json['operatings'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['facilityCode'] = facilityCode;
    _data['standbyTimeDisplayType'] = standbyTimeDisplayType;
    _data['startAt'] = startAt;
    _data['isSunset'] = isSunset;
//    _data['operatings'] = operatings;
    return _data;
  }
}
/*
class Operatings {
  Operatings({
    required this.startAt,
    required this.endAt,
    required this.operatingStatus,
    required this.operatingStatusMessage,
    required this.isSunset,
    required this.passAcceptanceType,
  });
  late final String startAt;
  late final String endAt;
  late final String operatingStatus;
  late final String operatingStatusMessage;
  late final bool isSunset;
  late final String passAcceptanceType;

  Operatings.fromJson(Map<String, dynamic> json) {
    startAt = json['startAt'];
    endAt = json['endAt'];
    operatingStatus = json['operatingStatus'];
    operatingStatusMessage = json['operatingStatusMessage'];
    isSunset = json['isSunset'];
    passAcceptanceType = json['passAcceptanceType'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['startAt'] = startAt;
    _data['endAt'] = endAt;
    _data['operatingStatus'] = operatingStatus;
    _data['operatingStatusMessage'] = operatingStatusMessage;
    _data['isSunset'] = isSunset;
    _data['passAcceptanceType'] = passAcceptanceType;
    return _data;
  }
}

class Entertainments {
  Entertainments({
    required this.id,
    required this.facilityCode,
    required this.operatings,
  });
  late final int id;
  late final String facilityCode;
  late final List<Operatings> operatings;

  Entertainments.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    facilityCode = json['facilityCode'];
    operatings = json['operatings'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['facilityCode'] = facilityCode;
    _data['operatings'] = operatings;
    return _data;
  }
}

class Greetings {
  Greetings({
    required this.id,
    required this.facilityCode,
    required this.standbyTimeDisplayType,
    required this.operatings,
    required this.cameraman,
  });
  late final int id;
  late final String facilityCode;
  late final String standbyTimeDisplayType;
  late final List<Operatings> operatings;
  late final Cameraman? cameraman;

  Greetings.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    facilityCode = json['facilityCode'];
    standbyTimeDisplayType = json['standbyTimeDisplayType'];
    operatings = json['operatings'];
    cameraman = json['cameraman'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['facilityCode'] = facilityCode;
    _data['standbyTimeDisplayType'] = standbyTimeDisplayType;
    _data['operatings'] = operatings;
    _data['cameraman'] = cameraman;
    return _data;
  }
}

class Cameraman {
  Cameraman({
    required this.operatings,
  });
  late final List<Operatings> operatings;

  Cameraman.fromJson(Map<String, dynamic> json) {
    operatings = List.from(json['operatings'])
        .map((e) => Operatings.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['operatings'] = operatings.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Shops {
  Shops({
    required this.id,
    required this.facilityCode,
    required this.standbyTimeDisplayType,
    required this.startAt,
    required this.isSunset,
    required this.operatings,
  });
  late final int id;
  late final String facilityCode;
  late final String standbyTimeDisplayType;
  late final String? startAt;
  late final bool? isSunset;
  late final List<Operatings> operatings;

  Shops.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    facilityCode = json['facilityCode'];
    standbyTimeDisplayType = json['standbyTimeDisplayType'];
    startAt = json['startAt'];
    isSunset = json['isSunset'];
    operatings = json['operatings'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['facilityCode'] = facilityCode;
    _data['standbyTimeDisplayType'] = standbyTimeDisplayType;
    _data['startAt'] = startAt;
    _data['isSunset'] = isSunset;
    _data['operatings'] = operatings;
    return _data;
  }
}

class Restaurants {
  Restaurants({
    required this.id,
    required this.facilityCode,
    required this.standbyTimeDisplayType,
    required this.operatings,
  });
  late final int id;
  late final String facilityCode;
  late final String standbyTimeDisplayType;
  late final List<Operatings> operatings;

  Restaurants.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    facilityCode = json['facilityCode'];
    standbyTimeDisplayType = json['standbyTimeDisplayType'];
    operatings = json['operatings'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['facilityCode'] = facilityCode;
    _data['standbyTimeDisplayType'] = standbyTimeDisplayType;
    _data['operatings'] = operatings;
    return _data;
  }
}

class SnapPhotos {
  SnapPhotos({
    required this.id,
    required this.facilityCode,
    required this.standbyTimeDisplayType,
    required this.operatings,
  });
  late final int id;
  late final String facilityCode;
  late final String standbyTimeDisplayType;
  late final List<Operatings> operatings;

  SnapPhotos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    facilityCode = json['facilityCode'];
    standbyTimeDisplayType = json['standbyTimeDisplayType'];
    operatings = json['operatings'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['facilityCode'] = facilityCode;
    _data['standbyTimeDisplayType'] = standbyTimeDisplayType;
    _data['operatings'] = operatings;
    return _data;
  }
}
*/
