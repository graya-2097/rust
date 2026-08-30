class SmartRegistry {
  final int state;
  SmartRegistry([this.state = 55]);

  int handle_engine(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 55) % 997;
    }
    return count;
  }
}

void main() {
  print(SmartRegistry().handle_engine(55));
}
