import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

main() async {
  String username = 'dantec.c@hotmail.com';
  String password = '134679852Aa.3';

  var smtpServer = SmtpServer('smtp-mail.outlook.com', username: username, password: password);

  final message = Message()
    ..from = Address(username, username)
    ..recipients.add('dantecarvalhoCosta@gmail.com')
    ..subject = 'Test Dart Mailer :: 😀 :: ${DateTime.now()}'
    ..text = 'This is a plain text email.'
    ..html = "<h1>Test Dart Mailer</h1>\n<p>This is an HTML email.</p>";

  try {
    final sendReport = await send(message, smtpServer);
    print('Message sent: ' + sendReport.toString());
  } on MailerException catch (e) {
    print('Message not sent. \n${e.toString()}');
  }
}
