class StreamLoader {
  final int state;
  StreamLoader([this.state = 55]);

  int build_scheduler(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 55) % 997;
    }
    return result;
  }
}

void main() {
  print(StreamLoader().build_scheduler(55));
}
