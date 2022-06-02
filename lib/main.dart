import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CoktanSecmeli.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Center(
                child: Text(
                  BenimTestim.soru_metnini_yaz(),
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            BenimTestim.cevabi_kontrol_et("A");
                          });

                        },
                        child: Text(BenimTestim.a_sikki_yaz()),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            BenimTestim.cevabi_kontrol_et("B");
                          });


                        },
                        child: Text(BenimTestim.b_sikki_yaz()),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              BenimTestim.cevabi_kontrol_et("C");
                            });


                          }, child: Text(BenimTestim.c_sikki_yaz())),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            BenimTestim.cevabi_kontrol_et("D");
                           });


                        },
                        child: Text(BenimTestim.d_sikki_yaz()),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Sonuc Bilgisi',
              style: TextStyle(fontSize: 20.0),
            ),
            Row(children: BenimTestim.d_y_bilgisi,),
            SizedBox(
              height: 10.0,
            )
          ],
        ),
      ),
    );
  }
}
