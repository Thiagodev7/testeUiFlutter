import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../shared/widgets/sice_card.dart';

class HomeDoctorPage extends StatelessWidget {
  const HomeDoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.28,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2,
                  right: 20,
                  left: 20),
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff1498d5),
                    blurRadius: 2,
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(45),
                  bottomRight: Radius.circular(45),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 75, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  const Text('Medico',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                          color: Colors.white)),
                  const SizedBox()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Card(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  blurRadius: 2,
                                ),
                              ],
                              borderRadius: const BorderRadius.all(
                                Radius.circular(40),
                              ),
                              image: const DecorationImage(
                                image: AssetImage("assets/profile.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text('Dr. Thiago Ribeiro'),
                          const Text('CRM ********')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const Text('Minhas especiarias:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            )),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SpiceCard(
                    icon: Icon(Icons.medical_services),
                    text: 'Ortopedia',
                  ),
                  SpiceCard(
                    icon: Icon(Icons.medical_services),
                    text: 'Ortopedia',
                  ),
                  SpiceCard(
                    icon: Icon(Icons.medical_services),
                    text: 'Ortopedia',
                  ),
                ],
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SpiceCard(
                    icon: Icon(Icons.medical_services),
                    text: 'Ortopedia',
                  ),
                  SpiceCard(
                    icon: Icon(Icons.medical_services),
                    text: 'Ortopedia',
                  ),
                  SpiceCard(
                    icon: const Icon(Icons.add),
                    text: 'Adcionar',
                  ),
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
