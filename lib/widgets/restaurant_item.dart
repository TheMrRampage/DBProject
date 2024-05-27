import 'package:flutter/material.dart';

class RestaurantItem extends StatefulWidget {
  const RestaurantItem({super.key});

  @override
  State<RestaurantItem> createState() => _RestaurantItemState();
}

class _RestaurantItemState extends State<RestaurantItem> {
  bool isFavorite = false;

  void onTapIcon() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(24),
        ),
        image: DecorationImage(
          image: NetworkImage(
            "https://cdn.balad.ir/crowd-images/all/original/1Mj7KfOZIAUU4E-bda5f87e1f59485392a9beeb7e8cafb5.png",
          ),
          fit: BoxFit.cover,
        ),
        color: Colors.red,
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "کافی شاپ فنجانه",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  IconButton(
                    onPressed: onTapIcon,
                    icon: Icon(
                      isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  )
                ],
              ),
              Text(
                "شعبه بهارستان",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(174, 255, 255, 255)),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        'Salam',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'میانگین قیمت',
                        style: TextStyle(
                            color: Color.fromARGB(207, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                child: VerticalDivider(),
                height: 60,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        'data',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'رزرو ها',
                        style: TextStyle(
                            color: Color.fromARGB(207, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                child: VerticalDivider(),
                height: 60,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        'data',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'امتیاز',
                        style: TextStyle(
                            color: Color.fromARGB(207, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
