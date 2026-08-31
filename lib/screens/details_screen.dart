import 'package:flutter/material.dart';
import 'package:flutter_project1/models/city_model.dart';

class DetailsScreen extends StatelessWidget {
  final CityModel cityModel;

  const DetailsScreen({
    super.key,
    required this.cityModel,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: Color(0xFFF5EFE6),
      appBar: AppBar(
        backgroundColor: Color(0xFF4A342E),
        title: Text(cityModel.name, style: TextStyle(color: Color(0xFFD4AF37))),
        iconTheme: IconThemeData(color: Color(0xFFD4AF37)),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              cityModel.detailImage,
              width: width,
              height: height * 0.3,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 16),

          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xFFFFFDF9),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(color: Colors.brown.withOpacity(0.3), blurRadius: 12),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cityModel.name,
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF4A342E)),
                ),
                SizedBox(height: 10),
                Text(cityModel.description, style: TextStyle(fontSize: 20, color: Color(0xFF7A6C60))),
                SizedBox(height: 24),

                for (var place in cityModel.places)
                  Padding(
                    padding: EdgeInsets.only(bottom: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "- ${place['name']}",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: Color(0xFF4A342E)),
                        ),
                        SizedBox(height: 4),
                        Text(place['description']!, style: TextStyle(fontSize: 20, color: Color(0xFF7A6C60))),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}