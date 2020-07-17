import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool _isPressed = false;

  void onPressedFav() {
    setState(() {
      _isPressed = !_isPressed;
    });

    final contextScaffold = Scaffold.of(context);
    contextScaffold.removeCurrentSnackBar();
    contextScaffold.showSnackBar(SnackBar(
      content: _isPressed
          ? Text("Añadido a favoritos")
          : Text("Removido de favoritos"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      child: _isPressed ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
      onPressed: onPressedFav,
    );
  }
}
