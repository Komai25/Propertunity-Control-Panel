import 'package:flutter/material.dart';

import '../widgets/property_card.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

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
              SizedBox(height: MediaQuery.of(context).size.height / 10),
              Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: const [
                      PropertyCard(),
                      SizedBox(
                        width: 6,
                      ),
                      PropertyCard(),
                      SizedBox(
                        width: 6,
                      ),
                      PropertyCard(),
                      SizedBox(
                        width: 6,
                      ),
                      PropertyCard(),
                      SizedBox(
                        width: 6,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
