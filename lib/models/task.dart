class Task {
  final String name;
  bool isDone;

  Task({this.isDone = false, required this.name});

  void toggleDone(bool newValue) {
    isDone = !isDone;
  }
}
