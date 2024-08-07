import 'package:exam_advflutter/Helper/ApiHelper.dart';
import 'package:flutter/material.dart';

import '../Modal/JokesModal.dart';
class JokesProvider extends ChangeNotifier {
  JokesModal? jokesModal;
  JokesHelperApi jokesHelperApi = JokesHelperApi();
  String change ='';

  Future<JokesModal?> setData(String change) async {
    final data = await jokesHelperApi.fetchData();
    jokesModal = JokesModal.fromMap(data as Map);
    return jokesModal;
  }
  void refresh(String value ) {
    change =value;
    notifyListeners();
  }
}
