import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:spotter_panel/ui/common/app_colors.dart';
import 'package:spotter_panel/ui/common/ui_helpers.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 90.0,vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/svg/ic_logo.svg"),
                  InkWell(
                    onTap: (){

                    },
                    hoverColor: kcMediumGrey,
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: kcPrimaryColor, width: 2),
                        borderRadius: const BorderRadius.all(Radius.circular(6))
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                      child: const Text(
                        'Issues',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              verticalSpaceMedium,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 160.0,vertical: 16),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFF303136),
                                    border: boxBorder,
                                    borderRadius: const BorderRadius.all(Radius.circular(18))
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       Row(
                                         children: [
                                           SvgPicture.asset("assets/svg/ic_category.svg"),
                                           horizontalSpaceSmall,
                                           const Text(
                                             'kkiapay_pos',
                                             style: TextStyle(
                                                 fontSize: 28,
                                                 color: kcPrimaryColor,
                                                 fontWeight: FontWeight.w700
                                             ),
                                           ),
                                         ],
                                       ),

                                       SvgPicture.asset("assets/svg/ic_option.svg"),
                                     ],
                                   ),
                                    verticalSpaceSmall,
                                    const Text(
                                      'App short description',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        verticalSpaceMedium,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    border: boxBorder,
                                    borderRadius: const BorderRadius.all(Radius.circular(18))
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Total devices',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: kcGrey,
                                      ),
                                    ),
                                    verticalSpaceSmall,
                                    Text(
                                      '17,000',
                                      style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            horizontalSpaceLarge,
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    border: boxBorder,
                                    borderRadius: const BorderRadius.all(Radius.circular(18))
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Actif device',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: kcGrey,
                                      ),
                                    ),
                                    verticalSpaceSmall,
                                    Text(
                                      '1,200',
                                      style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            horizontalSpaceLarge,
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    border: boxBorder,
                                    borderRadius: const BorderRadius.all(Radius.circular(18))
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Logs size',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: kcGrey,
                                      ),
                                    ),
                                    verticalSpaceSmall,
                                    Text(
                                      '30,000',
                                      style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        verticalSpaceMedium,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: kcLightGrey, width: 0.5),
                                    borderRadius: const BorderRadius.all(Radius.circular(18))
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Allertes',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: kcGrey,
                                      ),
                                    ),
                                    verticalSpaceSmall,
                                    Text(
                                      '442',
                                      style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            horizontalSpaceLarge,
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    border: boxBorder,
                                    borderRadius: const BorderRadius.all(Radius.circular(18))
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Session duration Moy.',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: kcGrey,
                                      ),
                                    ),
                                    verticalSpaceSmall,
                                    Text(
                                      '3,700 s',
                                      style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            horizontalSpaceLarge,
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    border: boxBorder,
                                    borderRadius: const BorderRadius.all(Radius.circular(18))
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'App Health',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: kcGrey,
                                      ),
                                    ),
                                    verticalSpaceSmall,
                                    Text(
                                      '442',
                                      style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    verticalSpaceMassive,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                  border: boxBorder,
                                  borderRadius:
                                  const BorderRadius.horizontal(left: Radius.circular(10))
                              ),
                              padding: const
                              EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                              child: const TextField(
                                decoration: InputDecoration(
                                    icon: Icon( Icons.search),
                                    iconColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                      borderSide: BorderSide(color: Colors.transparent, width: 1.1),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                      borderSide: BorderSide(color: Colors.transparent, width: 1.1),
                                    ),
                                    /*InputBorder(
          borderSide: BorderSide(
              color: widget.underlineColor ?? Theme.of(context).primaryColor),
        ),*/
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: ((48 * 2) / 10) + 2),
                                    border: InputBorder.none,
                                    hintText: "Emeii, UserName, id, costumId",
                                    hintStyle: TextStyle(
                                        color: kcGrey,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w200),
                                    //widget.isFirstTf ? TextStyle(color: eeColorGreyTrois, fontSize: 14.0) : TextStyle(color: eeTextFieldBg, fontSize: 14.0),
                                    counterText: ""),
                              )
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            viewModel.find();
                          },
                          hoverColor: kcMediumGrey,
                          borderRadius: const BorderRadius.all(Radius.circular(6)),
                          child: Container(
                            decoration: BoxDecoration(
                                color: kcPrimaryColor ,
                                border: Border.all(color: kcPrimaryColor, width: 2),
                                borderRadius:
                                const BorderRadius.horizontal(right: Radius.circular(10))
                            ),
                            padding: const
                            EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                            child: const Text(
                              'Find',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: kcBackgroundColor,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    verticalSpaceMassive,
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
