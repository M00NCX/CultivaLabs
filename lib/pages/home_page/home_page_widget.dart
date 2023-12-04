import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xFF7CC529),
          automaticallyImplyLeading: false,
          leading: Align(
            alignment: const AlignmentDirectional(0.00, 0.00),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
              child: Container(
                width: 120.0,
                height: 120.0,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://images.unsplash.com/photo-1497250681960-ef046c08a56e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw1fHxwbGFudHxlbnwwfHx8fDE3MDExMDgwNzV8MA&ixlib=rb-4.0.3&q=80&w=1080',
                  fit: BoxFit.fill,
                  alignment: const Alignment(-1.00, 0.00),
                ),
              ),
            ),
          ),
          title: Align(
            alignment: const AlignmentDirectional(-1.00, 0.00),
            child: Text(
              'Olá!',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
            ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 52.0,
              icon: const Icon(
                Icons.logout,
                color: Color(0xFFFBFBFB),
                size: 30.0,
              ),
              onPressed: () async {
                GoRouter.of(context).prepareAuthEvent();
                await authManager.signOut();
                GoRouter.of(context).clearRedirectLocation();

                context.goNamedAuth('Login', context.mounted);
              },
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.00, -0.71),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 10.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 150.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF6F6F6),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                alignment: const AlignmentDirectional(0.00, 0.00),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('Certification');
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.00, -1.00),
                                          child: Text(
                                            'Certificações',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 20.0,
                                                ),
                                          ),
                                        ),
                                        const Align(
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    75.0, 0.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.receipt,
                                              color: Color(0xFF878B8B),
                                              size: 40.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 150.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF6F6F6),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                alignment: const AlignmentDirectional(0.00, 0.00),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.00, -1.00),
                                        child: Text(
                                          'Meu nível',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontSize: 20.0,
                                              ),
                                        ),
                                      ),
                                      const Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  75.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.star_half,
                                            color: Color(0xFF878B8B),
                                            size: 40.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 25.0)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 10.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 150.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF6F6F6),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                alignment: const AlignmentDirectional(0.00, 0.00),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.00, -1.00),
                                        child: Text(
                                          'Produtores',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontSize: 20.0,
                                              ),
                                        ),
                                      ),
                                      const Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  75.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.groups_sharp,
                                            color: Color(0xFF878B8B),
                                            size: 40.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 150.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF6F6F6),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                alignment: const AlignmentDirectional(0.00, 0.00),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.00, -1.00),
                                        child: Text(
                                          'Cursos',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontSize: 20.0,
                                              ),
                                        ),
                                      ),
                                      const Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  75.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.cast_for_education,
                                            color: Color(0xFF878B8B),
                                            size: 40.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 25.0)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 10.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 150.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF6F6F6),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                alignment: const AlignmentDirectional(0.00, 0.00),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.00, -1.00),
                                        child: Text(
                                          'Minha trilha',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontSize: 20.0,
                                              ),
                                        ),
                                      ),
                                      const Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  75.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.follow_the_signs_rounded,
                                            color: Color(0xFF878B8B),
                                            size: 40.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 150.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF6F6F6),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                alignment: const AlignmentDirectional(0.00, 0.00),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.00, -1.00),
                                        child: Text(
                                          'Chat',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontSize: 20.0,
                                              ),
                                        ),
                                      ),
                                      const Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  75.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.chat,
                                            color: Color(0xFF878B8B),
                                            size: 40.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 25.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Container(
                width: double.infinity,
                height: 50.0,
                decoration: const BoxDecoration(
                  color: Color(0xFF7CC529),
                  shape: BoxShape.rectangle,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FlutterFlowIconButton(
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 42.0,
                      icon: const Icon(
                        Icons.notifications_active,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 42.0,
                        icon: const Icon(
                          Icons.home_rounded,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 42.0,
                        icon: const Icon(
                          Icons.settings_sharp,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ),
                  ].divide(const SizedBox(width: 65.0)).around(const SizedBox(width: 65.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
