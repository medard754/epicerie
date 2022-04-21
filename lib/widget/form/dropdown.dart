import 'package:epicerie/widget/index.dart';
import 'package:country_code_picker/country_code_picker.dart';
class Dropdown extends StatefulWidget {
  Dropdown({Key? key}) : super(key: key);

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
 // Color color=Couleur.color;
 
  String? valeurChoisi;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        padding:const EdgeInsets.symmetric(horizontal:5,vertical:4),
        width:double.infinity,
        alignment:Alignment.center,
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border:Border.all(
            width:1,
            color:Colors.black45
          )
        ),
          child:CountryCodePicker(
            initialSelection:'IT',
            favorite: ['+39','FR'],
            showCountryOnly: false,
            showOnlyCountryWhenClosed: true,
            alignLeft: false,
            showDropDownButton:true,
            showFlag:true,
            searchStyle:TextStyle(
              fontSize:15
            ),
            searchDecoration:InputDecoration(
              iconColor:Colors.green,
              isDense: true,
              hintText:"Rechercher un pays...",
              
            ),
          )
          ),
    );
  }
}
