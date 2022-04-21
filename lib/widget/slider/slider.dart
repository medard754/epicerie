import 'package:epicerie/widget/index.dart';
import 'package:epicerie/widget/slider/model/model.dart';
class SliderHome extends StatefulWidget {
  SliderHome({Key? key}) : super(key: key);

  @override
  State<SliderHome> createState() => _SliderHomeState();
}

class _SliderHomeState extends State<SliderHome> {
  int activeIndex = 0;
  final urlImage = [
    'assets/img/hello.jpg',
    'assets/img/hello0.jpg',
    'assets/img/hello1.jpg',
    'assets/img/hello2.jpg',
    'assets/img/hello3.jpg',
    'assets/img/hello4.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height:MediaQuery.of(context).size.height*0.4,
      width:double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider.builder(
              itemCount: modelList.length,
              itemBuilder: (context, index, realIndex) {
                ModelSlider model = modelList[index];
                final urlImages = urlImage[index];
                return buildImage(model.valeur,model.title,index);
              },
              options: CarouselOptions(
                  height: 100,
                  autoPlay: true,
                  //initialPage: 0,
                  pageSnapping: false,
                  //enableInfiniteScroll: false,
                  autoPlayInterval: Duration(seconds: 2),
                  reverse: true,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index;
                    });
                  })),
          const SizedBox(
            height:20,
          ),
          buildIndicator()
        ],
      ),
    );
  }

  Widget buildImage(int val,String titre, int index) {
    //Color color = Couleur.color;
    return Container(
      height:MediaQuery.of(context).size.height*0.4,
      width:200,
      margin: const EdgeInsets.symmetric(horizontal: 12),
      color: Colors.green,
      child: Column(
        children: [
          Container(
            height:50,
            width:double.maxFinite,
            alignment:Alignment.center,
            color:Colors.white,
            child:Text(
              val.toString(),
              style:TextStyle(
                color:Colors.green,
                fontWeight:FontWeight.bold,
                fontSize:18
              )
            ),
            
          ),
          SizedBox(height:12),
          Text(
            titre,
            style:TextStyle(
              color:Colors.white,
              fontWeight:FontWeight.bold,
              fontFamily:'Montserrat'
            ),
          ),
    ],

      ),
      
    );
  }

  Widget buildIndicator() {
    //Color color = Couleur.color;
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex, 
      count:modelList.length,
      effect:SwapEffect(
        activeDotColor:Colors.green,
        dotColor:Colors.black12,
        dotHeight:15,
        dotWidth:15
      )
    );
  }
}