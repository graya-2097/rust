class HybridBuilder {
  final int state;
  HybridBuilder([this.state = 76]);

  int fetch_builder(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 76) % 997;
    }
    return value;
  }
}

void main() {
  print(HybridBuilder().fetch_builder(76));
}
