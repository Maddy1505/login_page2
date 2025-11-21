import 'package:flutter/material.dart';

class ScreenView extends StatelessWidget {
  ScreenView({super.key});
  // 🔹 Static list of trip filters
  final List<String> tripFilters = ["Most Viewed", "Nearby", "Latest"];

  // 🔹 ValueNotifier to store selected index (default = 0)
  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    //bool asia = false, europe = false, america = false;
    return Scaffold(
      appBar: AppBar(
        /*leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          ),*/
        title: const Text('PeakQuest'),

        //backgroundColor: Colors.blue,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),

      // Drawer Section
      
      /*drawer: Drawer(
        elevation: 10.0,
        child: Column(
          children: [
            /* DrawerHeader */
            UserAccountsDrawerHeader(
              accountName: Text('Meganathan Raj'),
              accountEmail: Text('e22it025@shanmugha.edu.in'),

              /*decoration: BoxDecoration(
                color: Colors.purpleAccent,
              ),*/
              currentAccountPicture: CircleAvatar(
                /* BackRoundImage & NetworkImages */

                /*backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/123456789?v=4',
                ),*/
                backgroundColor: Colors.white,
              ),
            ),

            /* ListTile Widgets 1 */
            ListTile(leading: Icon(Icons.mail), title: Text('All Inbox')),
            Divider(
              thickness: 1.0, //Height of the divider line
            ),

            /* ListTile Widgets 2 */
            ListTile(leading: Icon(Icons.inbox), title: Text('Primary')),
            Divider(
              thickness: 1.0, //Height of the divider line
            ),

            /* ListTile Widgets 3 */
            ListTile(leading: Icon(Icons.people), title: Text('Social')),
            Divider(
              thickness: 1.0, //Height of the divider line
            ),

            /* ListTile Widgets 4 */
            ListTile(
              leading: Icon(Icons.local_offer),
              title: Text('Promotions'),
            ),
            Divider(
              thickness: 1.0, //Height of the divider line
            ),

            /* ListTile Widgets 5 */
            ListTile(leading: Icon(Icons.send), title: Text('Sent')),
            Divider(
              thickness: 1.0, //Height of the divider line
            ),

            /* ListTile Widgets 6 */
            ListTile(leading: Icon(Icons.delete), title: Text('Bin')),
            Divider(
              thickness: 1.0, //Height of the divider line
            ),

            /* ListTile Widgets 7 */
            ListTile(
              leading: Icon(Icons.add_to_drive_outlined),
              title: Text('Drive'),
            ),
            Divider(
              thickness: 1.0, //Height of the divider line
            ),

            /* ListTile Widgets 8 */
            ListTile(leading: Icon(Icons.archive), title: Text('Archive')),
            Divider(
              thickness: 1.0, //Height of the divider line
            ),
            SizedBox(height: 50.0),

            /* ListTile Widgets 9 */
            ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
          ],
        ),
      ),*/

      //Body Section

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* Header Row */
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Hello, David ",
                        // style: TextStyle(
                        //   color: Colors.black,fontSize: 24.0,
                        //   fontFamily: 'Poppins'
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        "Welcome to YourApp",
                        style: TextStyle(fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(
                      "assets/images/boys.jpg",
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),

              /* Search Row */
              Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 20.0),
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.search),
                            border: InputBorder.none,
                            hintText: "Search your destination...",
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Image.asset(
                      "assets/images/filter.png",
                      height: 30,
                      width: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Text(
                'Select your next trip ',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 30.0),
              SizedBox(
                height: 50,
                child: ValueListenableBuilder<int>(
                  valueListenable: selectedIndex,
                  builder: (context, currentIndex, _) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tripFilters.length,
                      itemBuilder: (context, index) {
                        final isSelected = index == currentIndex;
                        return GestureDetector(
                          onTap: () => selectedIndex.value = index,
                          child: Container(
                            margin: const EdgeInsets.only(right: 10.0),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 10.0,
                            ),
                            decoration: BoxDecoration(
                              color: isSelected ? Colors.black : Colors.white,
                              borderRadius: BorderRadius.circular(60),
                              border: Border.all(
                                color:
                                    isSelected
                                        ? Colors.black
                                        : Colors.grey.shade300,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                tripFilters[index],
                                style: TextStyle(
                                  color:
                                      isSelected
                                          ? Colors.white
                                          : const Color.fromARGB(196, 0, 0, 0),
                                  fontSize: 18.0,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 30.0),

              // Image Card With OverLay Text
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [

                    //First Image Card Widget 1

                    Column(
                      children: [
                        Center(
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/Mount.jpg",
                                  height: 300,
                                  width: 250,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 20.0),
                                margin: EdgeInsets.only(right: 50.0, top: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(10.0),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              60,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.favorite_outline,
                                            color: const Color.fromARGB(
                                              255,
                                              74,
                                              73,
                                              73,
                                            ),
                                            size: 20.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 180.0),
                
                                    Text(
                                      "Mount Fuji",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    Text(
                                      "Tokyo",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20.0),

                    //Second image Card Widget 2
                
                    Column(
                      children: [
                        Center(
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/Mount_2.jpg",
                                  height: 300,
                                  width: 250,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 20.0),
                                margin: EdgeInsets.only(right: 50.0, top: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(10.0),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              60,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.favorite_outline,
                                            color: const Color.fromARGB(
                                              255,
                                              74,
                                              73,
                                              73,
                                            ),
                                            size: 20.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 180.0),
                
                                    Text(
                                      "Machu Picchu",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    Text(
                                      "Peru",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20.0),

                    //Third Image Card Widget 3

                    Column(
                      children: [
                        Center(
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/Moraine-lake.jpg",
                                  height: 300,
                                  width: 250,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 20.0),
                                margin: EdgeInsets.only(right: 50.0, top: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(10.0),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              60,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.favorite_outline,
                                            color: const Color.fromARGB(
                                              255,
                                              74,
                                              73,
                                              73,
                                            ),
                                            size: 20.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 180.0),

                                    Text(
                                      "Mount Kilimanjaro",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    Text(
                                      "Tanzania",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20.0),

                    //Fourth Image Card Widget 4

                    Column(
                      children: [
                        Center(
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/ladakh-woman.jpg",
                                  height: 300,
                                  width: 250,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 20.0),
                                margin: EdgeInsets.only(right: 50.0, top: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(10.0),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              60,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.favorite_outline,
                                            color: const Color.fromARGB(
                                              255,
                                              74,
                                              73,
                                              73,
                                            ),
                                            size: 20.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 180.0),

                                    Text(
                                      "Everest Base Camp",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    Text(
                                      "Nepal",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20.0),

                    //Fifth Image Card Widget 5

                    Column(
                      children: [
                        Center(
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/down-from-hill.jpg",
                                  height: 300,
                                  width: 250,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 20.0),
                                margin: EdgeInsets.only(right: 50.0, top: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(10.0),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              60,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.favorite_outline,
                                            color: const Color.fromARGB(
                                              255,
                                              74,
                                              73,
                                              73,
                                            ),
                                            size: 20.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 180.0),

                                    Text(
                                      "Mountain Trails",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    Text(
                                      "Munnar",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20.0),

                    //Sixth Image Card Widget 6

                    Column(
                      children: [
                        Center(
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/red-golden-mountains.jpg",
                                  height: 300,
                                  width: 250,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 20.0),
                                margin: EdgeInsets.only(right: 50.0, top: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(10.0),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              60,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.favorite_outline,
                                            color: const Color.fromARGB(
                                              255,
                                              74,
                                              73,
                                              73,
                                            ),
                                            size: 20.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 180.0),

                                    Text(
                                      "Solang Valley",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    Text(
                                      "Manali",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20.0),

                    //Seventh Image Card Widget 7

                    Column(
                      children: [
                        Center(
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/eifel-tower.jpg",
                                  height: 300,
                                  width: 250,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 20.0),
                                margin: EdgeInsets.only(right: 50.0, top: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(10.0),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              60,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.favorite_outline,
                                            color: const Color.fromARGB(
                                              255,
                                              74,
                                              73,
                                              73,
                                            ),
                                            
                                            size: 20.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 180.0),

                                    Text(
                                      "Queenstown",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    Text(
                                      "New Zealand",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
