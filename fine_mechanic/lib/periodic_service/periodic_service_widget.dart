import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class PeriodicServiceWidget extends StatefulWidget {
  const PeriodicServiceWidget({Key key}) : super(key: key);

  @override
  _PeriodicServiceWidgetState createState() => _PeriodicServiceWidgetState();
}

class _PeriodicServiceWidgetState extends State<PeriodicServiceWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 50),
        scale: 0.9,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 50),
        scale: 0.9,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 50),
        scale: 0.9,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'rowOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 50),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'rowOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 50),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 700,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 120),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    height: 400,
                    decoration: BoxDecoration(
                      color: Color(0xFFDBE2E7),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  child: FlutterFlowExpandedImageView(
                                    image: Image.asset(
                                      'assets/images/\\\'.jpg',
                                      fit: BoxFit.contain,
                                    ),
                                    allowRotation: false,
                                    tag: 'productShoe',
                                    useHeroAnimation: true,
                                  ),
                                ),
                              );
                            },
                            child: Hero(
                              tag: 'productShoe',
                              transitionOnUserGestures: true,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0),
                                child: Image.asset(
                                  'assets/images/\\\'.jpg',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color(0x3A000000),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30,
                                        buttonSize: 46,
                                        icon: Icon(
                                          Icons.arrow_back_rounded,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                        onPressed: () async {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ),
                                    Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color(0x3A000000),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30,
                                        buttonSize: 46,
                                        icon: Icon(
                                          Icons.favorite_border,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ).animated([animationsMap['containerOnPageLoadAnimation1']]),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 20, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '3M Periodic Service',
                          style: FlutterFlowTheme.of(context).title2,
                        ),
                        Text(
                          'Rs.2800',
                          style: FlutterFlowTheme.of(context).title2.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFF39D2C0),
                              ),
                        ),
                      ],
                    ).animated([animationsMap['rowOnPageLoadAnimation1']]),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 8, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        RatingBarIndicator(
                          itemBuilder: (context, index) => Icon(
                            Icons.star_rounded,
                            color: Color(0xFFFFA130),
                          ),
                          direction: Axis.horizontal,
                          rating: 5,
                          unratedColor: Color(0xFF95A1AC),
                          itemCount: 5,
                          itemSize: 24,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Text(
                            '4.4/5 Reviews',
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                        ),
                      ],
                    ).animated([animationsMap['rowOnPageLoadAnimation2']]),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'DESCRIPTION',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ],
                    ).animated([animationsMap['rowOnPageLoadAnimation3']]),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'Periodic Maintenance Service is a schedule of planned maintenance activities aimed to prevent any breakdowns and failures of your car. It saves money on repairs in the future too. PMS has proved that it costs less to maintain the car than to repair it.',
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                        ),
                      ],
                    ).animated([animationsMap['rowOnPageLoadAnimation4']]),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryText,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Color(0x55000000),
                  offset: Offset(0, 2),
                )
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 52),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              NavBarPage(initialPage: 'CartPage'),
                        ),
                      );
                    },
                    text: 'Buy Now',
                    options: FFButtonOptions(
                      width: 160,
                      height: 50,
                      color: Color(0xFF39D2C0),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                      elevation: 0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).secondaryColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: Duration(milliseconds: 300),
                          reverseDuration: Duration(milliseconds: 300),
                          child: NavBarPage(initialPage: 'CartPage'),
                        ),
                      );
                    },
                    text: 'Add to Cart',
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      size: 15,
                    ),
                    options: FFButtonOptions(
                      width: 160,
                      height: 50,
                      color: Color(0xFF39D2C0),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Outfit',
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
            ),
          ).animated([animationsMap['containerOnPageLoadAnimation2']]),
        ],
      ),
    );
  }
}
