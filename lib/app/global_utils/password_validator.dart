String? isValidPassword(text) {

  if (RegExp(r'^(.{8,}).*$').hasMatch(text)) {
    if (RegExp(r'^(?=.*[a-z]).*$').hasMatch(text)) {
      if (RegExp(r'^(?=.*?[0-9]).*$').hasMatch(text)) {
        if (RegExp(r'^(?=.*?[!@#$&*~]).*$').hasMatch(text)) {
          if (RegExp(r'^(?=.*[A-Z]).*$').hasMatch(text)) {
            return null;
          } else {
            return "Debe contener una letra mayúscula";
          }
        } else {
          return "Debe contener un carácter especial";
        }
      } else {
        return "Debe contener un número";
      }
    } else {
      return "Debe contener una letra minúscula";
    }
  } else {
    return "Debe tener mínimo 8 caracteres";
  }
}
