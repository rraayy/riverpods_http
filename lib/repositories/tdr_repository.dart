import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:riverpods_http/models/tdrinfo.dart';

abstract class IAttractionRepository {
  Future<TdrInfoResponse> fetchAttractionList();
}

class AttractionRepository implements IAttractionRepository {
  final String _host = "https://tdr.today/static/";
  final Map<String, String> _headers = {
    "Accept": "application/json",
    "contect-type": "application/json"
  };

  @override
  Future<TdrInfoResponse> fetchAttractionList() async {
    var getUrl = _host + "facilities_conditions.json";
    var result = await http.get(Uri.parse(getUrl), headers: _headers);

    final jsonObject = json.decode(result.body);
    var response = TdrInfoResponse.fromJson(jsonObject);
    return response;
  }
}
