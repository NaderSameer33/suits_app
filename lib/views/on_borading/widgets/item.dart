part of '../view.dart';

class _Item extends StatelessWidget {
  const _Item({
    required this.model,
    required this.currentIndex,
    required this.list,
    required this.controller,
  });
  final _Model model;
  final int currentIndex;
  final List list;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppImage(
            image: model.image,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (currentIndex != list.length - 1)
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.r),
                            side: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        onPressed: () => goTo(
                          page: WelcomeView(),
                        ),

                        child: Text(
                          'Skip',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  Spacer(),
                  Text(
                    model.title,
                    style: TextStyle(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    model.subTitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 36.h,
                  ),
                  Row(
                    children: [
                      if (currentIndex != 0)
                        DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff4E6542),
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Transform.rotate(
                              angle: pi,
                              child: IconButton(
                                onPressed: () {
                                  controller.previousPage(
                                    duration: Duration(milliseconds: 350),
                                    curve: Curves.linear,
                                  );
                                },
                                icon: AppImage(
                                  image: 'arrow.png',
                                  color: Color(0xffDD8560),
                                ),
                              ),
                            ),
                          ),
                        ),

                      Spacer(),
                      ...List.generate(
                        3,
                        (index) => AnimatedContainer(
                          duration: Duration(
                            milliseconds: 350,
                          ),
                          margin: EdgeInsets.only(right: 6.r),
                          height: currentIndex == index ? 15.h : 10.h,
                          width: currentIndex == index ? 15.w : 10.w,
                          decoration: BoxDecoration(
                            color: currentIndex == index
                                ? Color(0xffDD8560)
                                : Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 20.r,
                        backgroundColor: Color(0xffDD8560),
                        child: IconButton(
                          onPressed: () {
                            controller.nextPage(
                              duration: Duration(milliseconds: 350),
                              curve: Curves.linear,
                            );
                          },
                          icon: AppImage(
                            image: 'arrow.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Model {
  final String image, title, subTitle;

  _Model({
    required this.image,
    required this.title,
    this.subTitle = '',
  });
}
