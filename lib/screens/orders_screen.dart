import 'package:flutter/material.dart';
import 'package:furniture_shopping/widgets/order_card.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'My order',
          style: GoogleFonts.merriweather(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF303030),
          ),
        ),
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xFF303030),
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: const Color(0xFF242424),
          unselectedLabelColor: const Color(0xFF999999),
          labelStyle: GoogleFonts.nunitoSans(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: GoogleFonts.nunitoSans(
            fontSize: 18,
          ),
          indicatorWeight: 4.0,
          indicatorColor: const Color(0xFF242424),
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: const EdgeInsets.symmetric(horizontal: 50.0),
          tabs: const [
            Tab(
              child: Text(
                'Delivered',
              ),
            ),
            Tab(
              child: Text(
                'Processing',
              ),
            ),
            Tab(
              child: Text(
                'Canceled',
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.separated(
              itemCount: 4,
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 30.0),
              itemBuilder: (BuildContext context, int index) =>
                  const OrderCard(),
            ),
          ),
          const Center(
            child: Text('Page 2'),
          ),
          const Center(
            child: Text('Page 3'),
          ),
        ],
      ),
    );
  }
}
