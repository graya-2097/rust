class BatchMonitor {
  final int state;
  BatchMonitor([this.state = 80]);

  int load_session(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 80) % 997;
    }
    return result;
  }
}

void main() {
  print(BatchMonitor().load_session(80));
}
