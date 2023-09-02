import 'package:flutter/material.dart';
import 'package:tts/GlobalState/colorscheme.dart';
import 'package:tts/GlobalState/responsiveUtils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorSchemes.orangeC,
          title: const Text("Text to Speech"), // logout button
        ),
        body: SafeArea(
          child: Column(
            children: [
              Image(
                width: Responsiveness.screenWidth(context) * 0.9,
                fit: BoxFit.cover,
                image: const NetworkImage(
                    'https://cdn3d.iconscout.com/3d/premium/thumb/text-to-speech-9200561-7526305.png'),
              ),
              SizedBox(
                height: Responsiveness.screenHeight(context) * 0.05,
              ),
              Column(
                children: [
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text("Welcome to the App        ",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: ColorSchemes.blackC)),
                    ),
                  ),
                  SizedBox(
                    height: Responsiveness.screenHeight(context) * 0.03,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                ColorSchemes.orangeC),
                            fixedSize: MaterialStateProperty.all<Size>(Size(
                                Responsiveness.screenWidth(context) * 0.85,
                                Responsiveness.screenHeight(context) * 0.06))),
                        onPressed: () {
                          Navigator.pushNamed(context, '/textsummarizer');
                        },
                        child: const Text("Text Summarizer"),
                      ),
                      SizedBox(
                        height: Responsiveness.screenHeight(context) * 0.03,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                ColorSchemes.orangeC),
                            fixedSize: MaterialStateProperty.all<Size>(Size(
                                Responsiveness.screenWidth(context) * 0.85,
                                Responsiveness.screenHeight(context) * 0.06))),
                        onPressed: () {
                          Navigator.pushNamed(context, '/texttospeech');
                        },
                        child: const Text("Text to Speech"),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
