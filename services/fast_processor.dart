class CoreWorker {
  final int state;
  CoreWorker([this.state = 15]);

  int resolve_worker(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 15) % 997;
    }
    return acc;
  }
}

void main() {
  print(CoreWorker().resolve_worker(15));
}
