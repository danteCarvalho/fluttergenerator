

import 'package:dartutils/dartutils.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

import 'config/config.dart';

Message buildMessage(String msg, String to, String subject) {
  return Message()
    ..from = Address(config.email, config.email)
    ..recipients.add(to)
    ..subject = subject
    ..text = msg
    ..html = "<h1>$msg</p>";
}

enviarEmail(Message message) async {
  String email = config.email;
  String emailUsername = config.emailUsername;
  String password = decryptString(config.emailPassword);
  if (config.emailServer == "microsoft") {
    var smtpServer = hotmail(email, password);
    await send(message, smtpServer);
  } else if (config.emailServer == "google") {
    var smtpServer = gmail(email, password);
    await send(message, smtpServer);
  } else if (config.emailServer == "amazon") {
    var smtpServer = SmtpServer(
      "email-smtp.us-east-1.amazonaws.com",
      port: 587,
      username: emailUsername,
      password: password,
      ssl: false, // Usar STARTTLS na porta 587
      allowInsecure: false,
    );
    await send(message, smtpServer);
  }
}