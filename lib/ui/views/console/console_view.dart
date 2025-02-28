import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:spotter_panel/ui/common/app_colors.dart';
import 'package:spotter_panel/ui/common/ui_helpers.dart';

import 'console_viewmodel.dart';

class ConsoleView extends StackedView<ConsoleViewModel> {
  const ConsoleView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ConsoleViewModel viewModel,
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 160.0,vertical: 16),
                  child: Column(
                    children: [
                      verticalSpaceMedium,
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
                                            '21309402378389',
                                            style: TextStyle(
                                                fontSize: 28,
                                                color: kcPrimaryColor,
                                                fontWeight: FontWeight.w700
                                            ),
                                          ),
                                        ],
                                      ),

                                      InkWell(
                                        onTap: (){

                                        },
                                        hoverColor: kcMediumGrey,
                                        borderRadius: const BorderRadius.all(Radius.circular(6)),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: const BorderRadius.all(Radius.circular(6))
                                          ),
                                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                                          child: const Text(
                                            'Observe',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  verticalSpaceSmall,
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Model : Samsung A10',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                          verticalSpaceTiny,
                                          Text(
                                            'Version : ',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                          verticalSpaceTiny,
                                          Text(
                                            'Model : Samsung A10',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      horizontalSpaceLarge,
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Last seen : Samsung A10 ',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                          verticalSpaceTiny,
                                          Text(
                                            'Last seen : Samsung A10 ',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                          verticalSpaceTiny,
                                          Text(
                                            'Model : Samsung A10 ',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      horizontalSpaceLarge,
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Last seen : Samsung A10 ',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                          verticalSpaceTiny,
                                          Text(
                                            'Last seen : Samsung A10 ',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                          verticalSpaceTiny,
                                          Text(
                                            'Model : Samsung A10 ',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      verticalSpaceMedium,
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xFF1B1B1B),
                                    borderRadius: const BorderRadius.all(Radius.circular(18))
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    verticalSpaceTiny,
                                    Expanded(
                                      child: Text(
                                        "Launching lib/main.dart on sdk gphone64 arm64 in debug mode..."
                                            "\nRunning Gradle task 'assembleDebug'..."
                                            "\nYou are applying Flutter's app_plugin_loader Gradle plugin imperatively using the apply script method, which is deprecated and will be removed in a future release. Migrate to applying Gradle plugins with the declarative plugins block: "
                                            "\nhttps://flutter.dev/to/flutter-gradle-plugin-apply"
                                            "\nD/FlutterGeolocator( 8012): Attaching Geolocator to activity"
                                            "\nD/FlutterGeolocator( 8012): Geolocator foreground service connected"
                                            "\nD/FlutterGeolocator( 8012): Flutter engine connected. Connected"
                                            "\nDebug service listening on ws://127.0.0.1:52922/brI8gWIbMCk=/ws"
                                            "\nSyncing files to device sdk gphone64 arm64...",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    verticalSpaceTiny,
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      verticalSpaceMedium,
                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  @override
  ConsoleViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ConsoleViewModel();
}
