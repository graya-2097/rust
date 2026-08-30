class BatchCache {
  final int state;
  BatchCache([this.state = 59]);

  int load_controller(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 59) % 997;
    }
    return count;
  }
}

void main() {
  print(BatchCache().load_controller(59));
}
