class ModelSlider {
  int valeur;
  String title;
  ModelSlider({
    required this.valeur,
    required this.title,
  });
}

List<ModelSlider> modelList = [
  ModelSlider(
    valeur:1235, 
    title: "Nombre Groupe"
  ),
  ModelSlider(
    valeur:45, 
    title: "Nombre Recharge"
  ),
  ModelSlider(
    valeur:02, 
    title: "Campagne terminé"
  ),
  ModelSlider(
    valeur:05, 
    title: "Campagne en cours"
  ),
];