import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixels_co/view/add_to_bag.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = ["assets/images/midCamera.png", "assets/images/icon.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 75, 75, 75),
            Color.fromARGB(255, 12, 12, 12),
          ], begin: Alignment.topLeft, end: Alignment.centerLeft),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "PixelsCo.",
                      style: GoogleFonts.dmSans(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    Image.asset("assets/images/bag.png"),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const AddToBag();
                    }));
                  },
                  child: Container(
                    width: 335,
                    height: 186,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 75, 75, 75),
                        Color.fromARGB(255, 12, 12, 12),
                      ], begin: Alignment.topLeft, end: Alignment.centerLeft),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "New Vintage Collection",
                                style: GoogleFonts.dmSans(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 120,
                                height: 36,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 50, 49, 49),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 5,
                                      blurStyle: BlurStyle.outer,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "Explore Now",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(
                                          255, 255, 251, 1),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 170,
                          height: 170,
                          child: Image.asset(
                            "assets/images/smallCamera.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Popular",
                  style: GoogleFonts.dmSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 260,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                width: 160,
                                height: 230,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 75, 75, 75),
                                        Color.fromARGB(255, 38, 37, 37),
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.centerLeft),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset("assets/images/Star.png"),
                                        Text(
                                          "4.5",
                                          style: GoogleFonts.dmSans(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                      images[index],
                                      width: 132,
                                      height: 134,
                                    ),
                                    Text(
                                      "Canon EOS 30D",
                                      style: GoogleFonts.dmSans(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "\$16000",
                                          style: GoogleFonts.dmSans(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Spacer(),
                                        Container(
                                          decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Color.fromARGB(
                                                      255, 75, 75, 75),
                                                  Color.fromARGB(
                                                      255, 18, 17, 17),
                                                ],
                                                begin: Alignment.topLeft,
                                                end: Alignment.centerLeft),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                          ),
                                          width: 30,
                                          height: 27,
                                          child: const Icon(
                                            Icons.arrow_forward,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 260,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                width: 160,
                                height: 230,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 75, 75, 75),
                                        Color.fromARGB(255, 38, 37, 37),
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.centerLeft),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset("assets/images/Star.png"),
                                        Text(
                                          "4.5",
                                          style: GoogleFonts.dmSans(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                      images[index],
                                      width: 132,
                                      height: 134,
                                    ),
                                    Text(
                                      "Canon EOS 30D",
                                      style: GoogleFonts.dmSans(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "\$16000",
                                          style: GoogleFonts.dmSans(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Spacer(),
                                        Container(
                                          decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Color.fromARGB(
                                                      255, 75, 75, 75),
                                                  Color.fromARGB(
                                                      255, 12, 11, 11),
                                                ],
                                                begin: Alignment.topLeft,
                                                end: Alignment.centerLeft),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                          ),
                                          width: 30,
                                          height: 27,
                                          child: const Icon(
                                            Icons.arrow_forward,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
