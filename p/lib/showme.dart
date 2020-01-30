
import 'package:flutter/material.dart';


class Detail extends StatelessWidget {
 

  bodyWidget(BuildContext context) => Stack(
        children: <Widget>[
          Positioned(
            height: MediaQuery.of(context).size.height / 1.35,
            width: MediaQuery.of(context).size.width - 22,
            left: 12.0,
            top: MediaQuery.of(context).size.height * 0.0001,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17),
              ),
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: 2.0,
                    ),
                    
                    Text("ข้อมูลใบสั่งจราจร",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Dosis',),
                          
                    ),
                    Text("ข้อมูลเจ้าหน้าที่จราจร",style: TextStyle(fontWeight: FontWeight.bold,)),
                    Text("ประเภทคดี: คดีแพ่ง ยศผู้จับกุม: ดาบตำรวจ" ),
                    Text("เพศ: ชาย รหัสจราจร: 6301"),
                    Text("ชื่อ: จินตรา นามสกุล: วิเศษ	"),
                    // Text("รหัสจราจร: 6301"),
                    Text("ข้อมูลผู้กระทำผิด",style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("เลขบัตรประจำตัวประชาชน: 1234567891235"),
                    Text("เพศ: ชาย"),
                    Text("ชื่อ ใจดี นามสกุล นะจ๊ะ"),
                    Text("ที่อยู่ บ้านเลขที่12 หมู่77 ซอยนาริน"),
                    Text('อำเภอเมือง จังหวัดอุบลราชธานี'),
                    Text("ประเภทรถ: รถยนต์ "),
                    Text("หมายเลขป้ายทะเบียน กก2321 จังหวัดอุบลราชธานี"),
                    Text("ข้อหาการกระทำความผิด ",style: TextStyle(fontWeight: FontWeight.bold,)),
                    Text("ไม่มีใบอนุณาตขับขี่ ฝ่าฝืนสัญญาณจราจร"),
                    Text("สถานะชำระค่าปรับ: ยังไม่ชำระค่าปรับ"),
                  
                
                  ],
                ),
              ),
            ),
          ),
         
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey,
        // title: Text("p"),
      ),
      body: bodyWidget(context),

    ); 
  }
}