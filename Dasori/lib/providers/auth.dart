import 'package:flutter/foundation.dart';

class AuthProvider with ChangeNotifier {

  //
  bool _isAuthenticated = false;
  bool get isAuthenticated => _isAuthenticated;

  // URL: /LogIn
  // DB에서 유효한 사용자인지 요청 후 사용해야함
  //통신:
  void logIn({required String id, required String password}) {
    // 프론트에서 테스트 용도의 로그인 로직
    if (id == 'a' && password == 'a') {
      _isAuthenticated = true;
      notifyListeners();
    }
  }

}
//변수 활용을 위한 특정 파일 만들기
//pid 받은 걸 저장, pid 사용할 대