class Group {
  String title;
  bool completed;

  Group({
    this.title,
    this.completed = false,
  });

  Group.fromMap(Map map) :
        this.title = map['title'],
        this.completed = map['completed'];

  Map toMap(){
    return {
      'title': this.title,
      'completed': this.completed,
    };
  }
}