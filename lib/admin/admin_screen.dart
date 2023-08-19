import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/property_card.dart';
import 'admin_controller.dart';

class AdminScreen extends StatelessWidget {
  AdminScreen({super.key});
  final _adminController = Get.put(AdminController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Requests',
          style: TextStyle(
            fontFamily: 'Outfit',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Text(
                'Welcome Admin',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Outfit',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 1.7,
                  child: ScrollConfiguration(
                    behavior: const ScrollBehavior(),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (
                        context,
                        index,
                      ) =>
                          Row(
                        children: [
                          PropertyCard(
                            index: index,
                          ),
                          const SizedBox(
                            width: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
