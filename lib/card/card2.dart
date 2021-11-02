import 'package:flutter/material.dart';
import 'package:recipetest/apptheme.dart';
import 'package:recipetest/widget/authorsCard.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  final String authorsName = 'Mike Katz';
  final String authorsTitle = 'Smoothie Connoisseur';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16),
        constraints: BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag5.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          children: [
            AuthorCard(
              authorName: authorsName,
              title: authorsTitle,
              imageProvider: AssetImage('assets/author_katz.jpeg'),
            ),
            // 1
            Expanded(
              // 2
              child: Stack(
                children: [
                  // 3
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Recipe',
                      style: AppTheme.lightTextTheme.headline1,
                    ),
                  ),
                  // 4
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: AppTheme.lightTextTheme.headline1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
