abstract class MainLoginStates {}

class MainLoginInitialState extends MainLoginStates {}

//* login
class UserLoginLoadingState extends MainLoginStates {}

class UserLoginSuccessState extends MainLoginStates {}

class UserLoginErrorState extends MainLoginStates {}
