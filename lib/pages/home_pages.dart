// import 'package:amibike/pages/add_stnk.dart';
// import 'package:amibike/pages/profile_page.dart';
import 'package:amibike/theme.dart';
import 'package:amibike/widget/home_bottom.dart';
import 'package:flutter/material.dart';
import 'package:amibike/widget/items_widget.dart';

class HomePages extends StatefulWidget {
  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.sort_rounded,
                        color: textColor4.withOpacity(0.5),
                        size: 35,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        color: textColor4.withOpacity(0.5),
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'What do you want today ?',
                  style: whiteTextStyle.copyWith(
                    color: textColor4,
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 20,
                ),
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: backgroundColor3,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Find Your Coffee',
                      hintStyle: TextStyle(
                        color: textColor4.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: textColor4.withOpacity(0.5),
                      )),
                ),
              ),
              TabBar(
                controller: _tabController,
                labelColor: backgroundColor4,
                unselectedLabelColor: backgroundColor2,
                isScrollable: true,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    color: backgroundColor4,
                    width: 3
                    ),
                    insets: EdgeInsets.symmetric(
                      horizontal: 20
                    ),
                    ),
                    labelStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                    labelPadding: EdgeInsets.symmetric(horizontal: 20),
                tabs: [
                  Tab(
                    text: 'Cappuccino',
                  ),
                  Tab(
                    text: 'Machiato',
                  ),
                  Tab(
                    text: 'Latte',
                  ),
                  Tab(
                    text: 'Americano',
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: [
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                ][_tabController.index],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeButton(),
    );
  }
}
