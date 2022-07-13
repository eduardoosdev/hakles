import 'package:exemple/app/modules/components/data/models/dto/atribute_dto.dart';
import 'package:exemple/app/modules/components/presentation/ui/base/component_base_page.dart';
import 'package:flutter/material.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends ComponentBasePage {
  List<AtributeDto> listAtributs = [
    AtributeDto(
      type: 'String',
      name: 'title',
      value: 'Button',
    ),
    AtributeDto(
      type: 'function',
      name: 'onPressed',
      value: '() {}',
    ),
    AtributeDto(
      type: 'HakButtonType',
      name: 'type',
      value: HakButtonType.elevated,
      options: HakButtonType.values,
    ),
    AtributeDto(
      type: 'bool',
      name: 'enabled',
      value: true,
      options: [true, false],
    ),
    AtributeDto(
      type: 'bool',
      name: 'loading',
      value: false,
      options: [true, false],
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
      child: HakButton(
        onPressed: () {},
        text: getWhereAtribut(atributs(), 'title'),
        enabled: getWhereAtribut(atributs(), 'enabled'),
        type: getWhereAtribut(atributs(), 'type'),
        loading: getWhereAtribut(atributs(), 'loading'),
      ),
    );
  }

  @override
  String description() {
    return 'Os botões permitem que os usuários realizem ações e façam escolhas com um único toque.';
  }

  @override
  Widget instanceComponentWidget() {
    return HakButton();
  }

  @override
  String title() {
    return 'HakButton';
  }

  @override
  void onUpdateAtributs(List<AtributeDto> atributs) {
    setState(() {
      this.listAtributs = atributs;
    });
  }
}
