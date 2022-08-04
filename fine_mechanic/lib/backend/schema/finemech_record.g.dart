// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finemech_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FinemechRecord> _$finemechRecordSerializer =
    new _$FinemechRecordSerializer();

class _$FinemechRecordSerializer
    implements StructuredSerializer<FinemechRecord> {
  @override
  final Iterable<Type> types = const [FinemechRecord, _$FinemechRecord];
  @override
  final String wireName = 'FinemechRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, FinemechRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.contactUsName;
    if (value != null) {
      result
        ..add('contact_us_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  FinemechRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FinemechRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'contact_us_name':
          result.contactUsName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$FinemechRecord extends FinemechRecord {
  @override
  final String name;
  @override
  final LatLng location;
  @override
  final String contactUsName;
  @override
  final DocumentReference<Object> reference;

  factory _$FinemechRecord([void Function(FinemechRecordBuilder) updates]) =>
      (new FinemechRecordBuilder()..update(updates)).build();

  _$FinemechRecord._(
      {this.name, this.location, this.contactUsName, this.reference})
      : super._();

  @override
  FinemechRecord rebuild(void Function(FinemechRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FinemechRecordBuilder toBuilder() =>
      new FinemechRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FinemechRecord &&
        name == other.name &&
        location == other.location &&
        contactUsName == other.contactUsName &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), location.hashCode),
            contactUsName.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FinemechRecord')
          ..add('name', name)
          ..add('location', location)
          ..add('contactUsName', contactUsName)
          ..add('reference', reference))
        .toString();
  }
}

class FinemechRecordBuilder
    implements Builder<FinemechRecord, FinemechRecordBuilder> {
  _$FinemechRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  LatLng _location;
  LatLng get location => _$this._location;
  set location(LatLng location) => _$this._location = location;

  String _contactUsName;
  String get contactUsName => _$this._contactUsName;
  set contactUsName(String contactUsName) =>
      _$this._contactUsName = contactUsName;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  FinemechRecordBuilder() {
    FinemechRecord._initializeBuilder(this);
  }

  FinemechRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _location = $v.location;
      _contactUsName = $v.contactUsName;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FinemechRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FinemechRecord;
  }

  @override
  void update(void Function(FinemechRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FinemechRecord build() {
    final _$result = _$v ??
        new _$FinemechRecord._(
            name: name,
            location: location,
            contactUsName: contactUsName,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
