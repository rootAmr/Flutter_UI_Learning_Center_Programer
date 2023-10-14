import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final List<String> crdNames;
  final List<String> imglist;
  final List<Color> cardColors;
  final List<Icon> cardIcons;

  Page2({Key? key})
      : crdNames = [
          'Category',
          'Classes',
          'Free Course',
          'BookStore',
          'Live Course',
          'Leader Board',
        ],
        cardColors = [
          const Color.fromARGB(255, 116, 116, 243),
          const Color.fromARGB(255, 151, 243, 151),
          const Color.fromARGB(255, 242, 117, 117),
          const Color.fromARGB(255, 247, 147, 247),
          const Color.fromARGB(255, 240, 240, 132),
          const Color.fromARGB(255, 150, 239, 239),
        ],
        cardIcons = [
          const Icon(Icons.category, color: Colors.white, size: 30),
          const Icon(Icons.video_library, color: Colors.white, size: 30),
          const Icon(Icons.assignment, color: Colors.white, size: 30),
          const Icon(Icons.store, color: Colors.white, size: 30),
          const Icon(Icons.play_circle_fill, color: Colors.white, size: 30),
          const Icon(Icons.category, color: Colors.white, size: 30),
        ],
        imglist = [
          'Flutter',
          'React Native',
          'Python',
          'C#',
        ],
        super(key: key ?? UniqueKey());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
            decoration: const BoxDecoration(
              color: Color(0xFF7707FF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    "Hello Programer",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Cari di sini ....",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  itemCount: crdNames.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: cardColors[index],
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: cardIcons[index]),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          crdNames[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Course',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Lihat Semua",
                      style: TextStyle(
                        color: Color.fromARGB(255, 123, 55, 241),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                GridView.builder(
                  itemCount: imglist.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:
                        (MediaQuery.of(context).size.height - 25 - 25) /
                            (4 * 250),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 230, 223, 250),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                "images/${imglist[index]}.png",
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              imglist[index],
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              '55 Videos',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        iconSize: 32,
        selectedItemColor: Color.fromARGB(255, 123, 55, 241),
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
          const BottomNavigationBarItem(icon: Icon(Icons.assignment),label: 'Courses'),
          const BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Wishlist'),
          const BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account'),
        ],
      ),
    );
  }
}
