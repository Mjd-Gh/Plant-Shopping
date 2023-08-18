import 'package:flutter/material.dart';
import 'package:ghars/main.dart';
import '../../constants/colors.dart';
import '../../constants/spaces.dart';
import '../../model/plants_model.dart';
import '../../screens/cart_page.dart';

class CartItemCard extends StatefulWidget {
  const CartItemCard({
    super.key,
    required this.plants,
  });
  final Plants plants;

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width - 10,
      height: MediaQuery.of(context).size.height * 0.14,
      decoration: const BoxDecoration(
        color: GColors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(157, 209, 206, 206),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.plants.name!, //Related to cart list
                  maxLines: 1,
                  overflow: TextOverflow.visible,
                  style: const TextStyle(
                    fontFamily: 'Lobster',
                    fontSize: 30,
                  ),
                ),
                GSpaces.gV16,
                Row(
                  children: [
                    Text("2 X ${widget.plants.price}"), //Related to counter
                    GSpaces.gH16,
                    const Text("Total: 1000"), // Realted to counter
                  ],
                ),
              ],
            ),
          ),
          // GSpaces.gH24,
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  cartItemList.remove(widget.plants);
                  setState(() {});
                  context
                      .findAncestorStateOfType<CartPageState>()
                      ?.setState(() {});
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ),
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.remove)),
                  const Text(
                    "2", //Number related to counter
                    style: TextStyle(fontSize: 20),
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
