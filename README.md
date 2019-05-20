# Flutter Login  / Register MYSQl

A new Flutter project.

## Getting Started

1. copy folder `flutter_login` to `xampp/htdocs`
2. open `phpmyadmin` in your browser and import database `login_flutter.sql`
3. Cek your IPADDRESS, open `cmd` write `ipconfig` and press `enter`
4. change code in file `api.dart` to <br>
``class Api {
  static String url = "http://IPADDRESS/flutter_login/check.php";
  static String regis = "http://IPADDRESS/flutter_login/register.php";
}``
5. Ok, greate, happy hacking
