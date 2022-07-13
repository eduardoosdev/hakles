import 'package:exemple/app/modules/components/data/models/dto/atribute_dto.dart';
import 'package:exemple/app/modules/components/presentation/ui/base/component_base_page.dart';
import 'package:flutter/material.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({Key? key}) : super(key: key);

  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends ComponentBasePage {
  List<AtributeDto> listAtributs = [
    AtributeDto(
      type: 'List<TextInputFormatter>?',
      name: 'inputFormatters',
    ),
    AtributeDto(
      type: 'String',
      name: 'errorText',
      value: null,
      options: [null, '', 'message error'],
    ),

    AtributeDto(
      type: 'bool',
      name: 'obscureText',
      value: false,
    ),
    AtributeDto(
      type: 'TextInputType',
      name: 'keyboardType',
      value: TextInputType.text,
      options: TextInputType.values,
    ),
    AtributeDto(
      type: 'bool',
      name: 'enabled',
      value: true,
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
      child: HakTextField(
        inputFormatters: [],
        labelText: 'labelText',
        keyboardType: getWhereAtribut(atributs(), 'keyboardType'),
        enabled: getWhereAtribut(atributs(), 'enabled'),
        errorText: getWhereAtribut(atributs(), 'errorText'),
      ),
    );
  }

  @override
  String description() {
    return 'Os botões permitem que os usuários realizem ações e façam escolhas com um único toque.';
  }

  @override
  Widget instanceComponentWidget() {
    return HakTextField();
  }

  @override
  String title() {
    return 'HakTextField';
  }

  @override
  void onUpdateAtributs(List<AtributeDto> atributs) {
    setState(() {
      this.listAtributs = atributs;
    });
  }
}
