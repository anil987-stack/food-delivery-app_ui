import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:food_delivery/common_widget/category_cell.dart';
import 'package:food_delivery/common_widget/most_popular_cell.dart';
import 'package:food_delivery/common_widget/popular_restaurant_row.dart';
import 'package:food_delivery/common_widget/recent_item_row.dart';
import 'package:food_delivery/common_widget/round_textfield.dart';
import 'package:food_delivery/common_widget/view_all_title_row.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController textSearch = TextEditingController();
  final ScrollController _controller = ScrollController();

  List catArr = [
    {"image": "assets/img/biryani.png", "name": "Biryani"},
    {"image": "assets/img/friedrice.png", "name": "Fried Rice"},
    {"image": "assets/img/chilli_chicken.png", "name": "Chilli\nChicken"},
    {"image": "assets/img/north_thali.png", "name": "thali"},
    {"image": "assets/img/paratha.png", "name": "Paratha"}
  ];
  List secCatArr = [
    {"image": "assets/img/dosa_ic.png", "name": "Dosa"},
    {"image": "assets/img/noodles_ic.png", "name": "Noodles"},
    {"image": "assets/img/pizza_ic.png", "name": "Pizza"},
    {"image": "assets/img/roll_ic.png", "name": "Roll"},
    {"image": "assets/img/burger.png", "name": "Burger"}
  ];

  List popArr = [
    {
      "image": "assets/img/oven_story.png",
      "name": "Oven Story Pizza",
      "rate": "4.9",
      "rating": "124",
      "type": "Pizza",
      "food_type": "Western Food"
    },
    {
      "image": "assets/img/res_2.png",
      "name": "7th Heaven",
      "rate": "4.9",
      "rating": "124",
      "type": "Dessert",
      "food_type": "Western Food"
    },
    {
      "image": "assets/img/res_3.png",
      "name": "Chandu Sweets",
      "rate": "4.9",
      "rating": "124",
      "type": "Mithai",
      "food_type": "Street Food"
    },
  ];
  List mostPopArr = [
    {
      "image": "assets/img/m_res_1.png",
      "name": "Delta Spice",
      "rate": "4.9",
      "rating": "124",
      "type": "Biryani",
      "food_type": "Western Food"
    },
    {
      "image": "assets/img/m_res_2.png",
      "name": "Green Valley",
      "rate": "4.9",
      "rating": "124",
      "type": "North Indian",
      "food_type": "Western Food"
    },
  ];

  List recentArr = [
    {
      "image": "assets/img/item_1.png",
      "name": "Mulberry Pizza by Josh",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafe",
      "food_type": "Western Food"
    },
    {
      "image": "assets/img/item_2.png",
      "name": "Barita",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafe",
      "food_type": "Western Food"
    },
    {
      "image": "assets/img/item_3.png",
      "name": "Pizza Rush Hour",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafe",
      "food_type": "Western Food"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Good morning Anil!',
                  style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/img/shopping_cart.png",
                      width: 25,
                      height: 25,
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivering to',
                  style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text(
                      'Current location',
                      style: TextStyle(
                          color: TColor.secondaryText,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Image.asset(
                      "assets/img/dropdown.png",
                      width: 12,
                      height: 12,
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RoundTextfield(
              hintText: 'Search food',
              controller: textSearch,
              left: Container(
                alignment: Alignment.center,
                width: 30,
                child: Image.asset(
                  'assets/img/search.png',
                  height: 20,
                  width: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  "Anil, what's on your mind?",
                  style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 8), // Adjust the margin as needed
                    height: 1,
                    color: const Color(0xffd4d5d9),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 140,
            child: ListView.builder(
              controller: _controller,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              itemCount: catArr.length,
              itemBuilder: (context, index) {
                var cObj = catArr[index] as Map? ?? {};
                return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CategoryCell(cObj: cObj, onTap: () {}));
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              controller: _controller,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              itemCount: catArr.length,
              itemBuilder: (context, index) {
                var cObj = secCatArr[index] as Map? ?? {};
                return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CategoryCell(cObj: cObj, onTap: () {}));
              },
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child:
                  ViewAllTitleRow(title: "Popular Restaurants", onView: () {})),
          ListView.builder(
            controller: _controller,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: popArr.length,
            itemBuilder: (context, index) {
              var mObj = popArr[index] as Map? ?? {};
              return PopularRestaurantRow(pObj: mObj, onTap: () {});
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ViewAllTitleRow(title: "Most Popular", onView: () {})),
          SizedBox(
            height: 180,
            child: ListView.builder(
              controller: _controller,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              itemCount: mostPopArr.length,
              itemBuilder: (context, index) {
                var mObj = mostPopArr[index] as Map? ?? {};
                return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: MostPopularCell(mObj: mObj, onTap: () {}));
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ViewAllTitleRow(title: "Recent items", onView: () {})),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            itemCount: recentArr.length,
            itemBuilder: (context, index) {
              var mObj = recentArr[index] as Map? ?? {};
              return RecentItemRow(pObj: mObj, onTap: () {});
            },
          ),
        ]),
      ),
    );
  }
}
