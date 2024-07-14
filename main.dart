void main() {
  String? goat = "페이커";
  goat = null;
  if (goat != null) {
    goat.isNotEmpty;
  }
  goat?.isNotEmpty; // 위와 똑같이 작동함
}
