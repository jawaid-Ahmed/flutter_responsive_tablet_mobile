import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertesting/controllers/users_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../models/user.dart';
import '../widgets/item_details.dart';
import '../widgets/item_listing.dart';

class HomePage extends StatefulWidget {


 // Also new.
  HomePage({Key? key,
  }) : super(key: key);


  static const int kTabletBreakpoint = 600;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  User? _selectedItem;
  usersController controller=Get.put(usersController());


  Widget _buildMobileLayout(BuildContext context) {
    if(_selectedItem==null) {
      User itm = controller.users[0];
      _selectedItem = itm;
    }
    return ItemListing(
      itemSelectedCallback: (item) {
        setState(() {
          _selectedItem=item;
        });
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return ItemDetails(
                isInTabletLayout: false,
                item: item,
              );
            },
          ),
        );
      },_selectedItem,
    );
  }

  Widget _buildTabletLayout() {
    if(_selectedItem==null) {
      User itm = controller.users[0];
      _selectedItem = itm;
    }
    return Row(
      children: <Widget>[
        Flexible(
          flex: 2,
          child: Material(
            elevation: 4.0,
            child: ItemListing(
              itemSelectedCallback: (item) {
                setState(() {
                  _selectedItem = item;
                });
              },
              _selectedItem,
            ),
          ),
        ),
        Flexible(
          flex: 3,
          child: ItemDetails(
            isInTabletLayout: true,
            item: _selectedItem,
          ),
        ),
      ],
    );
  }

  Widget _buildDesktopLayout() {

    if(_selectedItem==null) {
      User itm = controller.users[0];
      _selectedItem = itm;
    }
    return Row(
      children: <Widget>[
        Flexible(
          flex: 2,
          child: Material(
            elevation: 4.0,
            child: ItemListing(
              itemSelectedCallback: (item) {
                setState(() {
                  _selectedItem = item;
                });
              },
              _selectedItem,
            ),
          ),
        ),
        Flexible(
          flex: 5,
          child: ItemDetails(
            isInTabletLayout: true,
            item: _selectedItem,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Users List',style: TextStyle(fontSize: 19,
            fontWeight: FontWeight.w600,color: Colors.black),),
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        actions: [
          IconButton(onPressed: (){
            Get.snackbar('Snackbar', 'This is Snackbar testing using Getx');
          }, icon: const Icon(Icons.info,color: Colors.black,)),
        ],
      ),
      body: Obx(() => controller.isLoading.value
          ? const Center(child: CircularProgressIndicator())
          : shortestSide < HomePage.kTabletBreakpoint ? _buildMobileLayout(context)
          : shortestSide > 800 ? _buildDesktopLayout() :  _buildTabletLayout(),),
    );
  }
}
