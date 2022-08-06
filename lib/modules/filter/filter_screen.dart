import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon/modules/filter/filter_cubit/filter_cubit.dart';
import 'package:hackathon/modules/filter/filter_cubit/filter_states.dart';

import '../../shared/components/components.dart';

class FilterScreen extends StatelessWidget {
  final int id;

  const FilterScreen({required this.id, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FilterCubit>(
      create: (context) => FilterCubit()..getPetsById(id)..getFilterData(id),
      child: BlocConsumer<FilterCubit, FilterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = FilterCubit.get(context);
          return (cubit.findBetsByIdModel == null)
              ? const Center(child: CircularProgressIndicator())
              : SafeArea(
                  child: Scaffold(
                    body: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AppBarAtAllScreens(),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          defaultText('Breed'),
                                          DefaultDropDownButton(
                                            selectedValue: cubit
                                                .findBetsByIdModel![0].breed,
                                            text: cubit
                                                .findBetsByIdModel![0].breed,
                                            validateText: 'invalid',
                                            items: const [
                                              "Aegean",
                                              "American Bobtail",
                                              "Australian Mist",
                                              "Burmilla",
                                              "Chartreux",
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          defaultText('Age'),
                                          DefaultDropDownButton(
                                            selectedValue: cubit
                                                .findBetsByIdModel![0].year
                                                .toString(),
                                            text: '',
                                            validateText: 'invalid',
                                            items: const [
                                              "0-2 months",
                                              "3-4 months",
                                              "5-6 months",
                                              "7-8 months",
                                              "9-10 months",
                                              "10-12 months",
                                              "1-2 years",
                                              "3-5 years",
                                              "6-8 years",
                                              "9+ years",
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          defaultText('Size'),
                                          DefaultDropDownButton(
                                            text: '',
                                            validateText: 'invalid',
                                            items: const ['', '', ''],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          defaultText('Good With'),
                                          DefaultDropDownButton(
                                            text: '',
                                            validateText: 'invalid',
                                            items: const ['', '', ''],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          defaultText('Gender'),
                                          DefaultDropDownButton(
                                            text: '',
                                            validateText: 'invalid',
                                            items: const ['', '', ''],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          defaultText('Color'),
                                          DefaultDropDownButton(
                                            text: '',
                                            validateText: 'invalid',
                                            items: const ['', '', ''],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          defaultText('Hear Length'),
                                          DefaultDropDownButton(
                                            text: '',
                                            validateText: 'invalid',
                                            items: const ['', '', ''],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          defaultText('Car & Behaviour'),
                                          DefaultDropDownButton(
                                            text: '',
                                            validateText: 'invalid',
                                            items: const ['', '', ''],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Wrap(
                                  alignment: WrapAlignment.center,
                                  children: List.generate(
                                    5,
                                    (index) =>
                                        const DefaultWidgetCardHavePhotoAndButton2(
                                      colorCard: Colors.white30,
                                      textButton: 'Reade more',
                                      color: Colors.white,
                                      textName: 'Eisa',
                                      image: 'assets/images/cat_d.png',
                                      textCaption: 'by Rewan',
                                    ),
                                  ),
                                ),
                                // const LastCategoriesInTheEndOfScreen(),
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

  Widget defaultText(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 15),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
