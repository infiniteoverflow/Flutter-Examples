String nameValidator(String text) {
  String patttern = r'(^[a-zA-Z ]*$)';
  RegExp regExp = new RegExp(patttern);
  if (text.length == 0) {
    return "Enter the name";
  } else if (!regExp.hasMatch(text)) {
    return "The name must contain characters from a-z or A-Z";
  }
  return null;
}

String phoneNumberValidator(String text) {
  String patttern = r'(^[0-9]*$)';
  RegExp regExp = new RegExp(patttern);
  if (text.length == 0) {
    return "Inform the phone number";
  } else if (!regExp.hasMatch(text)) {
    return "The phone number must only contain digits";
  }
  return null;
}

String emailValidator(String text) {
  RegExp regExp = new RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  if (text.length == 0) {
    return "Enter Email";
  } else if (!regExp.hasMatch(text)) {
    return "Invalid email";
  } else {
    return null;
  }
}
