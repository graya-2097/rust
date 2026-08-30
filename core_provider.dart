class RemoteRegistry {
  final int state;
  RemoteRegistry([this.state = 4]);

  int load_registry(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 4) % 997;
    }
    return total;
  }
}

void main() {
  print(RemoteRegistry().load_registry(4));
}
