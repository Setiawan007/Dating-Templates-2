import 'package:flutter/material.dart';

const appColor = Color.fromRGBO(246, 81, 95, 1);
const appLight = Color.fromARGB(255, 32, 32, 32);

boldText() {
  return TextStyle(fontSize: 24, fontFamily: 'semi-bold');
}

simpleBoldText() {
  return TextStyle(fontFamily: 'semi-bold', fontSize: 16);
}

headText() {
  return TextStyle(
      fontSize: 18.0, fontFamily: 'semi-bold', color: Colors.black);
}

simpleText() {
  return TextStyle(fontFamily: 'regular', fontSize: 14);
}

simpleButton() {
  return ElevatedButton.styleFrom(
    primary: appColor,
    onPrimary: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
  );
}

searchbar(hintText) {
  return Flexible(
    child: TextField(
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(Icons.search, color: Colors.black54),
        hintStyle: TextStyle(color: Colors.grey.shade400),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      ),
    ),
  );
}
