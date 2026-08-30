import 'package:flutter/material.dart';
import 'package:flutter_project1/screens/details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Color(0xFFF5EFE6),
      appBar: AppBar(
        backgroundColor: Color(0xFF4A342E),
        centerTitle: true,
        leading: Icon(Icons.settings),
        title: Text("Rehal", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xFFD4AF37))),
        actions: [Icon(Icons.search)],
        iconTheme: IconThemeData(color: Color(0xFFD4AF37)),
        elevation: 50,   
        shadowColor: Colors.black.withOpacity(0.9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),

      body: Center(
        child: ListView(
          padding: EdgeInsets.only(top: 16),
           
          children: [
            TextField(
               style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                hintText: 'Search cities...',
                hintStyle: TextStyle(color: Color(0xFF7A6C60)),
                prefixIcon: Icon(Icons.search, color: Color(0xFF4A342E)),
                filled: true,
                fillColor: Color(0xFFFFFDF9),
                contentPadding: EdgeInsets.symmetric(vertical: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16),

            Container(
              height: height*0.25,
              margin: EdgeInsets.only(bottom: 8),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                image: DecorationImage(
                  image: AssetImage('assets/images/saudi.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,   
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.20),
                    BlendMode.darken,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.9),
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '       Welcome to the\nKingdom of Saudi Arabia',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(1),
                        blurRadius: 5,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 20,
                  height: 8,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: Color(0xFF4A342E),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                Container(
                  width: 8,
                  height: 8,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 8,
                  height: 8,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 8,
                  height: 8,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 8,
                  height: 8,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),


//***********riyadh */

            Container(
              padding: EdgeInsets.all(14),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFFFDF9),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(color: Colors.brown.withOpacity(0.50), blurRadius: 25),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/riyadh_d.jpg',
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 14),
                  Text('Riyadh',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF4A342E))),
                  SizedBox(height: 6),
                  Text('The capital of the Kingdom, a modern and vibrant city.',
                      style: TextStyle(fontSize: 22, color: Color(0xFF7A6C60))),
                  SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFB08D57),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailsScreen(
                              cityName: 'Riyadh',
                              cityImage: 'assets/images/riyadh.jpg',
                              detailImage: 'assets/images/riyadh.jpg',
                              cityDescription: 'The capital of the Kingdom, a modern and vibrant city.',
                              places: [
                                {"name": "Masmak Fortress", "description": "A historic fort that witnessed the 1902 battle to unify Riyadh, now a museum documenting the Kingdom's history."},
                                {"name": "Qiddiya", "description": "A massive entertainment city combining theme parks, esports, and car racing amid the mountains."},
                                {"name": "Boulevard City", "description": "A vibrant entertainment hub with giant screens, a dancing fountain, restaurants, and cinemas."},
                                {"name": "King Abdullah Financial District", "description": "A financial hub with futuristic architecture, fine dining, and art galleries."},
                              ],
                            )),
                          );
                        },
                        child: Text('Discover More!'),
                      ),
                      Row(
                        children: [
                          Icon(Icons.favorite_border, color: Color(0xFFB08D57), size: 26),
                          SizedBox(width: 8),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                              color: Color(0xFFD4AF37).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text('Modern', style: TextStyle(fontSize: 20, color: Color(0xFF4A342E))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),


//**********dhahran */

            Container(
              padding: EdgeInsets.all(14),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFFFDF9),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(color: Colors.brown.withOpacity(0.50), blurRadius: 25),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/dhahran_d.jpg',
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 14),
                  Text('Dhahran',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF4A342E))),
                  SizedBox(height: 6),
                  Text('Home to Saudi Aramco and the Ithra cultural center.',
                      style: TextStyle(fontSize: 22, color: Color(0xFF7A6C60))),
                  SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFB08D57),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailsScreen(
                              cityName: 'Dhahran',
                              cityImage: 'assets/images/dhahran.jpg',
                              detailImage: 'assets/images/dhahran.jpg',
                              cityDescription: 'Home to Saudi Aramco and the Ithra cultural center.',
                              places: [
                                {"name": "Ithra (King Abdulaziz Center)", "description": "A global cultural landmark with a massive library, museum, theater, and interactive children's museum."},
                                {"name": "Energy Exhibit (Aramco)", "description": "An interactive science center telling the story of oil and energy through modern technology."},
                              ],
                            )),
                          );
                        },
                        child: Text('Discover More!'),
                      ),
                      Row(
                        children: [
                          Icon(Icons.favorite_border, color: Color(0xFFB08D57), size: 26),
                          SizedBox(width: 8),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                              color: Color(0xFFD4AF37).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text('Industrial', style: TextStyle(fontSize: 20, color: Color(0xFF4A342E))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),


//******abha */

            Container(
              padding: EdgeInsets.all(14),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFFFDF9),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(color: Colors.brown.withOpacity(0.50), blurRadius: 25),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/abha_d.jpg',
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 14),
                  Text('Abha',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF4A342E))),
                  SizedBox(height: 6),
                  Text('A mountain city famous for its cool weather and green scenery.',
                      style: TextStyle(fontSize: 22, color: Color(0xFF7A6C60))),
                  SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFB08D57),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailsScreen(
                              cityName: 'Abha',
                              cityImage: 'assets/images/abha.jpg',
                              detailImage: 'assets/images/abha.jpg',
                              cityDescription: 'A mountain city famous for its cool weather and green scenery.',
                              places: [
                                {"name": "Rijal Almaa Village", "description": "A heritage village with stone fortresses and the UNESCO-listed Al-Qatt Al-Asiri art."},
                                {"name": "Art Street", "description": "A vibrant walkway under purple Jacaranda trees, featuring open-air galleries and cafes."},
                                {"name": "Al Soudah Mountain", "description": "The Kingdom's highest peak, with juniper forests, cable cars, and zip lining."},
                              ],
                            )),
                          );
                        },
                        child: Text('Discover More!'),
                      ),
                      Row(
                        children: [
                          Icon(Icons.favorite_border, color: Color(0xFFB08D57), size: 26),
                          SizedBox(width: 8),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                              color: Color(0xFFD4AF37).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text('Nature', style: TextStyle(fontSize: 20, color: Color(0xFF4A342E))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),


//*****alula */

            Container(
              padding: EdgeInsets.all(14),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFFFDF9),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(color: Colors.brown.withOpacity(0.50), blurRadius: 25),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/alula_d.jpg',
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 14),
                  Text('AlUla',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF4A342E))),
                  SizedBox(height: 6),
                  Text('An ancient site with stunning rock formations and rich history.',
                      style: TextStyle(fontSize: 22, color: Color(0xFF7A6C60))),
                  SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFB08D57),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailsScreen(
                              cityName: 'AlUla',
                              cityImage: 'assets/images/alula.jpg',
                              detailImage: 'assets/images/alula.jpg',
                              cityDescription: 'An ancient site with stunning rock formations and rich history.',
                              places: [
                                {"name": "Madain Saleh", "description": "Saudi Arabia's first UNESCO site, featuring over 110 Nabatean tombs carved into rock, including Qasr Al-Farid."},
                                {"name": "AlUla Old Town", "description": "Restored heritage alleys with restaurants, cafes, and craft shops next to the AlUla oasis."},
                                {"name": "Elephant Rock", "description": "A natural rock formation shaped like an elephant, perfect for relaxing and stargazing."},
                                {"name": "Maraya Hall", "description": "The world's largest mirrored building, hosting concerts and fine dining."},
                              ],
                            )),
                          );
                        },
                        child: Text('Discover More!'),
                      ),
                      Row(
                        children: [
                          Icon(Icons.favorite_border, color: Color(0xFFB08D57), size: 26),
                          SizedBox(width: 8),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                              color: Color(0xFFD4AF37).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text('Historic', style: TextStyle(fontSize: 20, color: Color(0xFF4A342E))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            
//*******jeddah */

            Container(
              padding: EdgeInsets.all(14),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFFFDF9),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(color: Colors.brown.withOpacity(0.50), blurRadius: 25),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/jeddah_d.jpg',
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 14),
                  Text('Jeddah',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF4A342E))),
                  SizedBox(height: 6),
                  Text('A historic port city known as the Gate to Makkah.',
                      style: TextStyle(fontSize: 22, color: Color(0xFF7A6C60))),
                  SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFB08D57),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailsScreen(
                              cityName: 'Jeddah',
                              cityImage: 'assets/images/jeddah.jpg',
                              detailImage: 'assets/images/jeddah.jpg',
                              cityDescription: 'A historic port city known as the Gate to Makkah.',
                              places: [
                                {"name": "Historic Jeddah (Al-Balad)", "description": "The heritage heart of Jeddah with Hejazi architecture, historic houses, and wooden roshans."},
                                {"name": "Jeddah Corniche", "description": "A modern waterfront with green spaces, walking paths, beaches, and seaside restaurants."},
                                {"name": "King Fahd Fountain", "description": "The tallest water fountain in the world, a glowing landmark on the Red Sea coast."},
                                {"name": "Fakieh Aquarium", "description": "The only aquarium in the Kingdom, offering an interactive journey through marine life."},
                              ],
                            )),
                          );
                        },
                        child: Text('Discover More!'),
                      ),
                      Row(
                        children: [
                          Icon(Icons.favorite_border, color: Color(0xFFB08D57), size: 26),
                          SizedBox(width: 8),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                              color: Color(0xFFD4AF37).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text('Coastal', style: TextStyle(fontSize: 20, color: Color(0xFF4A342E))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF4A342E),
        selectedItemColor: Color(0xFFD4AF37),
        unselectedItemColor: Colors.white70,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      );
      }
      }