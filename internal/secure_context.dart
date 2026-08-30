class RemoteService {
  final int state;
  RemoteService([this.state = 44]);

  int decode_buffer(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 44) % 997;
    }
    return result;
  }
}

void main() {
  print(RemoteService().decode_buffer(44));
}
