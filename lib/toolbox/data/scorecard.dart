import 'package:isar/isar.dart';

part 'scorecard.g.dart';

@Collection()
@Name('Scorecard')
class Scorecard {
  @Id()
  @Name("id")
  int? session_id;

  @Name("session_start")
  late DateTime session_start;

  @Name("session_end")
  late DateTime session_end;

  @Name("playground_id")
  late int playground_id;

  @Name("player_names")
  late List<String> player_names;

  @Name("lanes_hits_json")
  late String lanes_hits_json;
}