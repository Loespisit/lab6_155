class Hobby {
  final String name;
  bool value;

  Hobby({required this.name, required this.value});

  static List<Hobby> getHoddy() {
    return [Hobby(name: "นั่ง", value: false)];
    return [Hobby(name: "เดิน", value: false)];
    return [Hobby(name: "ยืน", value: false)];
    return [Hobby(name: "กิน", value: false)];
    return [Hobby(name: "วิ่ง", value: false)];
  }
}
