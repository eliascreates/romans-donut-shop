part of 'donut_pager.dart';

class PageViewIndicator extends StatelessWidget {
  const PageViewIndicator({
    super.key,
    required this.controller,
    required this.numberOfPages,
    required this.currentPage,
  });

  final PageController controller;
  final int numberOfPages;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        numberOfPages,
        (index) {
          return GestureDetector(
            onTap: () => controller.animateToPage(
              index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            ),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeInOut,
              height: 15,
              width: 15,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: currentPage == index
                    ? AppColors.mainColor
                    : Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          );
        },
      ),
    );
  }
}
