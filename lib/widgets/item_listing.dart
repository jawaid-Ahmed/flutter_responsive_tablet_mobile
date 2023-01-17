import 'package:flutter/material.dart';
import 'package:fluttertesting/controllers/users_controller.dart';
import 'package:fluttertesting/models/user.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ItemListing extends StatelessWidget {
  ItemListing(
      this.selectedItem, {
    required this.itemSelectedCallback,
  });

  final ValueChanged<User> itemSelectedCallback;
  final User? selectedItem;

  usersController controller = Get.put(usersController());


  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: controller.users.length,
        itemBuilder: (context, index) {
          User user = controller.users[index];

          return Container(
              margin: const EdgeInsets.all( 10),
              padding: const EdgeInsets.only(left: 20),
              height: 70,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                      "https://img.freepik.com/premium-vector/anonymous-user-circle-icon-vector-illustration-flat-style-with-long-shadow_520826-1931.jpg?w=2000"),
                ),
                contentPadding: const EdgeInsets.all(4),
                selected: index == selectedItem!.id,
                selectedColor: Colors.black,
                onTap: () {
                  itemSelectedCallback(user);
                } ,
                title: Text(
                  '${user.name}'
                      .toUpperCase(),
                  style: const TextStyle(
                      color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                    user.email,
                    style: const TextStyle(
                        color: Colors.black, fontSize: 18)),
              ),);


          
        });
  }
}