String? isValidVIN(String text) {
  if (RegExp(r'^[A-HJ-NPR-Z0-9]+$').hasMatch(text)) {
    return null;
  } else {
    return "El VIN tiene solo puede contener letras mayusculas (excluyendo I, O, Q y Ñ) y numeros";
  }
}
