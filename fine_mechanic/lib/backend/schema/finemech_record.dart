import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'finemech_record.g.dart';

abstract class FinemechRecord
    implements Built<FinemechRecord, FinemechRecordBuilder> {
  static Serializer<FinemechRecord> get serializer =>
      _$finemechRecordSerializer;

  @nullable
  String get name;

  @nullable
  LatLng get location;

  @nullable
  @BuiltValueField(wireName: 'contact_us_name')
  String get contactUsName;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FinemechRecordBuilder builder) => builder
    ..name = ''
    ..contactUsName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('finemech');

  static Stream<FinemechRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<FinemechRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  FinemechRecord._();
  factory FinemechRecord([void Function(FinemechRecordBuilder) updates]) =
      _$FinemechRecord;

  static FinemechRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createFinemechRecordData({
  String name,
  LatLng location,
  String contactUsName,
}) =>
    serializers.toFirestore(
        FinemechRecord.serializer,
        FinemechRecord((f) => f
          ..name = name
          ..location = location
          ..contactUsName = contactUsName));
