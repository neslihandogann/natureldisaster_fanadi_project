import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

class LoginPageCopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailField widget.
  TextEditingController? emailFieldController1;
  String? Function(BuildContext, String?)? emailFieldController1Validator;
  // State field(s) for emailField widget.
  TextEditingController? emailFieldController2;
  String? Function(BuildContext, String?)? emailFieldController2Validator;
  // State field(s) for SwipeableStack widget.
  late SwipeableCardSectionController swipeableStackController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    swipeableStackController = SwipeableCardSectionController();
  }

  void dispose() {
    emailFieldController1?.dispose();
    emailFieldController2?.dispose();
  }

  /// Additional helper methods are added here.

}
