import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
          primaryColor: const Color(0xff164363),
          textTheme: GoogleFonts.elMessiriTextTheme()),
      debugShowCheckedModeBanner: false,
      home: Securitycode()));
}

class AddAccount extends StatefulWidget {
  AddAccount({Key? key}) : super(key: key);

  @override
  State<AddAccount> createState() => _AddAccountState();
}

class _AddAccountState extends State<AddAccount> {
  var namecontroller = TextEditingController();
  String s = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          iconSize: 40,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                      const Padding(
                        padding: EdgeInsets.only(top: 8, right: 20),
                        child: Text(
                          "اضافة حساب",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          width: 120,
                          height: 100,
                          child: Image.asset("assets/Group.png"))),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                        height: 1,
                        width: double.infinity,
                        color: const Color(0xff164363))),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 350,
                    child: TextFormField(
                        controller: namecontroller,
                        decoration: InputDecoration(
                            hintText: "اسم المستخدم",
                            suffixIcon: const Icon(Icons.person),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40))),
                        textAlign: TextAlign.end),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 350,
                    child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "كلمة المرور",
                            suffixIcon: const Icon(Icons.password),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40))),
                        textAlign: TextAlign.end),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 350,
                    child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "اسم تعريفي",
                            suffixIcon: const Icon(Icons.face_6),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40))),
                        textAlign: TextAlign.end),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: SizedBox(
                      width: 120,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  const MaterialStatePropertyAll<Color>(
                                      Color(0xFF164363)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ))),
                          onPressed: () {
                            s = namecontroller.text;
                            setState(() {});
                          },
                          child: const Text("إضافة",
                              style: TextStyle(fontSize: 20)))),
                )
              ]),
            )),
      ),
    );
  }
}

class Securitycode extends StatefulWidget {
  const Securitycode({Key? key}) : super(key: key);

  @override
  State<Securitycode> createState() => _SecuritycodeState();
}

class _SecuritycodeState extends State<Securitycode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          iconSize: 40,
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                      const Padding(
                        padding: EdgeInsets.only(top: 8, right: 20),
                        child: Text(
                          "رمز الحماية",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          width: 120,
                          height: 100,
                          child: Image.asset("assets/password.png"))),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                        height: 1,
                        width: double.infinity,
                        color: const Color(0xff164363))),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 350,
                    child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsetsDirectional.only(end: 20),
                            hintText: "ادخل رمز الحماية",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40))),
                        textAlign: TextAlign.end),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 350,
                    child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsetsDirectional.only(end: 20),
                            hintText: "تأكيد رمز الحماية",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40))),
                        textAlign: TextAlign.right),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                      width: 120,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  Color(0xFF164363)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ))),
                          onPressed: () {
                            print("navigate");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddAccount()));
                          },
                          child: const Text("حفظ",
                              style: TextStyle(fontSize: 20)))),
                )
              ]),
            )),
      ),
    );
  }
}
