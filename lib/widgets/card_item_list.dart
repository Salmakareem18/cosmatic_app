import 'package:cosmatics/widgets/card_item.dart';
import 'package:flutter/material.dart';

class CardItemList extends StatelessWidget {
  CardItemList({super.key});
  List<String> images = [
    "https://images.pexels.com/photos/2586073/pexels-photo-2586073.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/2752039/pexels-photo-2752039.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/17471725/pexels-photo-17471725.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/2732197/pexels-photo-2732197.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://www.cosmostoreegypt.com/wp-content/uploads/2023/09/note-liquid-concealer.jpg",
    "https://www.itcosmetics.com/dw/image/v2/AANG_PRD/on/demandware.static/-/Sites-itcosmetics-us-Library/default/dw73ca8bc3/images/blog/ITBlog_makeup-primer.jpg?sw=480&sh=350&sm=cut&q=70",
  ];
  List<String> names = [
    "Face tint / Lip tint",
    "Makeup Brush Set",
    "Eyeshadow Palette",
    "powder lot",
    "Liquid Concealer",
    "Makeup Primer",
  ];
  List<String> prices = [
    r"$44,99",
    r"$29,99",
    r"$19,99",
    r"$9,99",
    r"$14,99",
    r"$24,99",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.7,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) => CardItem(
        image: images[index],
        productName: names[index],
        price: prices[index],
      ),
    );
  }
}
