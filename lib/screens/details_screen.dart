import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String cityName;
  final String cityImage;
  final String detailImage; 
  final String cityDescription;
  final List<Map<String, String>> places;

  const DetailsScreen({
    super.key,
    required this.cityName,
    required this.cityImage,
    required this.detailImage,
    required this.cityDescription,
    required this.places,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    

    return Scaffold(
      backgroundColor: Color(0xFFF5EFE6),
      appBar: AppBar(
        backgroundColor: Color(0xFF4A342E),
        title: Text(cityName, style: TextStyle(color: Color(0xFFD4AF37))),
        iconTheme: IconThemeData(color: Color(0xFFD4AF37)),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              detailImage,
              width: width,
              height: height*0.3,
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
                  cityName,
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF4A342E)),
                ),
                SizedBox(height: 10),
                Text(cityDescription, style: TextStyle(fontSize: 20, color: Color(0xFF7A6C60))),
                SizedBox(height: 24),

                for (var place in places)
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