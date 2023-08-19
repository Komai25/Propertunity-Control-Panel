import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:propertunity_control_panel/admin/admin_controller.dart';

import '../property/property_screen.dart';

class PropertyCard extends StatelessWidget {
  final int index;
  PropertyCard({
    super.key,
    required this.index,
  });

  final AdminController _adminController = Get.put(AdminController());

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(
        PropertyScreen(
            // contextPropertyDetailsScreen: context,
            ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.height / 2,
        height: MediaQuery.of(context).size.height / 1.7,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: Expanded(
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/images/logo.svg',
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height / 2.5,
              ),
              const Divider(
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Get.off(
                      //   const AdminScreen(),
                      //   transition: Transition.fade,
                      //   duration: const Duration(seconds: 1),
                      // );
                    },
                    child: const Text(
                      'Approval',
                      style: TextStyle(
                        fontFamily: 'Outfit',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.red),
                    ),
                    onPressed: () {
                      Get.to(
                        arguments: [_adminController.allPosts?[index].id],
                        () => PropertyScreen(),
                      );
                    },
                    child: const Text('Deny'),
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 60),
              Text(
                '${_adminController.allPosts?[index].propertyId}',
                style: const TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
