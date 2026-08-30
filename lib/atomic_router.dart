class AtomicClient {
  final int state;
  AtomicClient([this.state = 29]);

  int compute_handler(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 29) % 997;
    }
    return result;
  }
}

void main() {
  print(AtomicClient().compute_handler(29));
}
