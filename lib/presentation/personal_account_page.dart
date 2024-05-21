import 'package:flutter/material.dart';

class PersonalAccountScreen extends StatelessWidget {
  const PersonalAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Color.fromRGBO(6, 26, 35, 1),
            floating: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              background: Padding(
                padding: EdgeInsets.only(top: 48, bottom: 12),
                child: Column(
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: 64,
                      color: Colors.white,
                    ),
                    Text(
                      'Абралава Георгий',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    Text(
                      'Ученик 11а класса',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      'Средняя успеваемость: 4.4',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: const Color.fromRGBO(6, 26, 35, 1),
              height: 20,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 20,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(251, 252, 254, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                const Padding(
                    padding: EdgeInsets.only(left: 24, right: 24),
                    child: Text(
                      'Личный кабинет',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w800,
                          fontSize: 20),
                    )),
                Theme(
                  data: ThemeData(
                    dividerColor: Colors.transparent,
                  ),
                  child: const ExpansionTile(
                    tilePadding: EdgeInsets.only(left: 24, right: 24),
                    title: Text(
                      'Успеваемость',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    children: [
                      PerformanceWidget(
                        subject: 'Русский язык',
                        performance: '4.7',
                      ),
                      PerformanceWidget(
                        subject: 'Литература',
                        performance: '4.0',
                      ),
                      PerformanceWidget(
                        subject: 'Математика',
                        performance: '3.3',
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: ThemeData(dividerColor: Colors.transparent),
                  child: const ExpansionTile(
                    tilePadding: EdgeInsets.only(left: 24, right: 24),
                    title: Text(
                      'Уведомления',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: 24, top: 4, right: 12),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Успеваемость',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16)),
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 4)),
                                    Text(
                                      'Получайте уведомления, когда \nвам ставят оценку',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                ToggleButton(),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 24, top: 12, right: 12),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Новости',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16)),
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 4)),
                                    Text(
                                      'Получайте уведомления о всех \nновостях школы',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                ToggleButton(),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Theme(
                  data: ThemeData(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    tilePadding: const EdgeInsets.only(left: 24, right: 24),
                    title: const Text(
                      'Аккаунт',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 24, right: 24, bottom: 24),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Почта',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                ),
                                Text(
                                  'georgijabralava@gmail.com',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, bottom: 8),
                                child: Container(
                                  height: 1,
                                  color: const Color.fromRGBO(217, 215, 215, 1),
                                )),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Телефон',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                ),
                                Text(
                                  '+79010556760',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, bottom: 8),
                                child: Container(
                                  height: 1,
                                  color: const Color.fromRGBO(217, 215, 215, 1),
                                )),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Пароль',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                ),
                                Text(
                                  'Изменить пароль',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                      decoration: TextDecoration.underline),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PerformanceWidget extends StatelessWidget {
  final String subject;
  final String performance;
  const PerformanceWidget(
      {super.key, required this.subject, required this.performance});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: SizedBox(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Row(
            children: [
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black12),
                child: const Icon(Icons.edit_document),
              ),
              const Padding(padding: EdgeInsets.only(right: 16)),
              Text(
                subject,
                style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              const Spacer(),
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(64),
                  color: Colors.black12,
                ),
                child: Center(
                    child: Text(
                  performance,
                  style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool isToggleOn = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isToggleOn = !isToggleOn;
        });
      },
      icon: isToggleOn
          ? const Icon(
              Icons.toggle_on,
              size: 36,
              color: Color.fromRGBO(31, 95, 91, 1),
            )
          : const Icon(
              Icons.toggle_off,
              size: 36,
            ),
    );
  }
}
