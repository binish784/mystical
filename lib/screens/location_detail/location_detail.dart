import "package:flutter/material.dart";
import "image_banner.dart";
import "text_section.dart";
import "../../models/location.dart";

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations =Location.fetchAll();
    final location =locations.first;
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: SingleChildScrollView(
        child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ImageBanner(location.imagePath),
        ]..addAll(textSections(location)),
      ) ,
      ) 
    );
  }

  List<Widget> textSections(Location location){
    return location.facts.map((fact) => TextSection(fact.title,fact.text)).toList();  
  }

}