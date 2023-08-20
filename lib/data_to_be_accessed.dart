import 'package:ghars/model/user_model.dart';
import 'package:ghars/widgets/welcome_page_widgets/login_sheet.dart';

List listOfPlants = [];
List searchResult = [];
List cartItemList = [];
List indoorPlants = [];
List outdoorPlants = [];

bool isIndoor = false;
bool isOutdoor = false;

//Users cart
List mjdCart = [];
List nasserCart = [];

List<User> registerdUsers = [
  User(
    name: "Mjd",
    email: "mjd@gmail.com",
    password: "123",
    shoppingList: mjdCart,
  ),
  User(
    name: "Nasser",
    email: "nasser@gmail.com",
    password: "321",
    shoppingList: nasserCart,
  )
];

String? userNmae; //for checking the user name match enterd one
String? userEmailText;
bool? isUserAccount = false; //For returning info on cart page and user page

userExist(String email, String password) {
  if (email.isEmpty || password.isEmpty) {
    isUserAccount = false;
    return false;
  } else {
    for (var element in registerdUsers) {
      if (element.email == email) {
        if (element.password == password) {
          userNmae = element.name;
          userEmailText = element.email;
          isUserAccount = true;
          return true;
        }
      }
    }
  }

  return false;
}

//Clearing fields finction
clearFileds() {
  userEmail.clear();
  userPassword.clear();
  msg = "";
}
