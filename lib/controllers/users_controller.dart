import 'dart:convert';

import 'package:fluttertesting/constants/apis.dart';
import 'package:fluttertesting/models/user.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


class usersController extends GetxController{
  var isLoading = false.obs;
  List<User> users=[];

  @override
  void onInit() {
    getUsers();
    super.onInit();
  }

  Future getUsers()async{

    try{
      isLoading(true);
      var response=await http.get(Uri.parse(ApiService.userUrl));
      if(response.statusCode==200){

        var result = jsonDecode(response.body);
        //users = (result != null ? List.from(result) : null)!;

        users = List<User>.from(result.map((model)=> User.fromJson(model)));

        return users;
      }else{
        isLoading(false);
        print('..............response Error................');
        return null;
      }

    }catch(e){
      print('Api Call Error: $e');
    }finally{
      isLoading(false);
    }
  }

}