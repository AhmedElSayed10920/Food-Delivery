import 'package:deliveryapp/core/app_assets/app_images.dart';
import 'package:deliveryapp/core/app_assets/app_strings.dart';
import 'package:deliveryapp/features/onboarding_feature/model/onboarding_model.dart';

List<OnboardingModel> onBoardingData = [
  OnboardingModel(
      onBoardingImage: AppAssetImages.onBoardingImageOne,
      onBoardingTitle: AppStrings.onBoardingTitleOne,
      onBoardingCaption: AppStrings.onBoardingCaptionOne),
  OnboardingModel(
      onBoardingImage: AppAssetImages.onBoardingImageTwo,
      onBoardingTitle: AppStrings.onBoardingTitleTwo,
      onBoardingCaption: AppStrings.onBoardingCaptionTwo),
  OnboardingModel(
      onBoardingImage: AppAssetImages.onBoardingImageThree,
      onBoardingTitle: AppStrings.onBoardingTitleThree,
      onBoardingCaption: AppStrings.onBoardingCaptionThree),
];
