abstract class AppStates {}

class InitialAppState extends AppStates {}

class GetCurrentLocationsLoadingState extends AppStates {}

class GetCurrentLocationsSuccessState extends AppStates {}

class GetCurrentLocationsErrorState extends AppStates {
  final String error;

  GetCurrentLocationsErrorState(this.error);
}
