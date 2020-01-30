import 'package:flutter/material.dart';


class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {  
  final _formKey = GlobalKey<FormState>();
  
  bool _termsChecked1 = true;
  bool _termsChecked2 = true;
  bool _termsChecked3 = true;
  bool _termsChecked4 = true;
  bool _termsChecked5 = true;
  bool _termsChecked6 = true;
  bool _termsChecked7 = true;
  bool _termsChecked8 = true;
  bool _termsChecked9 = true;

  int _selectedGender = 0;
  
  List<DropdownMenuItem<int>> 
  typeList = [] ,
  jaList = [],
  genderList1 = [],
  genderList2 = [],
  typecarList = [],
  priceList = [],
  provinceList = [];
  String _name1;
  String _lastname1;
  String _keyja;
  String _idme;
  String _name2;
  String _lastname2;
  String _address;
  String _amphoe;
  String _province;
  String _numbercar;
  

  void loadtype() {
    typeList = [];
    typeList.add(new DropdownMenuItem(
      child: new Text('ประเภทคดี'),
      value: 0,
    ));
    typeList.add(new DropdownMenuItem(
      child: new Text('คดีแพ่ง'),
      value: 1,
    ));
    typeList.add(new DropdownMenuItem(
      child: new Text('คดีอาญา'),
      value: 2,
    ));
  }
   void loadja() {
    jaList = [];
    jaList.add(new DropdownMenuItem(
      child: new Text('ผู้จับกุม'),
      value: 0,
    ));
    jaList.add(new DropdownMenuItem(
      child: new Text('ดาบตำรวจ'),
      value: 1,
    ));
    jaList.add(new DropdownMenuItem(
      child: new Text('จ่าสิบตำรวจ'),
      value: 2,
    ));
      jaList.add(new DropdownMenuItem(
      child: new Text('สิบตำรวจตรี'),
      value: 4,
    ));
      jaList.add(new DropdownMenuItem(
      child: new Text('สิบตำรวจเอก'),
      value: 5,
    ));
      jaList.add(new DropdownMenuItem(
      child: new Text('สิบตำรวจโท'),
      value: 6,
    ));
  }
   void loadgender1() {
    genderList1 = [];
    genderList1.add(new DropdownMenuItem(
      child: new Text('เพศ'),
      value: 0,
    ));
    genderList1.add(new DropdownMenuItem(
      child: new Text('ชาย'),
      value: 1,
    ));
    genderList1.add(new DropdownMenuItem(
      child: new Text('หญิง'),
      value: 2,
    ));
    genderList1.add(new DropdownMenuItem(
      child: new Text('อิ่นๆ'),
      value: 3,
    ));
  }
   void loadgender2() {
    genderList2 = [];
    genderList2.add(new DropdownMenuItem(
      child: new Text('เพศ'),
      value: 0,
    ));
    genderList2.add(new DropdownMenuItem(
      child: new Text('ชาย'),
      value: 1,
    ));
    genderList2.add(new DropdownMenuItem(
      child: new Text('หญิง'),
      value: 2,
    ));
    genderList2.add(new DropdownMenuItem(
      child: new Text('อิ่นๆ'),
      value: 3,
    ));
  }
   void loadtypecar() {
    typecarList = [];
    typecarList.add(new DropdownMenuItem(
      child: new Text('ประเภทรถ'),
      value: 0,
    ));
    typecarList.add(new DropdownMenuItem(
      child: new Text('รถจักรยานยนต์'),
      value: 1,
    ));
    typecarList.add(new DropdownMenuItem(
      child: new Text('รถยนต์'),
      value: 2,
    ));
    typecarList.add(new DropdownMenuItem(
      child: new Text('รถบรรทุก'),
      value: 3,
    ));
  }
    void loadprice() {
    priceList = [];
    priceList.add(new DropdownMenuItem(
      child: new Text('ยังไม่ชำระค่าปรับ'),
      value: 0,
    ));
    priceList.add(new DropdownMenuItem(
      child: new Text('ชำระค่าปรับเรียบร้อย'),
      value: 1,
    ));
    // priceList.add(new DropdownMenuItem(
    //   child: new Text('ชำระค่าปรบเรียบร้อย'),
    //   value: 2,
    // ));
  }
   void loadprovince() {
    provinceList = [];
    provinceList.add(new DropdownMenuItem(
      child: new Text('กรุงเทพมหานคร'),
      value: 0,
    ));
    provinceList.add(new DropdownMenuItem(
      child: new Text('กระบี่'),
      value: 1,
    ));
    provinceList.add(new DropdownMenuItem(
      child: new Text('กาญจนบุรี'),
      value: 2,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('กาฬสินธุ์'),
      value: 3,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('กำแพงเพชร'),
      value: 4,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ขอนแก่น'),
      value: 5,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('จันทบุรี'),
      value: 6,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ฉะเชิงเทรา'),
      value: 7,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ชลบุรี'),
      value: 8,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ชัยนาท'),
      value: 9,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ชัยภูมิ'),
      value: 10,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ชุมพร'),
      value: 11,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('เชียงราย'),
      value: 12,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('เชียงใหม่'),
      value: 13,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ตรัง'),
      value: 14,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ตราด'),
      value: 15,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ตาก'),
      value: 16,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('นครนายก'),
      value: 17,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('นครปฐม'),
      value: 18,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('นครพนม'),
      value: 19,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('นครราชสีมา'),
      value: 20,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('นครศรีธรรมราช'),
      value: 21,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('นครสวรรค์'),
      value: 22,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('นนทบุรี'),
      value: 23,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('นราธิวาส'),
      value: 24,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('น่าน'),
      value: 25,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('บึงกาฬ'),
      value: 26,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('บุรีรัมย์'),
      value: 27,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ปทุมธานี'),
      value: 28,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ประจวบคีรีขันธ์'),
      value: 29,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ปราจีนบุรี'),
      value: 30,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ปัตตานี'),
      value: 31,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('พระนครศรีอยุธยา'),
      value: 32,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('พังงา'),
      value: 33,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('พัทลุง'),
      value: 34,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('พิจิตร'),
      value: 35,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('พิษณุโลก'),
      value: 36,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('เพชรบุรี'),
      value: 37,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('เพชรบูรณ์'),
      value: 38,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('แพร่'),
      value: 39,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('พะเยา'),
      value: 40,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ภูเก็ต'),
      value: 41,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('มหาสารคาม'),
      value: 42,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('มุกดาหาร'),
      value: 43,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('แม่ฮ่องสอน'),
      value: 44,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ยะลา'),
      value: 45,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ยโสธร'),
      value: 46,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ร้อยเอ็ด'),
      value: 47,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ระนอง'),
      value: 48,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ระยอง'),
      value: 49,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ราชบุรี'),
      value: 50,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ลพบุรี'),
      value: 51,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ลำปาง'),
      value: 52,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ลำพูน'),
      value: 53,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('เลย'),
      value: 54,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('ศรีสะเกษ'),
      value: 55,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('สกลนคร'),
      value: 56,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('สงขลา'),
      value: 57,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('สตูล'),
      value: 58,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('สมุทรปราการ'),
      value: 59,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('สมุทรสงคราม'),
      value: 60,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('สมุทรสาคร'),
      value: 61,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('สระแก้ว'),
      value: 62,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('สระบุรี'),
      value: 63,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('สิงห์บุรี'),
      value: 64,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('สุโขทัย'),
      value: 65,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('สุพรรณบุรี'),
      value: 66,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('สุราษฎร์ธานี'),
      value: 67,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('สุรินทร์'),
      value: 68,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('หนองคาย'),
      value: 69,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('หนองบัวลำภู'),
      value: 70,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('อ่างทอง'),
      value: 71,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('อุดรธานี'),
      value: 72,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('อุทัยธานี'),
      value: 73,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('อุตรดิตถ์'),
      value: 74,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('อุบลราชธานี'),
      value: 75,
    ));
      provinceList.add(new DropdownMenuItem(
      child: new Text('อำนาจเจริญ'),
      value: 76,
    ));
    //   priceList.add(new DropdownMenuItem(
    //   child: new Text('ขอนแก่น'),
    //   value: 78,
    // ));
    //   priceList.add(new DropdownMenuItem(
    //   child: new Text('ขอนแก่น'),
    //   value: 79,
    // ));
    
  }
    void onPressedSubmit() {
      if (_formKey.currentState.validate() ) {
        _formKey.currentState.save();

       
      
      
        Scaffold.of(context)
            .showSnackBar(SnackBar(content: Text('Form Submitted')));
      }
    }
  
