import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TournamentsRecord extends FirestoreRecord {
  TournamentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "members" field.
  List<DocumentReference>? _members;
  List<DocumentReference> get members => _members ?? const [];
  bool hasMembers() => _members != null;

  // "prize" field.
  String? _prize;
  String get prize => _prize ?? '';
  bool hasPrize() => _prize != null;

  // "dataStart" field.
  DateTime? _dataStart;
  DateTime? get dataStart => _dataStart;
  bool hasDataStart() => _dataStart != null;

  // "maxMembers" field.
  int? _maxMembers;
  int get maxMembers => _maxMembers ?? 0;
  bool hasMaxMembers() => _maxMembers != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _members = getDataList(snapshotData['members']);
    _prize = snapshotData['prize'] as String?;
    _dataStart = snapshotData['dataStart'] as DateTime?;
    _maxMembers = castToType<int>(snapshotData['maxMembers']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tournaments');

  static Stream<TournamentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TournamentsRecord.fromSnapshot(s));

  static Future<TournamentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TournamentsRecord.fromSnapshot(s));

  static TournamentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TournamentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TournamentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TournamentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TournamentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TournamentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTournamentsRecordData({
  String? name,
  String? photoUrl,
  String? prize,
  DateTime? dataStart,
  int? maxMembers,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'photo_url': photoUrl,
      'prize': prize,
      'dataStart': dataStart,
      'maxMembers': maxMembers,
    }.withoutNulls,
  );

  return firestoreData;
}

class TournamentsRecordDocumentEquality implements Equality<TournamentsRecord> {
  const TournamentsRecordDocumentEquality();

  @override
  bool equals(TournamentsRecord? e1, TournamentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.photoUrl == e2?.photoUrl &&
        listEquality.equals(e1?.members, e2?.members) &&
        e1?.prize == e2?.prize &&
        e1?.dataStart == e2?.dataStart &&
        e1?.maxMembers == e2?.maxMembers;
  }

  @override
  int hash(TournamentsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.photoUrl,
        e?.members,
        e?.prize,
        e?.dataStart,
        e?.maxMembers
      ]);

  @override
  bool isValidKey(Object? o) => o is TournamentsRecord;
}
