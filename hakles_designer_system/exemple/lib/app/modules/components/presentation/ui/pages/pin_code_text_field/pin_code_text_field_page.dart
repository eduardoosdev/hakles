import 'package:exemple/app/modules/components/data/models/dto/atribute_dto.dart';
import 'package:exemple/app/modules/components/presentation/ui/base/component_base_page.dart';
import 'package:flutter/material.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';

class PinCodeTextFieldPage extends StatefulWidget {
  const PinCodeTextFieldPage({Key? key}) : super(key: key);

  @override
  _PinCodeTextFieldPageState createState() => _PinCodeTextFieldPageState();
}

class _PinCodeTextFieldPageState extends ComponentBasePage {
  List<AtributeDto> listAtributs = [
    AtributeDto(
      type: 'bool',
      name: 'enabled',
      value: true,
    ),
    AtributeDto(
      type: 'int',
      name: 'length',
      value: 4,
    ),
    AtributeDto(
      type: 'bool',
      name: 'error',
      value: false,
      options: [false, true],
    ),
    AtributeDto(
      type: 'function',
      name: 'onChanged',
      value: '(String text) {}',
    ),
    AtributeDto(
      type: 'function',
      name: 'onCompleted',
      value: '(String text) {}',
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
      child: HakPinCodeTextField(
        enabled: getWhereAtribut(atributs(), 'enabled'),
        length: getWhereAtribut(atributs(), 'length'),
        error: getWhereAtribut(atributs(), 'error'),
        onChanged: (text) {},
        onCompleted: (text) {},
      ),
    );
  }

  @override
  String description() {
    return 'Os botões permitem que os usuários realizem ações e façam escolhas com um único toque.';
  }

  @override
  Widget instanceComponentWidget() {
    return HakPinCodeTextField(
      length: 4,
    );
  }

  @override
  String title() {
    return 'HakPinCodeTextField';
  }

  @override
  void onUpdateAtributs(List<AtributeDto> atributs) {
    setState(() {
      this.listAtributs = atributs;
    });
  }
}
