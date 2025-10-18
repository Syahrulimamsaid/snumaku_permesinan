import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snumaku_permesinan/config/sizeConfig.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              opacity: 0.5,
              repeat: ImageRepeat.repeat,
              image: AssetImage("assets/images/background.png"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: SizeConfig.width,
                  height: SizeConfig.height * 0.08,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.all(10),
                        width: SizeConfig.width * 0.12,
                        height: SizeConfig.width * 0.12,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Image.asset(
                          'assets/icons/ProfileIcon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                          child: Text(
                        'SNUMAKU PERMESINAN',
                        style: GoogleFonts.montserrat(
                            fontSize: SizeConfig.width * 0.06,
                            fontWeight: FontWeight.bold),
                      ))
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  width: SizeConfig.width,
                  height: SizeConfig.height * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(255, 172, 172, 172),
                      Color.fromARGB(255, 165, 165, 165)
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Selamat Datang!',
                                style: GoogleFonts.poppins(
                                    fontSize: SizeConfig.width * 0.08,
                                    fontWeight: FontWeight.bold,
                                    height: 1.1),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text.rich(TextSpan(children: [
                                TextSpan(
                                  text: 'Di ',
                                  style: GoogleFonts.montserrat(
                                      fontSize: SizeConfig.width * 0.034,
                                      fontWeight: FontWeight.w600),
                                ),
                                TextSpan(
                                  text: 'SNUMAKU ',
                                  style: GoogleFonts.poppins(
                                      fontSize: SizeConfig.width * 0.034,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: 'edisi Permesinan',
                                  style: GoogleFonts.montserrat(
                                      fontSize: SizeConfig.width * 0.034,
                                      fontWeight: FontWeight.w600),
                                ),
                              ])),
                              Text(
                                'Dilengkapi Augmented Reality',
                                style: GoogleFonts.montserrat(
                                    fontSize: SizeConfig.width * 0.034,
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(
                                        255, 117, 117, 117)),
                              )
                            ],
                          )),
                      Expanded(
                        flex: 1,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              bottom: -20,
                              right: -20,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/images/KeepUp.png',
                                  width: SizeConfig.width * 0.48,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: SizeConfig.width,
                  height: SizeConfig.height * 0.24,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(15),
                                height: SizeConfig.height * 0.11,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 41, 41, 41),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/MaterIcon.png',
                                      width: SizeConfig.width * 0.12,
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'Materi',
                                      style: GoogleFonts.montserrat(
                                          fontSize: SizeConfig.width * 0.055,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[100]),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(15),
                                height: SizeConfig.height * 0.11,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  gradient: const LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 172, 172, 172),
                                        Color.fromARGB(255, 165, 165, 165)
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/SoalIcon.png',
                                      width: SizeConfig.width * 0.12,
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'Soal',
                                      style: GoogleFonts.montserrat(
                                          fontSize: SizeConfig.width * 0.055,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[100]),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            height: SizeConfig.height * 0.25,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 41, 41, 41),
                                borderRadius: BorderRadius.circular(25)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/icons/CamArIcon.png',
                                  width: SizeConfig.width * 0.12,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Kamera AR',
                                  style: GoogleFonts.montserrat(
                                      fontSize: SizeConfig.width * 0.055,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[100]),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  height: SizeConfig.height * 0.11,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        Color.fromARGB(255, 140, 140, 140),
                        Color.fromARGB(255, 147, 147, 147)
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/GlosarIcon.png',
                        width: SizeConfig.width * 0.12,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Golosarium',
                        style: GoogleFonts.montserrat(
                            fontSize: SizeConfig.width * 0.055,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[100]),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  width: SizeConfig.width,
                  height: SizeConfig.height * 0.11,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color.fromARGB(255, 41, 41, 41)),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              bottom: -20,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/icons/CapPemIcon.png',
                                  width: SizeConfig.width * 0.12,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 4,
                          child: Text(
                            'Capaian Pembelajaran',
                            style: GoogleFonts.montserrat(
                                fontSize: SizeConfig.width * 0.055,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[100]),
                          ))
                    ],
                  ),
                )
              ]),
        )
      ])),
    );
  }
}
