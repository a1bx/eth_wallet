import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class Withdraw extends StatefulWidget {
  const Withdraw({super.key});

  @override
  State<Withdraw> createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
  final TextEditingController addressController=TextEditingController();
  final TextEditingController amountController=TextEditingController();
  final TextEditingController reasonController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      body:Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height:80),
            Text("Withdraw Details",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                  hintText: ("Enter Your Address")
              ),
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(
                  hintText: ("Enter Amount")
              ),
            ),TextField(
              controller: reasonController,
              decoration: InputDecoration(
                  hintText: ("Enter Reason")),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                  color: Colors.redAccent
              ),
              child: Center(
                child: Text("- Withdraw",style: TextStyle(
                    color: Colors.red[100], fontSize:24,fontWeight: FontWeight.bold
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
