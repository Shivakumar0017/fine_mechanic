import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../forgot_password/forgot_password_widget.dart';
import '../main.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  TextEditingController confirmPasswordTextController0;
  bool passwordVisibility3;
  TextEditingController emailTextController2;
  TextEditingController passwordTextController2;
  bool passwordVisibility2;
  TextEditingController emailTextController1;
  TextEditingController passwordTextController1;
  bool passwordVisibility1;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confirmPasswordTextController0 = TextEditingController();
    passwordVisibility3 = false;
    emailTextController2 = TextEditingController();
    passwordTextController2 = TextEditingController();
    passwordVisibility2 = false;
    emailTextController1 = TextEditingController();
    passwordTextController1 = TextEditingController();
    passwordVisibility1 = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Image.asset(
                'assets/images/Red-Lamborghini-Aventador.jpg',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
                child: DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: FlutterFlowTheme.of(context).primaryBtnText,
                        labelStyle: FlutterFlowTheme.of(context).bodyText1,
                        indicatorColor:
                            FlutterFlowTheme.of(context).secondaryColor,
                        tabs: [
                          Tab(
                            text: 'Log In',
                          ),
                          Tab(
                            text: 'Sign Up',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 20, 10, 0),
                                      child: TextFormField(
                                        controller: emailTextController1,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          'emailTextController1',
                                          Duration(milliseconds: 2000),
                                          () => setState(() {}),
                                        ),
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Email',
                                          hintText: 'Enter your email here...',
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBtnText,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF111012),
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 20, 10, 0),
                                  child: TextFormField(
                                    controller: passwordTextController1,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      'passwordTextController1',
                                      Duration(milliseconds: 2000),
                                      () => setState(() {}),
                                    ),
                                    autofocus: true,
                                    obscureText: !passwordVisibility1,
                                    decoration: InputDecoration(
                                      labelText: 'Password',
                                      hintText: 'Enter your password here...',
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => passwordVisibility1 =
                                              !passwordVisibility1,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          passwordVisibility1
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: Color(0xFF757575),
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF111012),
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 25, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      final user = await signInWithEmail(
                                        context,
                                        emailTextController1.text,
                                        passwordTextController1.text,
                                      );
                                      if (user == null) {
                                        return;
                                      }

                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => NavBarPage(
                                              initialPage: 'homePage'),
                                        ),
                                      );
                                    },
                                    text: 'Log In',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 40,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                      elevation: 10,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ForgotPasswordWidget(),
                                        ),
                                      );
                                    },
                                    text: 'Forgot password',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 40,
                                      color: Colors.transparent,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      elevation: 10,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 20, 10, 0),
                                      child: TextFormField(
                                        controller: emailTextController2,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          'emailTextController2',
                                          Duration(milliseconds: 2000),
                                          () => setState(() {}),
                                        ),
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Email',
                                          hintText: 'Enter your email here...',
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBtnText,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF111012),
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 20, 10, 0),
                                  child: TextFormField(
                                    controller: passwordTextController2,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      'passwordTextController2',
                                      Duration(milliseconds: 2000),
                                      () => setState(() {}),
                                    ),
                                    autofocus: true,
                                    obscureText: !passwordVisibility2,
                                    decoration: InputDecoration(
                                      labelText: 'Password',
                                      hintText: 'Enter your password here...',
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => passwordVisibility2 =
                                              !passwordVisibility2,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          passwordVisibility2
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: Color(0xFF757575),
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF111012),
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 20, 10, 0),
                                  child: TextFormField(
                                    controller: confirmPasswordTextController0,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      'confirmPasswordTextController0',
                                      Duration(milliseconds: 2000),
                                      () => setState(() {}),
                                    ),
                                    autofocus: true,
                                    obscureText: !passwordVisibility3,
                                    decoration: InputDecoration(
                                      labelText: 'Confirm Password',
                                      hintText: 'Confirm  password here...',
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => passwordVisibility3 =
                                              !passwordVisibility3,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          passwordVisibility3
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: Color(0xFF757575),
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF111012),
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 25, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (passwordTextController2?.text !=
                                          confirmPasswordTextController0
                                              ?.text) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Passwords don\'t match!',
                                            ),
                                          ),
                                        );
                                        return;
                                      }

                                      final user = await createAccountWithEmail(
                                        context,
                                        emailTextController2.text,
                                        passwordTextController2.text,
                                      );
                                      if (user == null) {
                                        return;
                                      }

                                      await Navigator.pushAndRemoveUntil(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          duration: Duration(milliseconds: 300),
                                          reverseDuration:
                                              Duration(milliseconds: 300),
                                          child: LoginPageWidget(),
                                        ),
                                        (r) => false,
                                      );
                                    },
                                    text: 'Sign Up',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 40,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                      elevation: 10,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
