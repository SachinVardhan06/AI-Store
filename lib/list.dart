import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gemini_ai/details.dart';
import 'package:google_fonts/google_fonts.dart';
import 'data.dart';
import 'homepage.dart';

class homepage1 extends StatefulWidget {
  const homepage1({super.key});

  @override
  State<homepage1> createState() => _homepageState();
}

class _homepageState extends State<homepage1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Color(0xff212121),
        centerTitle: true,
        title: Text('AI Tools Store',style: GoogleFonts.roboto(
          fontSize: 25,
          color: Colors.blue,
            fontWeight: FontWeight.w500
        )),
        leading: IconButton(
          onPressed: (){
            _displayBottomSheet(context);
          },
          icon: Icon(Icons.rocket_launch_outlined,color: Colors.white,),
        ),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => homepage()));
            },
            icon: Icon(Icons.telegram,color: Colors.deepPurpleAccent,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            //let's start by building our carousel slider
            children: [
              Text(
                "Latest AI",
                style: Theme.of(context).textTheme.bodyText2!.merge(
                  TextStyle(fontSize: 20.0,
                    fontFamily: GoogleFonts.alice().fontFamily,),
                ),),
              SizedBox(
                height: 12.0,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: true,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.9,
                  height: 280.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                ),
                items: aiTools.map((aiTool) { // Map through your aiTools data
                  return sliderItem(aiTool.imageUrl, aiTool.name,context);
                }).toList(),
              ),
              Text("AI Tools List",
                style: Theme.of(context).textTheme.bodyText2!.merge(
                  TextStyle(fontSize: 18.0,
                    fontFamily: GoogleFonts.alice().fontFamily,),
                ),),
              SizedBox(
                height: 10.0,
              ),
            for (int i = 0; i < aiTools.length; i++)
          Column(
      children: [
      Padding(padding: EdgeInsets.all(5)),
          ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Container(
              color: Theme.of(context).backgroundColor,
              width: MediaQuery.of(context).size.width * 1, 
                height: 80.0,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: InkWell( // Add InkWell for tap functionality
                  onTap: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AIToolDetailsScreen(aiTool: aiTools[i]),),);},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                    children: [
                      Text(aiTools[i].name,style: Theme.of(context).textTheme.bodyText1!.merge(
                        TextStyle(fontSize: 16.0,
                          fontFamily: GoogleFonts.armata().fontFamily,),
                      ),),
                      Text("Know More ->",
                          style: GoogleFonts.rubik(
                            fontSize: 15,
                            color: Colors.blue,
                          )),
                    ],
                  ),
                ),
              ),
          ),
        SizedBox(height: 10,)
      ],
    ),
              Center(
                child: Text(" ----- Stay Tuned For More -----",style: Theme.of(context).textTheme.bodyText2!.merge(
                  TextStyle(fontSize: 20.0,
                    fontFamily: GoogleFonts.alice().fontFamily,),
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
  
  Future _displayBottomSheet(BuildContext context){
    return showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        barrierColor: Colors.black87.withOpacity(0.6),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        builder: (context) => Container(
          height: 130,
          child: Center(
            child: Text("Developed By Sachin Vardhan",style: GoogleFonts.anekBangla(
              fontSize: 26,
              color: Colors.blue,
            ),)
          )
        ));
  }
}



Widget listItem(String img, String movieName,BuildContext context) {
  return Container(
    margin: EdgeInsets.only(right: 12.0),
    width: 150.0,
    height: 200.0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 280.0,
          width: 180.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: NetworkImage(img),
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          movieName,
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    ),
  );
}


Widget sliderItem(String img, String name,BuildContext context) {
  return InkWell(
    onTap: () {},
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: NetworkImage(img),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          name,
          style: Theme.of(context).textTheme.bodyText2!.merge(
            TextStyle(fontSize: 17.0,
              fontFamily: GoogleFonts.jost().fontFamily,),
          ),
        ),
      ],
    ),
  );
}
