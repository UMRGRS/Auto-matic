String? isValidVIN(String text) {
  if (RegExp(r'^([A-HJ-NP-Z0-9]).*$').hasMatch(text)) {
    if (RegExp(r'^(.{17,}).*$').hasMatch(text)) {
    } else {
      return "El VIN debe contener 17 caracteres";
    }
  } else {
    return "El VIN tiene solo puede contener letras mayusculas (excluyendo I, O, Q y Ñ) y numeros";
  }
}
