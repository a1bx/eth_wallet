import 'package:eth_wallet/features/deposit/deposit.dart';
import 'package:eth_wallet/features/withdraw/withdraw.dart';
import 'package:eth_wallet/utils/colors.dart';
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
      backgroundColor: AppColors.accent,
      appBar: AppBar(
        title: Text("Eth Wallet"),
        backgroundColor:AppColors.accent,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal:12,vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
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
                ),
              ),
            ),
            const SizedBox(height:12),
            Row(
              children: [
                Expanded(child: InkWell(
                  onTap: ()=> Navigator.push(context,MaterialPageRoute(builder: (context)=>Deposit())),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                        color: Colors.tealAccent
                    ),
                    child: Center(
                      child: Text("+ Deposit",style: TextStyle(
                          color: Colors.teal, fontSize:24,fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                  ),
                )
                ),
                const SizedBox(width:8),
                Expanded(
                    child: InkWell(
                      onTap: ()=> Navigator.push(context,MaterialPageRoute(builder: (context)=>Withdraw())),
                      child: Container(
                    height: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                        color: Colors.redAccent
                    ),
                    child: Center(
                      child: Text("- Withdraw",style: TextStyle(
                          color: Colors.tealAccent, fontSize:24,fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                  ),
                )
                )
              ],
            ),
            const SizedBox(
              height: 20),
            Text("Transactions",style: TextStyle (
              fontSize: 20,
              fontWeight: FontWeight.bold
            ) ,
            ),
            const SizedBox(
                height: 20),
            Expanded(child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12,horizontal:12 ),
                  decoration:BoxDecoration (
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/Ethereum logo.svg",
                            height: 24,
                            width: 24,),
                          const SizedBox(width: 12),
                          const Text("1 ETH",style: TextStyle(
                            fontSize: 20,fontWeight: FontWeight.bold
                          ),
                          )
                        ],
                      ),
                      const Text("0xc8b6BC33e01b2cE7E73226BA67CcD5115B3467A1",
                        style: TextStyle(fontSize: 12),
                      ),
                      Text("NFT Purchase",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                )
              ],
            ))

          ],
        ),
      ),
    );
  }
}
