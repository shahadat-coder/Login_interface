import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _isVisible = false;
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final devicWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children:[




            Container(
              height: deviceHeight * 0.65,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: LayoutBuilder(builder: (ctx,constraints){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Login Now',
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),

                    SizedBox(height: constraints.maxHeight * 0.01,),
                    Text("Please enter the details below to continue"),
                    SizedBox(height: constraints.maxHeight * 0.08,),
                    Container(
                      height: constraints.maxHeight * 0.12,
                      decoration: BoxDecoration(
                        color: Color(0xffB4B4B4).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'test@gmail.com'
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.02,
                    ),
                    Container(
                      height: constraints.maxHeight * 0.12,
                      decoration: BoxDecoration(
                        color: Color(0xffB4B4B4).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Center(
                          child: TextField(
                            obscureText: _isVisible? false: true,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: (){
                                  setState(() {
                                    _isVisible = !_isVisible;
                                  });
                                },
                                icon: Icon(
                                  _isVisible?
                                  Icons.visibility:Icons.visibility_off,
                                  color: Colors.grey,
                                ),
                              ),
                              border: InputBorder.none,
                              hintText: 'Password',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed: (){}, child: Text('Forgot Password?',
                          style: TextStyle(
                            color: Color(0xffF80849),
                          ),
                        )),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: constraints.maxHeight * 0.12,
                      margin: EdgeInsets.only(
                        top: constraints.maxHeight * 0.05,
                      ),
                      child: ElevatedButton(
                        onPressed: (){},

                        child: Text('Login',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            )
                        ),

                        style:ElevatedButton.styleFrom(
                          primary:Color(0xffF80849),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                        ),
                      ),

                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.02,
                    ),
                    RichText(text: TextSpan(text:
                    "Don't have an Account!",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        children: [
                          TextSpan(
                              text:'Register',
                              style: TextStyle(
                                  color: Color(0xffF80849),
                                  fontSize: 18
                              ),
                              recognizer: TapGestureRecognizer()..onTap = (){}
                          ),
                        ]
                    )),


                  ],

                );
              },),
            ),

          ],

        ),
      ),

      ),
    );
  }
}


