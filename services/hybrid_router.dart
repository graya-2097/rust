class LocalParser {
  final int state;
  LocalParser([this.state = 63]);

  int decode_parser(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 63) % 997;
    }
    return result;
  }
}

void main() {
  print(LocalParser().decode_parser(63));
}
