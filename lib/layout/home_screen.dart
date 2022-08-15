import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../modules/filter/filter_cubit/filter_cubit.dart';
import '../modules/filter/filter_screen.dart';
import '../shared/components/components.dart';
import '../shared/components/constantse.dart';
import 'home_cubit/main_states.dart';
import 'home_cubit/main_cubit.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(
            create: (context) => HomeCubit()
              ..getFindData()
              ..getPestNeedsData()
              ..getFooterDataAtHomeScreen()
              ..getAboutInfoData()
              ..getFirstSectionHomeData()),
        BlocProvider<FilterCubit>(create: (context) => FilterCubit()),
      ],
      child: BlocConsumer<HomeCubit, HomeCubitStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var homeCubit = HomeCubit.get(context);
          return SafeArea(
            child: Scaffold(
              body: (homeCubit.aboutModel == null ||
                      homeCubit.petsNeedsModel == null ||
                      homeCubit.firstSectionDataModel == null ||
                      infoData == null ||
                      homeCubit.findModel == null)
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AppBarAtAllScreens(),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 510,
                                  child: Stack(
                                    children: [
                                      const AppBarBackgroundColor(),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(50.0),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  width: 300,
                                                  child: Text(
                                                    homeCubit
                                                        .firstSectionDataModel!
                                                        .title,
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 40),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                SizedBox(
                                                  width: 300,
                                                  child: Text(
                                                    homeCubit
                                                        .firstSectionDataModel!
                                                        .body,
                                                    textAlign: TextAlign.start,
                                                    style: const TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                DefaultButtonHasTextAndArrow(
                                                  color: Colors.white,
                                                  text: 'Help them',
                                                  onPresses: () {},
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Spacer(),
                                          Stack(
                                            alignment:
                                                AlignmentDirectional.center,
                                            children: [
                                              const AppBarBackgroundColor(),
                                              const Image(
                                                  height: 300,
                                                  width: 300,
                                                  image: AssetImage(
                                                      'assets/images/ellipse.png')),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 200.0),
                                                child: Stack(
                                                  children: [
                                                    const Image(
                                                      image: AssetImage(
                                                          'assets/images/baby_dog.png'),
                                                    ),
                                                    Positioned(
                                                      top: 210,
                                                      bottom: 15,
                                                      right: 20,
                                                      child: Container(
                                                        color:
                                                            Colors.transparent,
                                                        height: 120,
                                                        width: 150,
                                                        child: Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 10,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      250),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 450,
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Positioned(
                                            top: 200,
                                            bottom: 15,
                                            left: 52,
                                            child: Container(
                                              color: Colors.transparent,
                                              height: 100,
                                              width: 200,
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 10,
                                                borderRadius:
                                                    BorderRadius.circular(250),
                                              ),
                                            ),
                                          ),
                                          Stack(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 80.0, left: 50),
                                                child: SizedBox(
                                                    width: 200,
                                                    height: 200,
                                                    child: Image.asset(
                                                        'assets/images/cat_d.png')),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10.0, left: 50),
                                                child: SizedBox(
                                                    width: 300,
                                                    height: 300,
                                                    child: Image.asset(
                                                        'assets/images/dog_with_flower.png')),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(100.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                homeCubit.aboutModel!.title,
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 40),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  homeCubit.aboutModel!.body,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  color: Colors.grey[200],
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 50),
                                  child: Column(
                                    children: [
                                      const Text(
                                        'Lets get this right ....',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Center(
                                        child: Text(
                                          'What kind of friend you looking for?',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          DefaultElevatedCardCategory(
                                            onPressed: () {
                                              defaultNavigatePush(
                                                  context,
                                                  const FilterScreen(
                                                    id: 1,
                                                  ));
                                            },
                                            kind: 'Dogs',
                                            image:
                                                'assets/images/icon_dog_at_category.png',
                                            onHover: (bool value) {
                                              homeCubit.changeColoredCardOne();
                                            },
                                            selected: homeCubit.coloredCarOne,
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          DefaultElevatedCardCategory(
                                            onPressed: () {
                                              defaultNavigatePush(
                                                  context,
                                                  const FilterScreen(
                                                    id: 2,
                                                  ));
                                            },
                                            kind: 'Cats',
                                            image:
                                                'assets/images/icon_cat_at_category.png',
                                            onHover: (bool value) {
                                              homeCubit.changeColoredCardTwo();
                                            },
                                            selected: homeCubit.coloredCarTwo,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(40.0),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        const Text(
                                          'Our friends who',
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const Text(
                                          'looking for a house',
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Stack(
                                          children: [
                                            SizedBox(
                                              height: 450,
                                              child: ListView.separated(
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                shrinkWrap: true,
                                                itemBuilder: (context, index) =>
                                                    DefaultWidgetCardHavePhotoAndButton(
                                                  colorCard: Colors.white,
                                                  textButton: 'Reade more',
                                                  color: Colors.white,
                                                  textName: homeCubit
                                                      .findModel![index].name,
                                                  image: homeCubit
                                                      .findModel![index]
                                                      .image[0]
                                                      .substring(
                                                          22,
                                                          homeCubit
                                                              .findModel![index]
                                                              .image[0]
                                                              .length),
                                                  textCaption: '',
                                                ),
                                                separatorBuilder:
                                                    (context, index) =>
                                                        const SizedBox(
                                                  width: 20,
                                                ),
                                                itemCount: 15,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 220.0),
                                              child: Align(
                                                alignment: AlignmentDirectional
                                                    .centerEnd,
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.arrow_forward_ios,
                                                    size: 30,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 220.0),
                                              child: Align(
                                                alignment: AlignmentDirectional
                                                    .centerStart,
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.arrow_back_ios,
                                                    size: 30,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        DefaultButtonHasTextAndArrow(
                                          color: const Color(0xff271A15),
                                          text: 'Show more',
                                          onPresses: () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  color: Colors.grey[200],
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 50),
                                  child: Column(
                                    children: [
                                      const Text(
                                        'How to take care of',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Text(
                                        'your friends?',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      Wrap(
                                        alignment: WrapAlignment.center,
                                        children: List.generate(
                                          homeCubit.petsNeedsModel!.length,
                                          (index) => Stack(
                                            alignment:
                                                AlignmentDirectional.center,
                                            children: [
                                              Stack(
                                                alignment:
                                                    AlignmentDirectional.center,
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 50.0),
                                                    child: Image(
                                                      color: Color(0xff271A15),
                                                      height: 250,
                                                      width: 250,
                                                      image: AssetImage(
                                                          'assets/images/ellipse.png'),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 100.0),
                                                    child: Text(
                                                      homeCubit
                                                          .petsNeedsModel![
                                                              index]
                                                          .title,
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 100.0),
                                                child: Image(
                                                  height: 100,
                                                  width: 100,
                                                  image: NetworkImage(homeCubit
                                                      .petsNeedsModel![index]
                                                      .imageUrl),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                LastCategoriesInTheEndOfScreen(
                                  infoData: infoData!,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
          );
        },
      ),
    );
  }
}
