import '../schema/email.dart';
import 'package:flutter/material.dart';

class EmailRepository {
  List<Email> getAll() {
    return [
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
        body: "Ознайомтеся з важливими змінами в умовах надання наших послуг.",
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
      Email(
        subject: "Підтвердження електронної адреси",
        body:
            "Будь ласка, підтвердіть свою електронну адресу, перейшовши за посиланням.",
        date: DateTime.now().subtract(Duration(days: 1)),
        icon: Icons.email,
      ),
      Email(
        subject: "Запрошення до спільноти",
        body: "Ви отримали запрошення до участі в ексклюзивній спільноті.",
        date: DateTime.now().subtract(Duration(days: 7)),
        icon: Icons.group,
      ),
      Email(
        subject: "Оновлення програмного забезпечення",
        body:
            "Доступна нова версія програмного забезпечення. Рекомендуємо оновити.",
        date: DateTime.now().subtract(Duration(days: 15)),
        icon: Icons.update,
      ),
      Email(
        subject: "Подяка за відгук",
        body: "Дякуємо за ваш відгук! Ваша думка важлива для нас.",
        date: DateTime.now().subtract(Duration(days: 3)),
        icon: Icons.thumb_up,
      ),
      Email(
        subject: "Зміна часу зустрічі",
        body:
            "Час нашої зустрічі було змінено. Будь ласка, перевірте новий графік.",
        date: DateTime.now().add(Duration(days: 2)),
        icon: Icons.schedule,
      ),
      Email(
        subject: "Ваша підписка майже закінчується",
        body:
            "Не забудьте продовжити підписку, щоб і надалі користуватися всіма перевагами.",
        date: DateTime.now().subtract(Duration(days: 25)),
        icon: Icons.access_alarm,
      ),
      Email(
        subject: "Новий курс доступний",
        body: "Ознайомтеся з нашим новим курсом та покращуйте свої навички.",
        date: DateTime.now().subtract(Duration(days: 30)),
        icon: Icons.school,
      ),
      Email(
        subject: "Запрошення на ювілейну вечірку",
        body: "Ми раді запросити вас на ювілейну вечірку нашої компанії.",
        date: DateTime.now().subtract(Duration(days: 45)),
        icon: Icons.cake,
      ),
      Email(
        subject: "Важливе оголошення",
        body:
            "Будь ласка, ознайомтеся з важливим оголошенням від нашої команди.",
        date: DateTime.now().subtract(Duration(days: 5)),
        icon: Icons.announcement,
      ),
      Email(
        subject: "Пропозиція лімітованого видання",
        body:
            "Не пропустіть унікальну пропозицію лімітованого видання продукту.",
        date: DateTime.now().subtract(Duration(days: 17)),
        icon: Icons.star_border,
      ),
    ];
  }
}
