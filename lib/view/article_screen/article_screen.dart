// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:news_api/utilts/images_const.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.blue, actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.bookmark_border_outlined,
            color: Colors.white,
          ),
        ),
      ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                      ImageConstants.ARTICLE,
                    ),
                    fit: BoxFit.cover,
                  )),
                ),
                Positioned(
                    top: 10,
                    right: 9,
                    child: Icon(
                      Icons.share,
                      color: Colors.white,
                    )),
                Positioned(
                  bottom: 80,
                  left: 9,
                  child: Container(
                    color: Colors.blue,
                    child: Text("US election",
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("The latest situation in the ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                wordSpacing: 5)),
                        Text("presidential election",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                wordSpacing: 5)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 13),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Results ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        wordSpacing: 5)),
                SizedBox(height: 13),
                Text(
                    "Leads in individual states may change from one party to another as all the votes are counted. Select a state for detailed results, and select the Senate, House or Governor tabs to view those races."
                    "For more detailed state results click on the States A-Z links at the bottom of this page. Results source: NEP/Edison via Reuters."
                    "Leads in individual states may change from one party to another as all the votes are counted. Select a state for detailed results, and select the Senate, House or Governor tabs to view those races.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
