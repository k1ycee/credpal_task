import 'package:credpal_task/assets/assets.gen.dart';
import 'package:credpal_task/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(systemNavigationBarColor: Colors.transparent),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                color: appBarBackgroundColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  child: SafeArea(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pay later',
                                      style: GoogleFonts.prompt(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w700,
                                        color: black,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'everywhere',
                                          style: GoogleFonts.prompt(
                                            fontSize: 28,
                                            fontWeight: FontWeight.w700,
                                            color: black,
                                          ),
                                        ),
                                        SizedBox(
                                          width: constraints.constrainWidth(8),
                                        ),
                                        Container(
                                          width: constraints.constrainWidth(20),
                                          height: constraints.constrainHeight(
                                            20,
                                          ),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: white.withOpacity(0.4),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '!',
                                              style: GoogleFonts.prompt(
                                                color: primaryColor,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Shopping limit: ₦0',
                                  style: GoogleFonts.prompt(
                                    fontSize: 12,
                                    color: textColorDark,
                                  ),
                                ),
                                SizedBox(
                                  height: constraints.constrainHeight(8),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 8,
                                    horizontal: 16,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: primaryColor,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Activate Credit',
                                      style: GoogleFonts.prompt(
                                        color: white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 45,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4F5FE),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            CredpalAssets.images.svg.searchNormal.svg(),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search for products or stores',
                                  hintStyle: TextStyle(
                                    color: textColorMid,
                                    fontSize: 12,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF4F5FE),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: CredpalAssets.images.svg.scan.svg(color: black),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),

              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(color: productBackgroundColor),
                child: Container(
                  height: constraints.constrainHeight(174),
                  width: constraints.constrainWidth(161),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(children: [
                   Positioned(
                    left: 10,
                    top: 10
                    , child: CredpalAssets.images.svg.casper.svg(),)
                  ],),
                ),
              ),
              // Text('', style: Theme.of(context).textTheme.headlineMedium),
            ],
          );
        },
      ),
    );
  }
}
