bool isValidAlias(String text) {
  return RegExp(r"^[a-zA-Z0-9 ]*$").hasMatch(text);
}
