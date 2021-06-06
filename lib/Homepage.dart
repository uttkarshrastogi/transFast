import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transapp/translate.dart';

import 'package:transapp/translate_api.dart';
import 'dropdown.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? valueChoose = "en";
  String? valueChoose1 = "hi";
  late List _list = [
    "af",
    "hi",
    "en",
    "sq",
    "am",
    "ar",
    "hy",
    "az",
    "ba",
    "eu",
    "be",
    "bn",
    "bs",
    "bg",
    "my",
    "ca",
    "ceb",
    "ny",
    "co",
    "hr",
    "cs",
    "da",
    "nl",
    "eo",
    "et",
    "fi",
    "fr",
    "fy",
    "gl",
    "ka",
    "de",
    "el",
    "gu",
    "hu",
    "is",
    "ig",
    "id",
    "ga",
    "it",
    "ja",
    "jw",
    "kn",
    "kk",
    "km",
    "ko",
    "ku",
    "ky",
    "lo",
    "la",
    "lv",
    "lt",
    "lb",
    "mk",
    "mg",
    "ms",
    "ml",
    "mt",
    "mi",
    "mr",
    "mh",
    "mn",
    "ne",
    "no",
    "ps",
    "pap",
    "fa",
    "pl",
    "pt",
    "pa",
    "ro",
    "ru",
    "sm",
    "gd",
    "sr",
    "st",
    "sn",
    "sd",
    "si",
    "sk",
    "sl",
    "so",
    "es",
    "su",
    "sw",
    "sv",
    "tl",
    "tg",
    "ta",
    "tt",
    "te",
    "th",
    "tr",
    "udm",
    "uk",
    "ur",
    "uz",
    "vi",
    "cy",
    "xh",
    "yi",
    "yo"
  ];
  late Welcome _translate;
  bool _isLoading = true;
  String? textD;

  @override
  void initState() {
    super.initState();

    myController1.text = "Write here";
    to.text = "hi";
    from.text = "en";
    textD = "Olaa!";
    TranslateH();
  }

  Future<void> TranslateH() async {
    _translate =
        await RecipeApi.getRecipe(myController1.text, to.text, from.text);
    print("fututre" + to.text);
    print("fututre" + from.text);

    setState(() {
      _isLoading = false;
    });
  }

  final myController1 = TextEditingController();
  final to = TextEditingController();
  final from = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print(to.text);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.black87,
                  child: Image(
                    image: AssetImage("assets/patternT.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                SafeArea(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.translate,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Trans-Fast",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.yellow,
                          ),
                          child: Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(
                                          4, 4), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black54,
                                                      spreadRadius: 0.5,
                                                      blurRadius: 30,
                                                      offset: Offset(0,
                                                          15), // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(3.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                    child: Image.network(
                                                      "https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/250px-Flag_of_the_United_States.svg.png",
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: DropdownButton(
                                                value: valueChoose,
                                                onChanged: (newvalue) {
                                                  setState(() {
                                                    valueChoose =
                                                        newvalue as String;
                                                    print(to.text);
                                                    from.text = valueChoose!;
                                                    _isLoading = true;

                                                    TranslateH();
                                                  });
                                                },
                                                items: _list.map((valueItem) {
                                                  return DropdownMenuItem(
                                                      value: valueItem,
                                                      child: Text(valueItem));
                                                }).toList(),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 23.0),
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                to.text = "ar";
                                                from.text = "hi";
                                                TranslateH();
                                                print(to);
                                                print(from);
                                              });
                                            },
                                            child: Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black54,
                                                    spreadRadius: 0.5,
                                                    blurRadius: 30,
                                                    offset: Offset(0,
                                                        15), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                              child: Icon(
                                                  Icons.arrow_forward_sharp),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black54,
                                                      spreadRadius: 0.5,
                                                      blurRadius: 30,
                                                      offset: Offset(0,
                                                          15), // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(3.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                    child: Image.network(
                                                      "https://cdn.britannica.com/97/1597-004-05816F4E/Flag-India.jpg",
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: DropdownButton(
                                                value: valueChoose1,
                                                onChanged: (newvalue) {
                                                  setState(() {
                                                    valueChoose1 =
                                                        newvalue as String;
                                                    print(to.text);
                                                    to.text = valueChoose1!;
                                                    _isLoading = true;

                                                    TranslateH();
                                                  });
                                                },
                                                items: _list.map((valueItem) {
                                                  return DropdownMenuItem(
                                                      value: valueItem,
                                                      child: Text(valueItem));
                                                }).toList(),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pinkAccent.withOpacity(0.9),
                          ),
                          child: Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(
                                            4, 4), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: TextField(
                                          onEditingComplete: () {
                                            setState(() {
                                              _isLoading = true;

                                              TranslateH();
                                              print(_translate.toString() +
                                                  "afwef");

                                              FocusScopeNode currentFocus =
                                                  FocusScope.of(context);
                                              if (!currentFocus
                                                  .hasPrimaryFocus) {
                                                currentFocus.unfocus();
                                              }
                                            });
                                          },
                                          controller: myController1,
                                          cursorColor: Colors.redAccent,
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.all(20),
                                            fillColor: Colors.white,
                                            filled: true,
                                          ),
                                        ),
                                      ),
                                      _isLoading
                                          ? CircularProgressIndicator()
                                          : Container(
                                              child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 30,
                                                  left: 10,
                                                  right: 10,
                                                  top: 10),
                                              child: Expanded(
                                                child: SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  child: Text(
                                                    _translate.toString(),
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 20),
                                                  ),
                                                ),
                                              ),
                                            )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
