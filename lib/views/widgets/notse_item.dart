import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotseItem extends StatelessWidget {
  const NotseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.only(
        top: 20,
        left: 16,
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Fluttsr Tips',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(
                top: 16,
                bottom: 16,
              ),
              child: Text(
                'Build your career with Ahmedelsersy',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 26,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 28),
            child: Text(
              'may 24 , 2024',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
