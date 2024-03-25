import 'package:flutter/material.dart';
import 'drawer.dart';
import 'email_card.dart';
import 'top_bar.dart';
import '../schema/email.dart';

class EmailListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => EmailListState();
}

class EmailListState extends State<EmailListScreen> {
  List<Email> emails = [];

  @override
  void initState() {
    super.initState();
    createEmails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: GmailTopBar()),
        drawer: Drawer(child: GmailDrawer()),
        body: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: ListView.separated(
            itemCount: emails.length,
            itemBuilder: (context, index) {
              return EmailCard(email: emails[index]);
            },
            separatorBuilder: (context, index) => const Divider(
              color: Colors.transparent,
              height: 10,
            ),
          ),
        ));
  }

  createEmails() {
    setState(() {
      emails.clear();
      emails.addAll([
        Email(
          subject: "Нагадування про зустріч",
          body: "Не забудьте про зустріч завтра о 10:00.",
          date: DateTime.now().add(Duration(days: 1)),
          icon: Icons.event_note,
        ),
        Email(
          subject: "Спеціальна пропозиція!",
          body: "Перевірте наші останні спеціальні пропозиції до кінця місяця.",
          date: DateTime.now().subtract(Duration(days: 3)),
          icon: Icons.local_offer,
        ),
        Email(
          subject: "Оновлення системи",
          body: "Планове оновлення системи відбудеться цієї ночі.",
          date: DateTime.now().subtract(Duration(days: 5)),
          icon: Icons.system_update,
        ),
        Email(
          subject: "Привітання з днем народження",
          body: "Вітаємо вас з днем народження!",
          date: DateTime.now().subtract(Duration(days: 10)),
          icon: Icons.cake,
        ),
        Email(
          subject: "Звіт за минулий місяць",
          body: "Ознайомтеся з детальним звітом за минулий місяць.",
          date: DateTime.now().subtract(Duration(days: 2)),
          icon: Icons.pie_chart,
        ),
        Email(
          subject: "Ваше замовлення було доставлено",
          body:
              "Дякуємо, що скористалися нашими послугами. Ваше замовлення #12345 було доставлено.",
          date: DateTime.now().subtract(Duration(days: 4)),
          icon: Icons.local_shipping,
        ),
        Email(
          subject: "Оновлення безпеки",
          body:
              "Будь ласка, оновіть свій пароль для підвищення безпеки вашого аккаунта.",
          date: DateTime.now().subtract(Duration(days: 6)),
          icon: Icons.security,
        ),
        Email(
          subject: "Запрошення на вебінар",
          body: "Не пропустіть наш наступний вебінар про нові технології.",
          date: DateTime.now().subtract(Duration(days: 8)),
          icon: Icons.web,
        ),
        Email(
          subject: "Опитування про задоволеність сервісом",
          body:
              "Будь ласка, заповніть коротке опитування про якість нашого сервісу.",
          date: DateTime.now().subtract(Duration(days: 10)),
          icon: Icons.rate_review,
        ),
        Email(
          subject: "Новини компанії",
          body: "Читайте останні новини та оновлення нашої компанії.",
          date: DateTime.now().subtract(Duration(days: 12)),
          icon: Icons.new_releases,
        ),
        Email(
          subject: "Повідомлення про оплату",
          body: "Ваш останній платіж було успішно оброблено.",
          date: DateTime.now().subtract(Duration(days: 14)),
          icon: Icons.payment,
        ),
        Email(
          subject: "Зміни в умовах надання послуг",
          body:
              "Ознайомтеся з важливими змінами в умовах надання наших послуг.",
          date: DateTime.now().subtract(Duration(days: 20)),
          icon: Icons.description,
        ),
        Email(
          subject: "Знижки на літню колекцію",
          body: "Не пропустіть наші спеціальні знижки на всю літню колекцію!",
          date: DateTime.now().subtract(Duration(days: 32)),
          icon: Icons.local_offer,
        ),
        Email(
          subject: "Нагадування про зустріч",
          body: "Не забудьте про нашу зустріч завтра. Чекаємо на вас!",
          date: DateTime.now().subtract(Duration(days: 700)),
          icon: Icons.event_note,
        ),
      ]);
    });
  }
}
