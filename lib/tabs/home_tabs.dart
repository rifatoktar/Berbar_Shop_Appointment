import 'package:barber_shop/pages/creating_appointment_page.dart';
import 'package:barber_shop/widgets/active_card.dart';
import 'package:barber_shop/widgets/headline.dart';
import 'package:barber_shop/widgets/reviews_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Hello!",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    SizedBox(width: 8),
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/hand.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "You want to create a new appointment at your favorite barber shop?",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Color(0xff13459E)),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CreatingAppointmentPage(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    alignment: Alignment.centerLeft,
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Center(
                      child: Text(
                        "Create One",
                        style: GoogleFonts.roboto(
                          color: Color(0xff13459E),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              HeadlineWidget(headline: "Your Active Appointments"),
              SizedBox(height: 20),
              ActiveAppointments(
                barberName: 'New Street Barber Shop',
                date: '2 May',
                time: '14:00',
              ),
              SizedBox(height: 16),
              ActiveAppointments(
                barberName: "New Street Barber Shop",
                date: "10 May",
                time: "15:00",
              ),
              SizedBox(height: 40),
              HeadlineWidget(headline: "Reviews"),
              SizedBox(height: 20),
              ReviewsWidget(
                userName: "Robert McJohns",
                point: "4.9",
                time: "1 day ago",
              ),
              SizedBox(height: 16),
              ReviewsWidget(
                userName: "James Schrinder",
                point: "4.8",
                time: "2 days ago",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
