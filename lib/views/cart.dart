import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../models/fruit.dart';
import '../utils/utils.dart';

class FruitAppCartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appBar = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: const Icon(LineIcons.alternateLongArrowLeft),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        IconButton(
          icon: const Icon(LineIcons.thLarge),
          onPressed: () {},
        ),
      ],
    );

    final cartItems = Column(
      children: <Widget>[
        _buildCartCard(fruits[0], context),
        _buildCartCard(fruits[1], context),
        _buildCartCard(fruits[2], context),
      ],
    );

    final cartValue = Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            'A total of: ',
            style: TextStyle(
              color: Colors.grey.withOpacity(0.9),
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: Fonts.primaryFont,
            ),
          ),
          const Text(
            '\$97.02',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              fontFamily: Fonts.primaryFont,
            ),
          )
        ],
      ),
    );

    final btn = Column(
      children: <Widget>[
        Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(45.0),
          shadowColor: Colors.white,
          child: Container(
            height: 60.0,
            width: MediaQuery.of(context).size.width / 4 * 3,
            decoration: BoxDecoration(
              color: const Color(0XFF558948),
              borderRadius: BorderRadius.circular(45.0),
            ),
            child: const Center(
              child: Text(
                'Settlement',
                style: TextStyle(
                  fontFamily: Fonts.primaryFont,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );

    final body = ListView(
      children: <Widget>[
        const SizedBox(
          height: 10.0,
        ),
        appBar,
        const SizedBox(
          height: 10.0,
        ),
        cartItems,
        const SizedBox(
          height: 20.0,
        ),
        cartValue,
        const SizedBox(
          height: 50.0,
        ),
        btn,
      ],
    );

    return Scaffold(
      body: body,
    );
  }

  Widget _buildCartCard(Fruit fruit, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
        left: 15.0,
        right: 15.0,
      ),
      child: Material(
        elevation: 54.0,
        shadowColor: Colors.white70,
        borderRadius: BorderRadius.circular(5.0),
        child: Container(
          height: 120.0,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  fruit.image,
                  fit: BoxFit.cover,
                  height: 80.0,
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    bottom: 10.0,
                    left: 10.0,
                    right: 10.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        fruit.name,
                        style: const TextStyle(
                          fontFamily: Fonts.primaryFont,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '\$${fruit.price}',
                            style: const TextStyle(
                              fontFamily: Fonts.primaryFont,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.orange,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 20.0,
                                  width: 20.0,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.grey,
                                      size: 15.0,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              const Text(
                                '1',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 20.0,
                                  width: 20.0,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.grey,
                                      size: 15.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
