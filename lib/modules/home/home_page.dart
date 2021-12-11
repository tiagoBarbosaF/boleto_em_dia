// ignore_for_file: avoid_print

import 'package:boleto_em_dia/modules/home/home_controller.dart';
import 'package:boleto_em_dia/shared/themes/app_colors.dart';
import 'package:boleto_em_dia/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  final pages = [
    Container(color: Colors.blue),
    Container(color: Colors.red),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double sizeAppBar = size.height * 0.2;
    double sizeBottonNavigator = size.height * 0.1;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(sizeAppBar),
        child: Container(
          height: sizeAppBar,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(TextSpan(
                text: 'Olá, ',
                style: AppTextStyles.titleListTileRegular,
                children: [
                  TextSpan(
                      text: 'Tiago', style: AppTextStyles.titleListTileBold)
                ],
              )),
              subtitle: Text(
                'Mantenha suas contas em dia!',
                style: AppTextStyles.captionShape,
              ),
              trailing: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
        ),
      ),
      body: pages[controller.currentPage],
      bottomNavigationBar: SizedBox(
        height: sizeBottonNavigator,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                controller.setPage(0);
                setState(() {});
              },
              icon: const Icon(
                Icons.home_outlined,
                color: AppColors.primary,
              ),
            ),
            GestureDetector(
              onTap: () {
                print('CLICOU NO BOTTOMBAR');
              },
              child: Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_box_outlined,
                    color: AppColors.background,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                controller.setPage(1);
                setState(() {});
              },
              icon: const Icon(
                Icons.article,
                color: AppColors.body,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
