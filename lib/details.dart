import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'data.dart';
import 'package:flutter/painting.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AIToolDetailsScreen extends StatelessWidget {
  final AITool aiTool;

  const AIToolDetailsScreen({super.key, required this.aiTool});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(aiTool.name
      ,style: Theme.of(context).appBarTheme.titleTextStyle!.merge(
          TextStyle(fontSize: 20.0,
            fontFamily: GoogleFonts.jost().fontFamily,),
        ),
      )),
      body: SingleChildScrollView( // To allow scrolling if the content is longer
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Container(
                  width: MediaQuery.of(context).size.width, // Adjust the size
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0), // This creates a circular shape
                    image: DecorationImage(
                      image: NetworkImage(aiTool.imageUrl),
                      fit: BoxFit.cover, // Ensure the image fills the circle
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                aiTool.name,
                  style: GoogleFonts.jost(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                  )
              ),
              SizedBox(height: 8),
              Text(aiTool.description,style: GoogleFonts.jost(
                  fontSize: 20,
                  fontWeight: FontWeight.w400
              ),),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  launchUrlString(aiTool.url);
                },
                child: Text('🚀 Here We go 🚀',style: GoogleFonts.jost(
                    fontSize: 20,
                    fontWeight: FontWeight.w200
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
