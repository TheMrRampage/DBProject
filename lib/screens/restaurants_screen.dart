import 'package:flutter/material.dart';
import 'package:paygah1/widgets/restaurant_item.dart';

class RestaurantsScreen extends StatefulWidget {
  const RestaurantsScreen({super.key});

  @override
  State<RestaurantsScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantsScreen> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text(
          'رستوران و کافه ها',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
        ),
    leading: IconButton(
      style: TextButton.styleFrom(backgroundColor: Colors.blue),
      icon: Icon(Icons.arrow_back_ios_new,color:Colors.white ,),
    onPressed: (){},
    )
      ),
      body: SafeArea(
        child: ListView.separated(
            itemCount: 1,
            padding: const EdgeInsets.all(16.0),
            separatorBuilder: (context, index) => SizedBox(
                  height: 16.0,
                ),
            itemBuilder: (context, index) {
              return RestaurantItem();
            }),
      ),
    );
  }
}
