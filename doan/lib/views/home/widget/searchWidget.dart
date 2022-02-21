import 'package:flutter/material.dart';
class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}
var searche = TextEditingController();
class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
      return TextField(
        decoration: InputDecoration(
            hintText: 'Tìm kiếm trong shop',
            prefixIcon: const Icon(Icons.search, size: 30),
            filled: true,
            fillColor: Colors.grey.shade200,
            contentPadding: const EdgeInsets.all(15),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.grey.shade200,
              ),
            ),
            suffixIcon:
            searche.text !="" ?InkWell(
                onTap: () { setState(() {
                  searche.text ="";
                }); },
                child: const Icon(Icons.close)):const SizedBox()
        ),
        controller: searche,
        onChanged: (_){
          setState(() {

          });
        },
      );
    }
}
