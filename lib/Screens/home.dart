import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: non_constant_identifier_names
  final new_names = [
    "ki__ran_",
    "Mithun",
    "Vy_sh___nav",
    "cat_girl",
    "Vaidhehi",
    "emodxanurag",
    "Rahul"
  ];
  final text_items = [
    'your story',
    "tourisum",
    "c_h_i_na__",
    "mikle_",
    "jhone",
    "mac",
    'cat'
  ];
  // ignore: non_constant_identifier_names
  final image_items = [
    'assets/275588766_656348885432680_6419832155759334112_n.jpg',
    "assets/pexels-photo-1603650.jpeg",
    "assets/pexels-photo-2314983.jpeg",
    "assets/pexels-photo-3533228.webp",
    "assets/pexels-photo-3879071.jpeg",
    "assets/summer-refreshing-organic-tea-currant-leaves-glass-teapot-summer-refreshing-organic-tea-currant-leaves-glass-192463157.jpg",
    "assets/tasty-sweet-dessert-ice-cream-vanilla-flavor-clay-plate-served-mint-toppings-black-wooden-strawberry-topping-112985340.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Instagram',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
          SizedBox(
            width: 8,
          ),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.chat_bubble_outline_rounded)),
        ],
      ),
      body: ListView(
        children: [
          Container(
              height: 100,
              width: double.infinity,
              color: Colors.black,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: image_items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.8),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(image_items[index]),
                                    fit: BoxFit.cover),
                                border: Border.all(color: Colors.orange),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.9),
                          child: Text(
                            text_items[index],
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        )
                      ],
                    );
                  })),
          const Divider(
            thickness: 0.1,
            color: Colors.grey,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            color: Colors.black,
            child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 500,
                    width: double.infinity,
                    color: Colors.black,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: double.infinity,
                          color: Colors.black,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 17,
                                ),
                              ),
                              Text(
                                new_names[index],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 200,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    CupertinoIcons.ellipsis_vertical,
                                    size: 20,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          height: 290,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(image_items[index]),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 40,
                          width: double.infinity,
                          color: Colors.black,
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  color: Colors.white,
                                  icon: Icon(Icons.favorite_border_outlined)),
                              IconButton(
                                  onPressed: () {},
                                  color: Colors.white,
                                  icon: Icon(Icons.comment_rounded)),
                              IconButton(
                                  color: Colors.white,
                                  onPressed: () {},
                                  icon: Icon(Icons.send)),
                              SizedBox(
                                width: 195,
                              ),
                              IconButton(
                                  color: Colors.white,
                                  onPressed: () {},
                                  icon: Icon(Icons.save_outlined)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 300),
                          child: Text(
                            "545 likes",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                            height: 30,
                            width: double.infinity,
                            color: Colors.black,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  new_names[index],
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("😉  ...",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "more",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )),
                        Padding(
                          padding: const EdgeInsets.only(right: 216),
                          child: Text(
                            "view all 74 comments",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 253),
                          child: Text(
                            "akshay__ adpoli",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.only(right: 280),
                          child: Text(
                            "41 minutes ago",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    color: Colors.grey,
                    thickness: 0.2,
                  );
                },
                itemCount: 10),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 32,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 32,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.video_library,
                  size: 32,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 32,
                )),
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage("assets/pexels-photo-3879071.jpeg"),
            )
          ],
        ),
      ),
    );
  }
}
