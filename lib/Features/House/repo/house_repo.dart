// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:jeffrealty/Common/Utils/error_handler.dart';

final houseRepo = Provider((ref) {
  return HouseRepo();
});

class HouseRepo {
  HouseRepo();

  Future<List<dynamic>> fetchHouse({required BuildContext context}) async {
    List results = [];
    var uri =
        Uri.parse("https://jeffybackend.jeff-realty.com/api/houses?populate=*");

    var response = await http.get(uri);

    httpErrorHandle(
      response: response,
      context: context,
      onSuccess: () {
        Map<String, dynamic> data = jsonDecode(response.body);
        results = data["data"];
      },
    );

    return results;
  }
}
