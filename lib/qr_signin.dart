import 'package:flutter/material.dart';
import 'package:qr_app/new.dart';
import 'package:qr_app/scan.dart';
import 'package:qr_flutter/qr_flutter.dart';
class Qr extends StatefulWidget {
  const Qr({Key? key}) : super(key: key);

  @override
  State<Qr> createState() => _QrState();
}

class _QrState extends State<Qr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal,
    ),
            body: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Icon (
                      Icons.account_circle,
                      size: 160,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 30,),
                  QrImageView(
                    data: '1234567890',
                    version: QrVersions.auto,
                    size: 200.0,
                  foregroundColor: Colors.white,
                  ),
                 SizedBox(height: 50,),
                 Container(
                   padding: EdgeInsets.symmetric(horizontal: 60,vertical: 10),
                   child: TextButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder:(context)=>New()));
                   },
                       child: Text('Scan',style: TextStyle(
                         fontSize: 20,
                         color: Colors.white
                       ),),
                     style: TextButton.styleFrom(
                         shape: RoundedRectangleBorder(
                             side: BorderSide(color: Colors.white)
                         )
                     ),
                   ),
                 )
                ],
              ),
            ),
      );
  }
}
