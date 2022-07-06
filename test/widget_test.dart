import 'dart:ui';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main(){
  showData();
}

void showData(){
  startTask();
  String account = accessData();
  fetchData(account);
}

void startTask() {
  String info1='요청수행 시작';
  print(info1);
}

String accessData() {

  String account='';

  Duration time = Duration(seconds: 4);

  if(time.inSeconds>2) {
    //sleep(time);
    Future.delayed(time,(){
      account='8500만원';
      print(account);
    });
  }else{
    String info2= '데이터를 가져왔습니다';
    print(info2);
    account='error';
  }

  return account;
}

void fetchData(String account) {
  String info3='잔액은 $account 입니다.';
  print(info3);
}
