import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveAppointments extends StatelessWidget {
  final String barberName;
  final String date;
  final String time;
  const ActiveAppointments({
    super.key,
    required this.barberName,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          alignment: Alignment.centerLeft,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff81A7D5).withValues(alpha: .5),
              ),
              child: SvgPicture.asset(
                "assets/icons/user.svg",
                height: 24,
                fit: BoxFit.scaleDown,
              ),
            ),
            SizedBox(width: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  barberName,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Text(
                      date,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    SizedBox(width: 8),
                    Text('•', style: Theme.of(context).textTheme.headlineSmall),
                    SizedBox(width: 8),
                    Text(
                      time,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: Theme.of(context).cardColor.withValues(alpha: .5),
            ),
          ],
        ),
      ),
    );
  }
}
