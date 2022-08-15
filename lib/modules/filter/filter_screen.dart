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
      create: (context) => FilterCubit()
        ..getPetsById(id)
        ..getFilterData(id),
      child: BlocConsumer<FilterCubit, FilterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = FilterCubit.get(context);
          return (cubit.findBetsByIdModel == null || cubit.filters == null)
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
                                            items: cubit.filters!.breed,
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
                                            items: cubit.filters!.ages,
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
                                            items: cubit.filters!.size,
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
                                            items: cubit.filters!.goodWith,
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
                                            items: const ['male', 'female'],
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
                                            items: cubit.filters!.colors,
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
                                            items: cubit.filters!.hairLength,
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
                                            items: cubit.filters!.behaviour,
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
