import 'package:flutter/material.dart';

import '../widgets/section.dart';

class PropertyScreen extends StatelessWidget {
  const PropertyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Request',
          style: TextStyle(
            fontFamily: 'Outfit',
          ),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2.1,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Section(
                      title: 'Property Name',
                      description: 'Name',
                    ),
                    Section(
                      title: 'Property Type',
                      description: 'Property Type',
                    ),
                    Section(
                      title: 'Property description',
                      description: 'description',
                    ),
                    Section(
                      title: 'address',
                      description: 'address',
                    ),
                    Section(
                      title: 'Listed by',
                      description: 'Komai',
                    ),
                    Section(
                      title: 'Location',
                      description: 'Location',
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 1.15,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/test.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 400,
          ),
        ],
      ),
    );
  }
}
