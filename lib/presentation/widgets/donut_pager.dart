import 'package:flutter/material.dart';
import '../../core/constants/constants.dart';

part 'page_indicator.dart';

class DonutPager extends StatefulWidget {
  const DonutPager({super.key});

  @override
  State<DonutPager> createState() => _DonutPagerState();
}

class _DonutPagerState extends State<DonutPager> {
  List<_DonutPage> pages = [
    _DonutPage(imgSrc: Utils.donutPromo1, logoImgSrc: Utils.donutLogoWhiteText),
    _DonutPage(imgSrc: Utils.donutPromo2, logoImgSrc: Utils.donutLogoWhiteText),
    _DonutPage(imgSrc: Utils.donutPromo3, logoImgSrc: Utils.donutLogoWhiteText),
  ];

  int currentPage = 0;
  late PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Column(
        children: [
          Expanded(
            child: PageView(
              scrollDirection: Axis.horizontal,
              pageSnapping: true,
              controller: controller,
              onPageChanged: (page) => setState(() => currentPage = page),
              children: List.generate(
                pages.length,
                (index) {
                  _DonutPage currentPage = pages[index];

                  return Container(
                    alignment: Alignment.bottomLeft,
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10,
                          offset: const Offset(0, 5.0),
                        )
                      ],
                      image: DecorationImage(
                        image: AssetImage(currentPage.imgSrc),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Image.asset(
                      currentPage.logoImgSrc,
                      width: 120,
                      color: currentPage.imgSrc == Utils.donutPromo3
                          ? AppColors.mainDarkColor
                          : null,
                    ),
                  );
                },
              ),
            ),
          ),
          PageViewIndicator(
            controller: controller,
            numberOfPages: pages.length,
            currentPage: currentPage,
          ),
        ],
      ),
    );
  }
}

class _DonutPage {
  _DonutPage({required this.imgSrc, required this.logoImgSrc});

  final String imgSrc;
  final String logoImgSrc;
}
