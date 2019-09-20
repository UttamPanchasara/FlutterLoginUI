import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passwordVisible;

  final Color accentColor = Colors.orange;
  final Color darkColor = Colors.black;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: body(),
            ),
          );
        },
      ),
    );
  }

  Widget body() {
    return Container(
      // Add box decoration
      color: darkColor,
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 100,
                  width: double.maxFinite,
                  color: accentColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: FloatingActionButton(
                          backgroundColor: darkColor,
                          onPressed: () {
                            Navigator.pop(context);
                            /*Navigator.pushReplacement(
                                context, SlideRightRoute(page: SignInScreen()));*/
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: accentColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Registration",
                          style: TextStyle(
                              color: darkColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.email,
                              color: darkColor,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                  color: darkColor,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: darkColor,
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: darkColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.perm_identity,
                              color: darkColor,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Username',
                                labelStyle: TextStyle(
                                  color: darkColor,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: darkColor,
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: darkColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.lock,
                              color: darkColor,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              obscureText: passwordVisible,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                  color: darkColor,
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    passwordVisible
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      passwordVisible = !passwordVisible;
                                    });
                                  },
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: darkColor,
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: darkColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 50, bottom: 20),
                        child: SizedBox(
                          height: 50,
                          width: double.maxFinite,
                          child: RaisedButton(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30),
                            ),
                            onPressed: () {},
                            textColor: darkColor,
                            color: accentColor,
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "GET STARTED",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
