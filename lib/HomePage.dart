import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var firtext;
  String texttodiplay = "";
  String res;

  void btnclicked(String btntext) {
    if (btntext == "") {
      texttodiplay = "";
      firtext = 0;
      res = "";
    }
    {
      firtext = btntext;

      res = "";
      texttodiplay = texttodiplay + btntext;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Widget custombuttom(String btnval) {
      return Expanded(
        child: MaterialButton(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          onPressed: () => btnclicked(btnval),
          child: Text(
            "$btnval",
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("keybord"),
      ),
      body: Container(
        padding:
            EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  "$texttodiplay",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                custombuttom("अ"),
                custombuttom("आ"),
                custombuttom("इ"),
                custombuttom("ई"),
                custombuttom("उ"),
                custombuttom("ऊ"),
                custombuttom("ए"),
                custombuttom("ऐ"),
                custombuttom("ओ"),
                custombuttom("औ"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                custombuttom("म"),
                custombuttom("न"),
                custombuttom("झ"),
                custombuttom("भ"),
                custombuttom("घ"),
                custombuttom("ढ"),
                custombuttom("ध"),
                custombuttom("ज़"),
                custombuttom("ब"),
                custombuttom("ग़"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                custombuttom("ड"),
                custombuttom("द"),
                custombuttom("ख़"),
                custombuttom("फ़"),
                custombuttom("छ"),
                custombuttom("ठ"),
                custombuttom("थ"),
                custombuttom("च"),
                custombuttom("ट"),
                custombuttom("त"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                custombuttom("ब"),
                custombuttom("क"),
                custombuttom("प"),
                custombuttom("य"),
                custombuttom("श"),
                custombuttom("ष"),
                custombuttom("स"),
                custombuttom("र"),
                custombuttom("ह"),
                custombuttom("ल"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                custombuttom("123"),
                custombuttom("En"),
                custombuttom("Space"),
                custombuttom("X"),
                custombuttom("Enter"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
