import 'Soru_Yapisi.dart';
import 'package:flutter/material.dart';

TestYapisi BenimTestim = new TestYapisi();





class TestYapisi{
  int aktif_sorum=0;
  List<Icon> d_y_bilgisi =[];
  List<Soru> Sorular=[
    Soru(soru_metni: "Aşağıdakilerden hangisi DART dilinde tanımlı veri tiplerinden değildir?", a: "String", b: "long", c: "int", d: "bool", cevap: "B"),
    Soru(soru_metni: "DART dilinde sayısal verilerin tutulduğu veri tipi hangisidir?", a: "bool", b: "String", c: "long", d: "double", cevap:"D"),
    Soru(soru_metni: "Spesifik bir hata türünü yakalamak isteyen bir flutter geliştiricisi hangi anahtar kelimeden yararlanır ?", a: "in", b: "out", c: "throw", d: "on", cevap:"D"),
    Soru(soru_metni: "Hangisi flutter Material Widget değildir", a: "Scaffold", b: "Container", c: "DropDownList", d: "text", cevap:"C")


  ];
void sonraki_soruya_gec(){
  if(Sorular.length-1 > aktif_sorum)
  {aktif_sorum++;} else{aktif_sorum=0;}

  }
String soru_metnini_yaz(){
  return Sorular[aktif_sorum].Soru_Metni;

}
String a_sikki_yaz(){
  return Sorular[aktif_sorum].A_sikki;
}
  String b_sikki_yaz(){
    return Sorular[aktif_sorum].B_sikki;
  }
  String c_sikki_yaz(){
    return Sorular[aktif_sorum].C_sikki;
  }
  String d_sikki_yaz(){
    return Sorular[aktif_sorum].D_sikki;
  }

  void cevabi_kontrol_et(String k_cevabi){
    if (Sorular[aktif_sorum].Cevap == k_cevabi){
      d_y_bilgisi.add(Icon(Icons.check),);
    }
    else{
      d_y_bilgisi.add(Icon(Icons.close),);
    }
    sonraki_soruya_gec();
  }
}



















