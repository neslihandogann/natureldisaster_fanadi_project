import '/components/nav_bar_music_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldSearch widget.
  TextEditingController? textFieldSearchController;
  String? Function(BuildContext, String?)? textFieldSearchControllerValidator;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue;
  FormFieldController<List<String>>? choiceChipsController;
  // Model for NavBarMusic component.
  late NavBarMusicModel navBarMusicModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navBarMusicModel = createModel(context, () => NavBarMusicModel());
  }

  void dispose() {
    textFieldSearchController?.dispose();
    navBarMusicModel.dispose();
  }

  /// Additional helper methods are added here.

}