   @override
  Widget build(BuildContext context) {
      final halfMediaWidth = MediaQuery.of(context).size.width / 2.0;
    loadtype();
    loadja();
    loadgender1();
    loadgender2();
    loadtypecar();
    loadprice();
    loadprovince();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
          key: _formKey,
          child: new ListView(
            children: getFormWidget(),
          )),
    );
  }
  
  
  List<Widget> getFormWidget() {
    List<Widget> formWidget = new List();
    final halfMediaWidth = MediaQuery.of(context).size.width / 2.0;

Container(
                  alignment: Alignment.topCenter,
                  width: halfMediaWidth,
                  
                  
                  
                 
                );
                

  formWidget.add(new DropdownButton(
    
    
      hint: new Text('Select Gender'),
      items: typeList,
      value: _selectedGender,
      onChanged: (value) {
        setState(() {
          _selectedGender = value;
          
        });
      },
      isExpanded: true,
    ));
    formWidget.add(new DropdownButton(
      hint: new Text('Select Gender'),
      items: jaList,
      value: _selectedGender,
      onChanged: (value) {
        setState(() {
          _selectedGender = value;
        });
      },
      isExpanded: true,
    ));


  formWidget.add(new DropdownButton(
      hint: new Text('Select Gender'),
      items: genderList1,
      value: _selectedGender,
      onChanged: (value) {
        setState(() {
          _selectedGender = value;
        });
      },
      isExpanded: true,
    ));

  formWidget.add(new TextFormField(
      decoration: InputDecoration(hintText: 'Name', labelText: 'Enter Name'),
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value.isEmpty) return 'Enter Name';
      },
      onSaved: (value) {
        setState(() {
          _name1 = value;
        });
      },
    ));

  formWidget.add(new TextFormField(
      decoration: InputDecoration(hintText: 'LastName', labelText: 'Enter lastName'),
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value.isEmpty) return 'Enter Lastname';
      },
      onSaved: (value) {
        setState(() {
          _lastname1 = value;
        });
      },
    ));
    formWidget.add(new TextFormField(
      decoration: InputDecoration(hintText: 'รหัสจราจร', labelText: 'รหัสจราจร'),
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value.isEmpty) return 'รหัสจราจร';
      },
      onSaved: (value) {
        setState(() {
          _keyja = value;
        });
      },
    ));
       formWidget.add(new TextFormField(
      decoration: InputDecoration(hintText: 'เลขบัตรประจำตัวประชาชน', labelText: 'เลขบัตรประจำตัวประชาชน'),
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value.isEmpty) return 'เลขบัตรประจำตัวประชาชน';
      },
      onSaved: (value) {
        setState(() {
          _idme = value;
        });
      },
    ));

  formWidget.add(new DropdownButton(
      hint: new Text('Select Gender'),
      items: genderList2,
      value: _selectedGender,
      onChanged: (value) {
        setState(() {
          _selectedGender = value;
        });
      },
      isExpanded: true,
    ));
    formWidget.add(new TextFormField(
      decoration: InputDecoration(hintText: 'Name', labelText: 'Enter Name'),
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value.isEmpty) return 'Enter Name';
      },
      onSaved: (value) {
        setState(() {
          _name2 = value;
        });
      },
    ));

  formWidget.add(new TextFormField(
      decoration: InputDecoration(hintText: 'LastName', labelText: 'Enter lastName'),
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value.isEmpty) return 'Enter Lastname';
      },
      onSaved: (value) {
        setState(() {
          _lastname2 = value;
        });
      },
    ));
     formWidget.add(new TextFormField(
      decoration: InputDecoration(hintText: 'ที่อยู่', labelText: 'ที่อยู่'),
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value.isEmpty) return 'ที่อยู่';
      },
      onSaved: (value) {
        setState(() {
          _address = value;
        });
      },
    ));
    formWidget.add(new TextFormField(
      decoration: InputDecoration(hintText: 'อำเภอ', labelText: 'อำเภอ'),
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value.isEmpty) return 'อำเภอ';
      },
      onSaved: (value) {
        setState(() {
          _amphoe = value;
        });
      },
    ));
     formWidget.add(new TextFormField(
      decoration: InputDecoration(hintText: 'จังหวัด', labelText: 'จังหวัด'),
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value.isEmpty) return 'จังหวัด';
      },
      onSaved: (value) {
        setState(() {
          _province = value;
        });
      },
    ));





  formWidget.add(new DropdownButton(
      hint: new Text('Select Gender'),
      items: typecarList,
      value: _selectedGender,
      onChanged: (value) {
        setState(() {
          _selectedGender = value;
        });
      },
      isExpanded: true,
    ));

     formWidget.add(new TextFormField(
      decoration: InputDecoration(hintText: 'หมายเลขป้ายทะเบียน', labelText: 'หมายเลขป้ายทะเบียน'),
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value.isEmpty) return 'หมายเลขป้ายทะเบียน';
      },
      onSaved: (value) {
        setState(() {
          _numbercar = value;
        });
      },
    ));
     formWidget.add(new DropdownButton(
      hint: new Text('Select Gender'),
      items: provinceList,
      value: _selectedGender,
      onChanged: (value) {
        setState(() {
          _selectedGender = value;
        });
      },
      isExpanded: true,
    ));


  
    
    formWidget.add(CheckboxListTile(
      value: _termsChecked1,
      onChanged: (value) {
        setState(() {
          _termsChecked1 = value;
        });
      },
      // subtitle: !_termsChecked
      //     ? Text(
      //         'Required',
      //         style: TextStyle(color: Colors.red, fontSize: 12.0),
      //       )
      //     : null,
      title: new Text(
        'ไม่สวมหมวกนิรภัย',
      ),
      controlAffinity: ListTileControlAffinity.leading,
    ));
     formWidget.add(CheckboxListTile(
      value: _termsChecked2,
      onChanged: (value) {
        setState(() {
          _termsChecked2 = value;
        });
      },
      title: new Text(
        'ไม่ติดแผ่นป้ายทะเบียน',
      ),
      controlAffinity: ListTileControlAffinity.leading,
    ));
     formWidget.add(CheckboxListTile(
      value: _termsChecked3,
      onChanged: (value) {
        setState(() {
          _termsChecked3 = value;
        });
      },
      title: new Text(
        'ใช้โทรศัพท์ระหว่างขับรถ',
      ),
      controlAffinity: ListTileControlAffinity.leading,
    ));
     formWidget.add(CheckboxListTile(
      value: _termsChecked4,
      onChanged: (value) {
        setState(() {
          _termsChecked4 = value;
        });
      },
      title: new Text(
        'ไม่คาดเข็มขัดนิรภัย',
      ),
      controlAffinity: ListTileControlAffinity.leading,
    ));
     formWidget.add(CheckboxListTile(
      value: _termsChecked5,
      onChanged: (value) {
        setState(() {
          _termsChecked5 = value;
        });
      },
      title: new Text(
        'หยุดรถกีดขวางการจราจร',
      ),
      controlAffinity: ListTileControlAffinity.leading,
    ));
     formWidget.add(CheckboxListTile(
      value: _termsChecked6,
      onChanged: (value) {
        setState(() {
          _termsChecked6 = value;
        });
      },
      title: new Text(
        'จอดรถในที่ห้ามจอด',
      ),
      controlAffinity: ListTileControlAffinity.leading,
    ));
     formWidget.add(CheckboxListTile(
      value: _termsChecked7,
      onChanged: (value) {
        setState(() {
          _termsChecked7 = value;
        });
      },
      title: new Text(
        'ไม่มีใบอนุณาตขับขี่',
      ),
      controlAffinity: ListTileControlAffinity.leading,
    ));
     formWidget.add(CheckboxListTile(
      value: _termsChecked8,
      onChanged: (value) {
        setState(() {
          _termsChecked8 = value;
        });
      },
      title: new Text(
        'ฝ่าฝืนสัญญาณจราจร',
      ),
      controlAffinity: ListTileControlAffinity.leading,
    ));
     formWidget.add(CheckboxListTile(
      value: _termsChecked9,
      onChanged: (value) {
        setState(() {
          _termsChecked9 = value;
        });
      },
      title: new Text(
        'เมาแล้วขับ',
      ),
      controlAffinity: ListTileControlAffinity.leading,
    ));

    formWidget.add(new DropdownButton(
      hint: new Text('Select Gender'),
      items: priceList,
      value: _selectedGender,
      onChanged: (value) {
        setState(() {
          _selectedGender = value;
        });
      },
      isExpanded: true,
    ));

    formWidget.add(new RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: new Text('Submit'),
        onPressed: onPressedSubmit));
    
    return formWidget;


       
  }
  
}


