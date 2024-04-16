import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:food_delivery/common_widget/category_cell.dart';
import 'package:food_delivery/common_widget/popular_restaurant_row.dart';
import 'package:food_delivery/common_widget/round_textfield.dart';

class OfferView extends StatefulWidget {
  const OfferView({super.key});

  @override
  State<OfferView> createState() => _OfferViewState();
}

class _OfferViewState extends State<OfferView> {
  TextEditingController textSearch = TextEditingController();

  List catArr = [
    {"image": "assets/img/biryani.png", "name": "Biryani"},
    {"image": "assets/img/friedrice.png", "name": "Fried Rice"},
    {"image": "assets/img/chilli_chicken.png", "name": "Chilli\nChicken"},
    {"image": "assets/img/burger.png", "name": "Burger"},
    {"image": "assets/img/paratha.png", "name": "Paratha"},
    {"image": "assets/img/dosa_ic.png", "name": "Dosa"},
    {"image": "assets/img/noodles_ic.png", "name": "Noodles"},
    {"image": "assets/img/pizza_ic.png", "name": "Pizza"},
    {"image": "assets/img/dosa_ic.png", "name": "Dosa"},
    {"image": "assets/img/noodles_ic.png", "name": "Noodles"},
    {"image": "assets/img/pizza_ic.png", "name": "Pizza"},
    {"image": "assets/img/roll_ic.png", "name": "Roll"},
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
                  'Latest Offers',
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
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RoundTextfield(
              hintText: 'Restaurant name or a dish',
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
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    height: 1,
                    color: const Color(0xffd4d5d9),
                  ),
                ),
                Text(
                  "DEALS OF THE DAY",
                  style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
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
          CarouselSlider(
            items: [
              'https://cdn.dribbble.com/users/1732368/screenshots/6052290/final-restaurant-gif.gif',
              'https://img.freepik.com/free-psd/food-menu-restaurant-facebook-cover-template_106176-731.jpg?size=626&ext=jpg&ga=GA1.1.735520172.1711238400&semt=ais',
              'https://img.freepik.com/free-psd/food-menu-restaurant-web-banner-template_106176-1452.jpg',
            ].map((imageUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amber,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              height: 170,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              onPageChanged: (index, reason) {
                setState(() {});
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    height: 1,
                    color: const Color(0xffd4d5d9),
                  ),
                ),
                Text(
                  "CHECK OFFERES ON TOP DISHES",
                  style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    height: 1,
                    color: const Color(0xffd4d5d9),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 340,
            child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: catArr.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5.0,
                    crossAxisSpacing: 4.0,
                    childAspectRatio: 2.0),
                itemBuilder: (context, index) {
                  var cObj = catArr[index] as Map? ?? {};
                  return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: CategoryCell(cObj: cObj, onTap: () {}));
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    height: 1,
                    color: const Color(0xffd4d5d9),
                  ),
                ),
                Text(
                  " BEST OFFERS AROUND YOU",
                  style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    height: 1,
                    color: const Color(0xffd4d5d9),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "FEATURED",
            style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 13,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: popArr.length,
            itemBuilder: (context, index) {
              var mObj = popArr[index] as Map? ?? {};
              return PopularRestaurantRow(pObj: mObj, onTap: () {});
            },
          ),
        ]),
      ),
    );
  }
}
