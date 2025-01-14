import 'package:flutter/material.dart';
import 'package:hacktoberfest/themes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CListTile extends StatelessWidget {
  final Name;
  final Username;
  const CListTile({super.key, required this.Name, required this.Username});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launchUrlString('https://github.com/$Username');
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Card(
          elevation: 5.0,
          color: Colors.transparent,
          child: Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff40ddff), width: 5.0),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              gradient: const LinearGradient(
                colors: [
                  Color(0xff7a82ff),
                  Color(0xff58b7ff),
                  Color(0xff43d8ff),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(Name, textAlign: TextAlign.left, style: kName),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.github,
                            color: kprimevoid,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(Username,
                              textAlign: TextAlign.right, style: kUsername),
                        ],
                      ),
                    ],
                  ),
                  FaIcon(
                    FontAwesomeIcons.arrowRight,
                    size: 40.0,
                    color: kprimevoid,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
