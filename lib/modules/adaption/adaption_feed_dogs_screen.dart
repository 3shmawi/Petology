

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../layout/home_cubit/main_cubit.dart';
import '../../layout/home_cubit/main_states.dart';
import '../../shared/components/components.dart';

class FeedDogsScreen extends StatelessWidget {
  const FeedDogsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> text = [
      'As a general rule, puppies and young dogs burn more calories, so they need a greater quantity of food that is higher in protein and fat. Older, less active dogs require fewer calories to remain healthy.',
      'Richard H. Pitcairn, DVM, PhD, author of Dr. Pitcairn’s Complete Guide to Natural Health for Dogs and Cats, believes the most reliable approach is to feed what seems to be a reasonable amount and monitor his body weight.',
      '“You should be able to feel your pet’s ribs easily as you slide your hand over his sides,” Pitcairn says. “If you can’t, he’s probably too heavy, so begin to feed a smaller quantity.”',
      'If you’re using a commercial pet food, beware of the “feeding guidelines” on the bag or box. It lists different weights and the corresponding amount of food to feed your dog to maintain that weight, and should be used only as a rough guideline.',
      'Many dogs are overweight because their families closely followed the directions on the label, which often indicates portion sizes that are too large. After all, the sooner the bag is empty, the sooner you will need to buy more food.',
      'Starting at the low end of the suggested guidelines and then monitoring your dog for hunger and body condition is a good way to proceed.',
      'Different Portions for Different Pooches',
      'Though it may sound counterintuitive, as a general rule, large breed dogs require less food and small breed dogs require more food when expressed on a volume of food per pound of body weight. The food requirements of individual dogs vary according to their health, level of activity, and age.',
      'Here are some guidelines for portion sizes at different stages of your dog’s life:',
      'Puppies: Puppies are typically introduced to solid food at three to four weeks of age and are completely weaned from their mother’s milk by eight weeks.',
      'Puppies require a diet that is higher in protein and other nutrients to support normal growth and development. If you are feeding commercial pet food to your adopted puppy, select a brand that is specially formulated for puppies.',
      'Young puppies should be fed at least three times a day — morning, noon, and early evening — until their food requirements per pound of body weight begin to level off as they mature.',
      'By the time the puppy is five or six months of age, his feeding schedule can be reduced to twice a day.',
      'If you have a finicky puppy, you can add some warm water to dry food to encourage him to eat it. Cow’s milk can act as a laxative and cause digestive problems for some puppies and adult dogs, so avoid giving this to your pup or only give very small amounts. If your puppy doesn’t eat all his food within an hour, discard the uneaten portion.',
      'The amount of food you feed your puppy will vary depending upon his size, activity, metabolism, and environment. Feeding too much can not only lead to a pudgy pup, but can also cause bone abnormalities and other health issues.',
      'If your puppy appears to be gaining too much weight, gradually decrease his food intake, but if his ribs are showing, increase his portions. If you are unsure about his proper weight or appearance, talk to your vet for guidance.',
      'Adults: When the average dog is one year old, he has reached full maturity and enters a “maintenance period.” This means that his nutritional requirements will stay about the same during his young adult life, assuming he is not ill or engaging in extreme physical exercise.',
      'His weight should remain stable and his body should be well-proportioned — he should have an observable waist and you should be able to feel his ribs with your fingertips, beneath a thin layer of fat.',
      'If you are feeding your adopted adult dog a commercial pet food, select one that is specially formulated for adult dogs.',
      'As with humans, a dog’s appetite may vary from day to day. This is not cause for alarm unless his loss of appetite persists for several days or he shows obvious signs of weight loss or illness. However, having no desire to eat can be the first sign of many illnesses, so monitor your dog’s food intake carefully.',
      'You know your dog best, so if something seems amiss, don’t hesitate to take him to his vet.',
      'Active adults: Moderate exercise is essential for all dogs and helps them remain fit and trim throughout their lifetime. But some dogs, like some humans, will regularly do more intense exercising.',
      'If your adopted dog is particularly active (for instance, if he jogs or runs with you regularly, or is involved in sporting activities) his energy needs will be greater than those of his more sedentary counterparts.',
      'Be aware, though, when a typically active dog is less active (for instance, during the cold winter months or when he suffers an injury, such as a sprain or muscle pull), his food requirements decrease. In these instances, experts recommend gradually changing to a lower energy, less nutrient-dense dog food.',
      'Very active dogs should not be fed immediately before or immediately after a strenuous workout. This can lead to digestion problems or discomfort (such as vomiting or loose stools) and may increase the risk of gastric bloat, a painful and often life-threatening condition caused by a twisting of the stomach.',
      'Although a small meal can be provided in the morning, hard-working dogs should receive the bulk of their daily calories one hour or more following their last exercise session each day. You can also feed your dog small snacks or treats during periods of increased activity to prevent hunger and fatigue. Allow him to rest intermittently and make sure he has access to fresh water at all times.',
      'Seniors: As with humans, the dietary requirements of dogs will change as they age. Elderly dogs have reduced energy requirements and therefore shouldn’t consume the same quantity of food as they did when they were younger.',
      'If you’re feeding your adopted senior dog commercial pet food, look for brands that offer reduced calories while still including all the necessary nutrients.',
      'Senior dogs, like all dogs, should be fed according to their overall health and level of activity. A less active dog can quickly gain weight if you’re not careful.',
      'Richard H. Pitcairn, DVM, PhD, author of Dr. Pitcairn’s Complete Guide to Natural Health for Dogs and Cats, believes the most reliable approach is to feed what seems to be a reasonable amount and monitor his body weight.',
    ];
    return BlocConsumer<HomeCubit, HomeCubitStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return SafeArea(
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
                        SizedBox(
                          height: 250,
                          child: Stack(
                            alignment: AlignmentDirectional.bottomCenter,
                            children: const [
                              AppBarBackgroundColor(),
                              Image(
                                  height: 180,
                                  width: 180,
                                  image: AssetImage('assets/images/plat.png')),
                              Padding(
                                padding: EdgeInsets.only(bottom: 80.0),
                                child: Image(
                                    height: 180,
                                    width: 350,
                                    image:
                                        AssetImage('assets/images/food.png')),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(60.0),
                          child: Text(
                            '{cubit.howToFeedModel.title}',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(60.0),
                          child: Text(
                            '{cubit.howToFeedModel.body}',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                     //   const LastCategoriesInTheEndOfScreen(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
