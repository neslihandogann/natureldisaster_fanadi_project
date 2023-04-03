import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'veri_struct.g.dart';

abstract class VeriStruct implements Built<VeriStruct, VeriStructBuilder> {
  static Serializer<VeriStruct> get serializer => _$veriStructSerializer;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(VeriStructBuilder builder) =>
      builder..firestoreUtilData = FirestoreUtilData();

  VeriStruct._();
  factory VeriStruct([void Function(VeriStructBuilder) updates]) = _$VeriStruct;
}

VeriStruct createVeriStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VeriStruct(
      (v) => v
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

VeriStruct? updateVeriStruct(
  VeriStruct? veri, {
  bool clearUnsetFields = true,
}) =>
    veri != null
        ? (veri.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addVeriStructData(
  Map<String, dynamic> firestoreData,
  VeriStruct? veri,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (veri == null) {
    return;
  }
  if (veri.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && veri.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final veriData = getVeriFirestoreData(veri, forFieldValue);
  final nestedData = veriData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = veri.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getVeriFirestoreData(
  VeriStruct? veri, [
  bool forFieldValue = false,
]) {
  if (veri == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(VeriStruct.serializer, veri);

  // Add any Firestore field values
  veri.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVeriListFirestoreData(
  List<VeriStruct>? veris,
) =>
    veris?.map((v) => getVeriFirestoreData(v, true)).toList() ?? [];
