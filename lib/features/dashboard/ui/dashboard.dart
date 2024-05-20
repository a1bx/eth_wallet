import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eth Wallet"),
        backgroundColor: ,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/Ethereum logo.svg",
                  height: 50,
                  width: 50,
                ),
                // Image.asset("assets/Ethereum-logo.svg"),
                const SizedBox(width: 16), // Add spacing between image and text
                Text("100 ETH",style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold
                ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
