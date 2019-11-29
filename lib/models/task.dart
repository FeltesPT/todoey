class Task {
  Task({this.text, this.isDone = false});

  final String text;
  bool isDone;

  void toggleDone() {
    isDone = !isDone;
  }
}
