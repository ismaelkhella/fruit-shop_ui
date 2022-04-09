import 'package:flutter/material.dart';

import '../_routing/routes.dart';
import '../models/fruit.dart';
import '../utils/utils.dart';

class FruitsWidget extends StatefulWidget {
  @override
  _FruitsWidgetState createState() => _FruitsWidgetState();
}

class _FruitsWidgetState extends State<FruitsWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: fruits.map((fruit) => _buildFruitCard(fruit)).toList(),
    );
  }

  Widget _buildFruitCard(Fruit fruit) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Material(
        elevation: 10.0,
        shadowColor: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              detailsViewRoute,
              arguments: fruit,
            );
          },
          child: Container(
            height: 100.0,
            width: 250.0,
            decoration: BoxDecoration(
              color: fruit.color,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: const [BoxShadow(color: Colors.grey)],
            ),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 15.0,
                ),
                Hero(
                  tag: fruit.image,
                  child: Image.asset(
                    fruit.image,
                    fit: BoxFit.cover,
                    height: 100.0,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  '\$${fruit.price}',
                  style: const TextStyle(
                    fontFamily: Fonts.primaryFont,
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                  child: Text(
                    fruit.name,
                    style: const TextStyle(
                      fontFamily: Fonts.primaryFont,
                      color: Colors.white70,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                InkWell(
                  onTap: () {Navigator.pushNamed(
                    context,
                    detailsViewRoute,
                    arguments: fruit,
                  );},
                  child: Container(
                    height: 40.0,
                    width: 145.0,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: const Center(
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(
                          fontFamily: Fonts.primaryFont,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
