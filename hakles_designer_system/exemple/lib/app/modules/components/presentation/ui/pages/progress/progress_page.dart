import 'package:exemple/app/modules/components/data/models/dto/atribute_dto.dart';
import 'package:exemple/app/modules/components/presentation/ui/base/component_base_page.dart';
import 'package:flutter/material.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  _ProgressPageState createState() => _ProgressPageState();
}

class _ProgressPageState extends ComponentBasePage {
  List<AtributeDto> listAtributs = [
    AtributeDto(
      type: 'bool',
      name: 'visible',
      value: true,
      options: [true, false],
    ),
    AtributeDto(
      type: 'double',
      name: 'size',
      value: 20,
      options: [5, 10, 20, 40, 60, 100],
    ),
  ];

  @override
  List<AtributeDto> atributs() {
    return listAtributs;
  }

  @override
  Widget buildComponentWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: HakProgress(
        visible: getWhereAtribut(atributs(), 'visible'),
        size: getWhereAtribut(atributs(), 'size'),

      ),
    );
  }

  @override
  String description() {
    return 'Os botões permitem que os usuários realizem ações e façam escolhas com um único toque.';
  }

  @override
  Widget instanceComponentWidget() {
    return HakProgress();
  }

  @override
  String title() {
    return 'HakProgress';
  }

  @override
  void onUpdateAtributs(List<AtributeDto> atributs) {
    setState(() {
      this.listAtributs = atributs;
    });
  }
}
