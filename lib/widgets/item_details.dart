import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertesting/controllers/users_controller.dart';
import 'package:fluttertesting/models/user.dart';
import 'package:fluttertesting/widgets/wave_clipper.dart';

class ItemDetails extends StatelessWidget {
  ItemDetails({
    required this.isInTabletLayout,
    required this.item,
  });

  final bool isInTabletLayout;
  final User? item;

  @override
  Widget build(BuildContext context) {
    final content = Column(
      children: [
        Stack(
          children: [
            ClipPath(
              clipper: WaveClipper(),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.30,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Colors.green.shade100,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade800,
                      offset: const Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(children: const [
                    SizedBox(
                      height: 25,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://img.freepik.com/premium-vector/anonymous-user-circle-icon-vector-illustration-flat-style-with-long-shadow_520826-1931.jpg?w=2000"

                      ),
                      radius: 80,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],),
                  Text(
                    '${item?.username}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.purple.shade50,
                  ),
                  margin:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      const Icon(
                        Icons.person,
                        size: 32,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        '${item?.company.name}',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue.shade50,
                  ),
                  margin:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      const Icon(
                        Icons.person,
                        size: 32,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        '${item?.email}',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue.shade50,
                  ),
                  margin:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      const Icon(
                        Icons.person,
                        size: 32,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        '${item?.email}',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.red.shade50,
                  ),
                  margin:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      const Icon(
                        Icons.email,
                        size: 32,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        '${item?.phone}',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.brown.shade50,
                  ),
                  margin:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      const Icon(
                        Icons.phone,
                        size: 32,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        '${item?.name}',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.yellow.shade50,
                  ),
                  margin:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      const Icon(
                        Icons.group,
                        size: 32,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        '${item?.website}',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );

    if (isInTabletLayout) {

      return Center(child: item!=null ? content : const SizedBox());
    }

    // Mobile layout. We're self-contained, so we provide our own
    // Scaffold and AppBar.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('${item?.name}',style: const TextStyle(fontSize: 19,
            fontWeight: FontWeight.w600,color: Colors.black),),
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        leading: IconButton(onPressed: (){Navigator.pop(context);}
            ,icon: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
      ),
      body: Center(child: content),
    );
  }



}