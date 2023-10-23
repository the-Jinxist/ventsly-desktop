extension ASSETS on String {
  String toPNG() {
    return 'assets/images/$this.png';
  }

  String toSVG() {
    return 'assets/images/$this.svg';
  }

  String toJPG() {
    return 'assets/images/$this.jpg';
  }
}
