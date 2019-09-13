import 'dart:convert';

class ItemModel {
    final int id;
    final bool deleted;
    final String type;
    final String by;
    final int time;
    final String text;
    final bool dead;
    final int parent;
    final List<dynamic> kids;
    final String url;
    final int score;
    final String title;
    final int descendants;

    ItemModel.fromJson(Map<String, dynamic> parsedJson) :
        this.id = parsedJson['id'],
        this.deleted = parsedJson['deleted'] ?? false,
        this.type = parsedJson['type'],
        this.by = parsedJson['by'],
        this.time = parsedJson['time'],
        this.text = parsedJson['text'] ?? '',
        this.dead = parsedJson['dead'] ?? false,
        this.parent = parsedJson['parent'],
        this.kids = parsedJson['kids'] ?? [],
        this.url = parsedJson['url'],
        this.score = parsedJson['score'],
        this.title = parsedJson['title'],
        this.descendants = parsedJson['descendants'] ?? 0;

    ItemModel.fromDb(Map<String, dynamic> parsedJson) :
        this.id = parsedJson['id'],
        this.deleted = parsedJson['deleted'] == 1,
        this.type = parsedJson['type'],
        this.by = parsedJson['by'],
        this.time = parsedJson['time'],
        this.text = parsedJson['text'],
        this.dead = parsedJson['dead'] == 1,
        this.parent = parsedJson['parent'],
        this.kids = jsonDecode(parsedJson['kids']),
        this.url = parsedJson['url'],
        this.score = parsedJson['score'],
        this.title = parsedJson['title'],
        this.descendants = parsedJson['descendants'];

   Map<String, dynamic> toMap() {
        return <String, dynamic>{
            "id": this.id,
            "type": this.type,
            "by": this.by,
            "time": this.time,
            "text": this.text,
            "parent": this.parent,
            "url": this.url,
            "score": this.score,
            "title": this.title,
            "descendants": this.descendants,
            "dead": this.dead ? 1 : 0,
            "deleted": this.deleted ? 1 : 0,
            "kids": jsonEncode(this.kids),
        };
   }
}
