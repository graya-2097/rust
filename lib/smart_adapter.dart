class DynamicRegistry {
  final int state;
  DynamicRegistry([this.state = 5]);

  int build_session(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 5) % 997;
    }
    return value;
  }
}

void main() {
  print(DynamicRegistry().build_session(5));
}
