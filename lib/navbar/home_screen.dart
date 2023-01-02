import 'package:flutter/material.dart';
import 'package:real_estate/widget/appText.dart';
import 'package:real_estate/widget/service/auth_service.dart';
import '../widget/home_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.only(
                  bottom: 20, top: 20, left: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                      text: "Find Your Best\nReal Estate",
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      size: 30),
                   IconButton(onPressed:(() {
                    AuthService().logout(context);
                    
                  }),icon:const Icon(Icons.logout))
                ],
              )),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: TabBar(
                labelPadding: const EdgeInsets.only(right: 10),
                indicator: const BoxDecoration(color: Colors.transparent),
                isScrollable: true,
                controller: tabController,
                tabs: [
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue),
                      child: const Text("Home")),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue),
                      child: const Text("Villa")),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue),
                      child: const Text("Apartment")),
                ]),
          ),
          Container(
              margin: const EdgeInsets.only(left: 20, top: 20),
              child: AppText(
                  text: "Popular",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  size: 20)),
          Expanded(child: ListView.builder(
            itemCount: 5,
           
            itemBuilder: (context,index){
            return const HomeCardWidget();
          }))
        ],
      ),
    );
  }
}
