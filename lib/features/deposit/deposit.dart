import 'package:eth_wallet/utils/colors.dart';
import 'package:flutter/material.dart';

class Deposit extends StatefulWidget {
  const Deposit({super.key});

  @override
  State<Deposit> createState() => _DepositState();
}

class _DepositState extends State<Deposit> {

  final TextEditingController addressController=TextEditingController();
  final TextEditingController amountController=TextEditingController();
  final TextEditingController reasonController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body:Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height:80),
            Text("Deposit Details",
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
                  color: Colors.green
              ),
              child: Center(
                child: Text("+ Deposit",style: TextStyle(
                    color: Colors.greenAccent, fontSize:24,fontWeight: FontWeight.bold
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
