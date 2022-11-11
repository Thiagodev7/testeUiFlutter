import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:teste/app/modules/home/home_doctor_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String name = 'Thiago';
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Column(
              children: [
                Image.asset('assets/logo.jpeg'),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Bem vindo ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                          color: Colors.blueGrey),
                    ),
                    Text(
                      '$name,',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                          color: Color(0xff1498d5)),
                    ),
                  ],
                ),
                const Text(
                  'para inicar nos diga se voce é: ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Colors.blueGrey),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeDoctorPage()),
                        );
                      },
                      child: Card(
                          child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Column(
                                children: [
                                  Image.asset('assets/patient.png'),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text(
                                    'Médico',
                                    style: TextStyle(
                                      fontSize: 22,
                                      //fontStyle: FontStyle.italic,
                                      color: Colors.blueGrey,
                                    ),
                                  )
                                ],
                              )

                              // Column(
                              //   children: [
                              //     Icon(Icons.medical_services_outlined),
                              //     Text('medico'),
                              //   ],
                              // ),
                              )),
                    ),
                    Card(
                        child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        children: [
                          Image.asset('assets/doctor.png'),
                          const SizedBox(
                            height: 25,
                          ),
                          const Text(
                            'Paciente',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.blueGrey,
                              //fontStyle: FontStyle.italic,
                            ),
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
