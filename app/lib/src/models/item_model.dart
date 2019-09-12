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
        this.deleted = parsedJson['deleted'],
        this.type = parsedJson['type'],
        this.by = parsedJson['by'],
        this.time = parsedJson['time'],
        this.text = parsedJson['text'],
        this.dead = parsedJson['dead'],
        this.parent = parsedJson['parent'],
        this.kids = parsedJson['kids'],
        this.url = parsedJson['url'],
        this.score = parsedJson['score'],
        this.title = parsedJson['title'],
        this.descendants = parsedJson['descendants'];
}
