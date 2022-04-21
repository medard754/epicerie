import 'package:epicerie/widget/index.dart';
class Flatbotton extends StatefulWidget {
  final String text;
  final String routeName;
  Flatbotton({required this.text, required this.routeName});

  @override
  State<Flatbotton> createState() => _FlatbottonState();
}

class _FlatbottonState extends State<Flatbotton> {
  //Color color = Couleur.color;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        minWidth: double.infinity,
        padding: const EdgeInsets.only(top: 12, bottom: 12),
        color:Colors.greenAccent,
        onPressed: () async {
          /*if (_formKey.currentState!.validate()) {
              print("continious sign up");
          }*/
          Get.offAllNamed(widget.routeName);
        },
        child: Text(widget.text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontFamily: "Montserrat")));
  }
}
