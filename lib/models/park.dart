class ParkResponse {
  ParkResponse({
    required this.schedules,
    required this.ticketSales,
  });
  late final List<Schedules> schedules;
  late final List<TicketSales> ticketSales;

  ParkResponse.fromJson(Map<String, dynamic> json) {
    schedules =
        List.from(json['schedules']).map((e) => Schedules.fromJson(e)).toList();
    ticketSales = List.from(json['ticketSales'])
        .map((e) => TicketSales.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['schedules'] = schedules.map((e) => e.toJson()).toList();
    _data['ticketSales'] = ticketSales.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Schedules {
  Schedules({
    required this.parkType,
    required this.open,
    required this.allNightDay,
  });
  late final String parkType;
  late final bool open;
  late final bool allNightDay;

  Schedules.fromJson(Map<String, dynamic> json) {
    parkType = json['parkType'];
    open = json['open'];
    allNightDay = json['allNightDay'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['parkType'] = parkType;
    _data['open'] = open;
    _data['allNightDay'] = allNightDay;
    return _data;
  }
}

class TicketSales {
  TicketSales({
    required this.parkType,
    required this.message,
  });
  late final String parkType;
  late final String message;

  TicketSales.fromJson(Map<String, dynamic> json) {
    parkType = json['parkType'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['parkType'] = parkType;
    _data['message'] = message;
    return _data;
  }
}
