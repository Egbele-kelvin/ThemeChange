import 'package:flutter/material.dart';
import 'package:recipetest/apptheme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag2.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                // 1
                color: Colors.black.withOpacity(0.6),
                // 2
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              // 3
              padding: EdgeInsets.all(16),
              // 4
              child: Column(
                // 5
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 6
                  Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  // 7
                  SizedBox(height: 8),
                  // 8
                  Text(
                    'Recipe Trends',
                    style: AppTheme.darkTextTheme.headline2,
                  ),
                  // 9
                  SizedBox(height: 30),
                ],
              ),
            ),
            Center(
              // 11
              child: Wrap(
                // 12
                alignment: WrapAlignment.start,
                // 13
                spacing: 12,
                // 14
                children: [
                  Chip(
                    label: Text('Healthy',
                        style: AppTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),
                  Chip(
                    label:
                        Text('Vegan', style: AppTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),
                  Chip(
                    label: Text('Carrots',
                        style: AppTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label:
                        Text('Green', style: AppTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label:
                        Text('Wheat', style: AppTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text('Paw-Paw',
                        style: AppTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label:
                        Text('Mints', style: AppTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text('Lemongrass',
                        style: AppTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
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
