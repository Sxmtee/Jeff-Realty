import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:jeffrealty/Common/Utils/error_handler.dart';

final landRepo = Provider((ref) {
  return LandRepo();
});

class LandRepo {
  LandRepo();

  Future<List<dynamic>> fetchLand({required BuildContext context}) async {
    List results = [];

    var uri = Uri.parse(
      "https://jeffybackend.jeff-realty.com/api/lands?populate=*",
    );

    var response = await http.get(uri);

    // ignore: use_build_context_synchronously
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
