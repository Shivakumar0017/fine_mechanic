import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key key}) : super(key: key);

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  String dropDownValue;
  bool switchListTileValue;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        title: Text(
          'Settings',
          style: FlutterFlowTheme.of(context).title2,
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              buttonSize: 48,
              icon: Icon(
                Icons.close_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 30,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: SwitchListTile.adaptive(
                          value: switchListTileValue ??= false,
                          onChanged: (newValue) =>
                              setState(() => switchListTileValue = newValue),
                          title: Text(
                            'Dark mode',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          activeColor: Color(0xFFF1F4F8),
                          activeTrackColor: Color(0xFFF1F4F8),
                          dense: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(24, 4, 12, 4),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                      child: FlutterFlowDropDown(
                        options: ['INR', 'USD', 'CAD', 'EUR', 'OMR', 'KWD'],
                        onChanged: (val) => setState(() => dropDownValue = val),
                        width: double.infinity,
                        height: 50,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF57636C),
                                  fontWeight: FontWeight.normal,
                                ),
                        hintText: 'Currency',
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          size: 15,
                        ),
                        fillColor: Colors.white,
                        elevation: 2,
                        borderColor: Color(0xFFF1F4F8),
                        borderWidth: 2,
                        borderRadius: 8,
                        margin: EdgeInsetsDirectional.fromSTEB(24, 4, 12, 4),
                        hidesUnderline: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
