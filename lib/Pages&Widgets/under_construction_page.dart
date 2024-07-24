import 'package:flutter/material.dart';

class UnderConstructionPage extends StatelessWidget {
  const UnderConstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://s3-alpha-sig.figma.com/img/a472/fe9d/190f5a87261d2c5b4de2aef539b92422?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=EB0VH4f93LFP9y43ZShRpIEs5fRws29NzzcHDGAYEQnCrOlFJ0g6nckRh5dvyPd3qRlbeZWIbvFurPEHlIx3QTuT43CO6fF72IifCPyCfqGc~WRUPHNh3Kb0oA0HlX9smIELHq0nb20VhEJ7WeShbjFVpzB7WDFUIaXrebsAQvEUJ6JuZENYSSGKrYy-OwxO1a1FT7bAfaPMUZzM9pKBrCnChlaA5HGd1VpW6OuJiMp9Wum-bDeK7KNMUKyKYu5okRwGpWqIfJ35eztdp5AyYhJlWDrmtBP4XgOQsKNQTZZGRME~38D0Cfx35cK-c2~FD5QOF-qby4HOQjAMeTWWfg__",
      fit: BoxFit.fitWidth,
    );
  }
}
