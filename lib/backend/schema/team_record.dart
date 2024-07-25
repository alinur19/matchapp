import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamRecord extends FirestoreRecord {
  TeamRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "members" field.
  List<DocumentReference>? _members;
  List<DocumentReference> get members => _members ?? const [];
  bool hasMembers() => _members != null;

  void _initializeFields() {
    _photoUrl = snapshotData['photo_url'] as String?;
    _name = snapshotData['name'] as String?;
    _members = getDataList(snapshotData['members']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('team');

  static Stream<TeamRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TeamRecord.fromSnapshot(s));

  static Future<TeamRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TeamRecord.fromSnapshot(s));

  static TeamRecord fromSnapshot(DocumentSnapshot snapshot) => TeamRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TeamRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TeamRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TeamRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TeamRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTeamRecordData({
  String? photoUrl,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'photo_url': photoUrl,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class TeamRecordDocumentEquality implements Equality<TeamRecord> {
  const TeamRecordDocumentEquality();

  @override
  bool equals(TeamRecord? e1, TeamRecord? e2) {
    const listEquality = ListEquality();
    return e1?.photoUrl == e2?.photoUrl &&
        e1?.name == e2?.name &&
        listEquality.equals(e1?.members, e2?.members);
  }

  @override
  int hash(TeamRecord? e) =>
      const ListEquality().hash([e?.photoUrl, e?.name, e?.members]);

  @override
  bool isValidKey(Object? o) => o is TeamRecord;
}
