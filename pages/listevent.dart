import '/components/nav_bar_music_widget.dart';
import '/components/show_event_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'list_events_model.dart';
export 'list_events_model.dart';

class ListEventsWidget extends StatefulWidget {
  const ListEventsWidget({Key? key}) : super(key: key);

  @override
  _ListEventsWidgetState createState() => _ListEventsWidgetState();
}

class _ListEventsWidgetState extends State<ListEventsWidget> {
  late ListEventsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListEventsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).lineColor,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    FlutterFlowTheme.of(context).primary,
                    Color(0xFF2B318A)
                  ],
                  stops: [0, 1],
                  begin: AlignmentDirectional(0, -1),
                  end: AlignmentDirectional(0, 1),
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.22, -0.51),
              child: Text(
                'Events',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: Color(0x5E9499E2),
                      fontSize: 36,
                    ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 55, 10, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 0,
                        buttonSize: 60,
                        fillColor: Color(0x16FFFFFF),
                        icon: Icon(
                          Icons.chevron_left_sharp,
                          color: FlutterFlowTheme.of(context).lineColor,
                          size: 30,
                        ),
                        onPressed: () async {
                          context.pushNamed('HomePage');
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Educational subjects',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      fontSize: 22,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                          child: Container(
                            width: double.infinity,
                            height: 490,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 10, 0),
                                    child: MasonryGridView.count(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                      itemCount: 5,
                                      itemBuilder: (context, index) {
                                        return [
                                          () => InkWell(
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Color(0xF3E00B67),
                                                    barrierColor:
                                                        Color(0x00000000),
                                                    context: context,
                                                    builder: (context) {
                                                      return Padding(
                                                        padding: MediaQuery.of(
                                                                context)
                                                            .viewInsets,
                                                        child: Container(
                                                          height:
                                                              double.infinity,
                                                          child:
                                                              ShowEventWidget(),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      setState(() {}));
                                                },
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  child: Image.asset(
                                                    'assets/images/istockphoto-653919856-170667a.jpg',
                                                    width: 100,
                                                    height: 145,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                          () => InkWell(
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Color(0xFF01AD76),
                                                    barrierColor:
                                                        Color(0x00000000),
                                                    context: context,
                                                    builder: (context) {
                                                      return Padding(
                                                        padding: MediaQuery.of(
                                                                context)
                                                            .viewInsets,
                                                        child: Container(
                                                          height:
                                                              double.infinity,
                                                          child:
                                                              ShowEventWidget(),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      setState(() {}));
                                                },
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  child: Image.asset(
                                                    'assets/images/istockphoto-1387586432-612x612.jpg',
                                                    width: 100,
                                                    height: 300,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                          () => InkWell(
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Color(0xF3E0C30B),
                                                    barrierColor:
                                                        Color(0x00000000),
                                                    context: context,
                                                    builder: (context) {
                                                      return Padding(
                                                        padding: MediaQuery.of(
                                                                context)
                                                            .viewInsets,
                                                        child: Container(
                                                          height:
                                                              double.infinity,
                                                          child:
                                                              ShowEventWidget(),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      setState(() {}));
                                                },
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  child: Image.asset(
                                                    'assets/images/eprs-familyplan.jpg',
                                                    width: 100,
                                                    height: 300,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                          () => InkWell(
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .tertiary,
                                                    barrierColor:
                                                        Color(0x00000000),
                                                    context: context,
                                                    builder: (context) {
                                                      return Padding(
                                                        padding: MediaQuery.of(
                                                                context)
                                                            .viewInsets,
                                                        child: Container(
                                                          height:
                                                              double.infinity,
                                                          child:
                                                              ShowEventWidget(),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      setState(() {}));
                                                },
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  child: Image.asset(
                                                    'assets/images/earthquake_reslience_scenario_narrative_2_799x5.original.png',
                                                    width: 100,
                                                    height: 300,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                          () => InkWell(
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Color(0xA33940AD),
                                                    barrierColor:
                                                        Color(0x00000000),
                                                    context: context,
                                                    builder: (context) {
                                                      return Padding(
                                                        padding: MediaQuery.of(
                                                                context)
                                                            .viewInsets,
                                                        child: Container(
                                                          height:
                                                              double.infinity,
                                                          child:
                                                              ShowEventWidget(),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      setState(() {}));
                                                },
                                                child: Image.asset(
                                                  'assets/images/drr_0.png',
                                                  width: 100,
                                                  height: 145,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                        ][index]();
                                      },
                                    ),
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
              ],
            ),
            Align(
              alignment: AlignmentDirectional(-1.03, 1),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: wrapWithModel(
                  model: _model.navBarMusicModel,
                  updateCallback: () => setState(() {}),
                  child: NavBarMusicWidget(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
