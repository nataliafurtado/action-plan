import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:pa/global_acess.dart';
import 'package:provider/provider.dart';

import '../../../assets/style.dart';
import '../../../widgets/button.dart';
import '../landing_page_controller.dart';
import 'image_text_widget.dart';

class Configurations2 extends StatelessWidget {
  final double totalSizeOfAllWidgets = 650;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    LandingPageController controllerLandingPAge =
        Provider.of<LandingPageController>(context, listen: false);
    GlobalAccess controllerGlobalAcess =
        Provider.of<GlobalAccess>(context, listen: false);
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 120),

            ImageTextWidget(
              text: "1. Criar uma planilha vazia no google drive",
              image: 'lib/assets/images/page1.png',
            ),

            ImageTextWidget(
              text: "2. Ir na parte de <> Editor de Script",
              image: 'lib/assets/images/page2.png',
            ),

            ImageTextWidget(
              text: "3. Apagar o scrip inicial padrão",
              image: 'lib/assets/images/page3.png',
            ),

            //
            ImageTextWidget(
              text: "4. Colar o script fornecido abaixo",
              image: 'lib/assets/images/page4.png',
            ),

            Container(height: 10),
            Container(
              padding: EdgeInsets.all(24),
              child: Button("Copiar script", () {
                controllerLandingPAge.nextPage();
              }),
            ),
            Text(
              "* Não esqueça de salvar depois de colar",
              style: Style.bold.copyWith(fontSize: 18),
            ),
            ImageTextWidget(
              text: "5. Em seguida aperte em - Nova implantação",
              image: 'lib/assets/images/page5.png',
            ),
            ImageTextWidget(
              text: "6. Em seguida aperte em - App da Web",
              image: 'lib/assets/images/page6.png',
            ),

            ImageTextWidget(
              text: "6. Em seguida aperte em - Implantar",
              image: 'lib/assets/images/page7.png',
            ),

            ImageTextWidget(
              text: "7. Em seguida aperte em -Avançado",
              image: 'lib/assets/images/page8.png',
            ),

            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: Text(
                "* Você mesmo esta criando um APP",
              ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: Text(
                "** E está permitindo que seu recém-criado app acesse sua planilha",
              ),
            ),

            ImageTextWidget(
              text: "8. Em seguida aperte em -Acessar projeto sem título",
              image: 'lib/assets/images/page9.png',
            ),

            ImageTextWidget(
              text: "9. Em seguida aperte em - Permitir",
              image: 'lib/assets/images/page10.png',
            ),

            ImageTextWidget(
              text: "10. Copie a URL do APP da Web",
              image: 'lib/assets/images/page11.png',
            ),
            Container(height: 30),

            Text(
              "11. Cole a URL no campo abaixo",
              style: Style.bold.copyWith(fontSize: 18),
            ),
            Container(height: 30),
            Form(
              key: _formKey,
              child: TextFormField(
                controller: controllerGlobalAcess.controllerIdSheet,
                decoration:
                    Style.inputDecoration(hint: "Cole aqui a URL copiada "),
                validator: (String text) {
                  if (text.isEmpty) {
                    return "O campo é obrigatório";
                  }
                  return null;
                },
              ),
            ),
            Container(height: 50),
            Button("PLANO DE AÇÂO", () {
              if (_formKey.currentState.validate()) {
                controllerLandingPAge.configureAndGoToList(context);
              }
            }),
            Container(height: 50),
          ],
        ),
      ),
    );
  }

  Future<void> sendw() async {
    final Email email = Email(
      body: script,
      subject: "",
      recipients: [],
      attachmentPaths: [],
      isHTML: false,
    );

    try {
      await FlutterEmailSender.send(email);
    } catch (error) {}
  }

  String script = "function doGet(e){"
      "try{"
      "var sheet = SpreadsheetApp.getActiveSheet();"
      "var lastRow = sheet.getLastRow();"
      "var lastColum = sheet.getLastColumn();"
      "var originalData = sheet.getRange(2,1,lastRow-1,lastColum).getValues();"
      "}catch(exc){"
      " console.log(\"Somenthing went wrong\");"
      "}"
      "var JSONString = JSON.stringify(originalData);"
      "var JSONOutput = ContentService.createTextOutput(JSONString);"
      "JSONOutput.setMimeType(ContentService.MimeType.JSON);"
      "return JSONOutput"
      "}"
      "function doPost(request){"
      "  var result;"
      "  if(request.parameter.action==\"save\"){"
      "    result= save(request);"
      "}"
      "  else if(request.parameter.action==\"edit\"){"
      "   result= edit(request);"
      "}"
      "  else if(request.parameter.action==\"config\"){"
      "   result= createInitialConfig(request);"
      "}"
      "  return ContentService"
      "  .createTextOutput(JSON.stringify({\"status\": \"SUCCESS\"}))"
      "  .setMimeType(ContentService.MimeType.JSON);"
      "}"
      "function save(request){"
      "  var sheet = SpreadsheetApp.getActiveSheet();"
      "  var result = {\"status\": \"SUCCESS\"};"
      "  sheet.setConditionalFormatRules"
      "  try{   "
      "    var data = request.parameter.data;"
      "    var categoria = request.parameter.categoria;"
      "    var oQue = request.parameter.oQue;"
      "    var como = request.parameter.como;"
      "    var prioridade = request.parameter.prioridade;"
      "    var prazo = request.parameter.prazo;"
      "    var status = request.parameter.status;"
      "    var feedBack = request.parameter.feedBack;"
      "    var obs = request.parameter.obs;"
      "  sheet.appendRow([data, categoria, oQue, como,prioridade,prazo,status,feedBack,obs]);"
      "  }catch(exc){"
      "    result = {\"status\": \"FAILED\", \"message\": exc};"
      "  }"
      "  return result;"
      "}"
      "function edit(request){"
      "    var sheet = SpreadsheetApp.getActiveSheet();"
      "    var result = {\"status\": \"SUCCESS\"};"
      "  try{   "
      "    var row = request.parameter.rowToEdit;"
      "    var data = request.parameter.data;"
      "    var categoria = request.parameter.categoria;"
      "    var oQue = request.parameter.oQue;"
      "    var como = request.parameter.como;"
      "    var prioridade = request.parameter.prioridade;"
      "    var prazo = request.parameter.prazo;"
      "    var status = request.parameter.status;"
      "    var feeBack = request.parameter.feeBack;"
      "    var obs = request.parameter.obs;"
      "    sheet.getRange(row,1,1,9).setValues([[data, categoria,oQue,como,prioridade,prazo,status,feeBack,obs]]);"
      "  }catch(exc){"
      "    result = {\"status\": \"FAILED\", \"message\": exc ,"
      "   };"
      "  }"
      "  return result;"
      "}"
      "function createInitialConfig(request){"
      "  var result = {\"status\": \"SUCCESS\"};"
      "  var sheet = SpreadsheetApp.getActiveSheet();"
      "  sheet.insertRowBefore(1).getRange(1, 1, 1, 9).setValues([[\"CRIAÇÂO\", \"CATEGORIA\", \"O QUE ?\", \"COMO ?\",\"PRIORIDADE\",\"PRAZO\",\"STATUS\",\"FEED BACK\",\"OBS\"]]);"
      "  sheet.appendRow([\"28/12/2020\", \"EMPREGO\", \"Curriculo\", \"Fazer curriculo com ajuda de pedro e com manual do email de pedro\",\"A\",\"06/10/2021\",\"EM PROGRESSO\",\"TESTE\",\"TESTE\"]); "
      "  sheet.getRange(\"A1:I1\").setFontWeight(\"bold\").setBackground(\"#4a86e8\").setFontColor(\"#ffffff\").setHorizontalAlignment(\"center\");"
      "  sheet.setColumnWidth(4,320);"
      "  sheet.setColumnWidth(5,50);"
      "  sheet.setColumnWidth(7,120);"
      "  sheet.getRange(\"A1:I100\").setBorder(true, true, true, true, true, true).setVerticalAlignment(\"middle\");"
      "  sheet.getRange(\"A:A\").setHorizontalAlignment(\"center\");"
      "  sheet.getRange(\"B:B\").setHorizontalAlignment(\"center\");"
      "  sheet.getRange(\"C:C\").setHorizontalAlignment(\"center\");"
      "  sheet.getRange(\"E:E\").setHorizontalAlignment(\"center\");"
      "  sheet.getRange(\"F:F\").setHorizontalAlignment(\"center\");"
      "  sheet.getRange(\"G:G\").setHorizontalAlignment(\"center\");"
      "  sheet.setRowHeights(1, 100, 40);"
      "  var rule = SpreadsheetApp.newConditionalFormatRule()"
      "    .whenTextContains(\"EM PROGRESSO\")"
      "    .setBackground(\"#ffff00\") "
      "    .setBold(true)"
      "    .setFontColor(\"#434343\")   "
      "    .setRanges([sheet.getRange(\"G:G\")])"
      "    .build();"
      "  var rule1 = SpreadsheetApp.newConditionalFormatRule()"
      "    .whenTextContains(\"ATRASADA\")"
      "    .setBackground(\"#fb1744\")   "
      "    .setBold(true)"
      "    .setFontColor(\"#ffffff\")  "
      "    .setRanges([sheet.getRange(\"G:G\")])"
      "    .build();"
      "  var rule2 = SpreadsheetApp.newConditionalFormatRule()"
      "    .whenTextContains(\"CANCELADA\")"
      "    .setBackground(\"#efefef\") "
      "    .setBold(true)   "
      "    .setRanges([sheet.getRange(\"G:G\")])"
      "    .build();"
      "  var rule3 = SpreadsheetApp.newConditionalFormatRule()"
      "    .whenTextContains(\"COMPLETA\")"
      "    .setBackground(\"#69f0ae\")"
      "    .setBold(true)"
      "    .setFontColor(\"#666666\")  "
      "    .setRanges([sheet.getRange(\"G:G\")])"
      "    .build();"
      "  var rule4 = SpreadsheetApp.newConditionalFormatRule()"
      "    .whenTextContains(\"EM ESPERA\")"
      "    .setBackground(\"#d9d9d9\") "
      "    .setBold(true)   "
      "    .setRanges([sheet.getRange(\"G:G\")])"
      "    .build();"
      "  var rule5 = SpreadsheetApp.newConditionalFormatRule()"
      "    .whenDateAfter(SpreadsheetApp.RelativeDate.TODAY)"
      "    .setBackground(\"#69f0ae\")"
      "    .setBold(true)   "
      "    .setRanges([sheet.getRange(\"F:F\")])"
      "    .build();"
      "  var rule6 = SpreadsheetApp.newConditionalFormatRule()"
      "    .whenDateBefore(SpreadsheetApp.RelativeDate.TODAY)"
      "    .setBackground(\"#fb1744\")"
      "    .setBold(true)"
      "    .setFontColor(\"#ffffff\") "
      "    .setRanges([sheet.getRange(\"F:F\")])"
      "    .build(); "
      "  var rule7 = SpreadsheetApp.newConditionalFormatRule()"
      "    .whenDateEqualTo(SpreadsheetApp.RelativeDate.TODAY)"
      "    .setBackground(\"#ffff00\")"
      "    .setBold(true) "
      "    .setRanges([sheet.getRange(\"F:F\")])"
      "    .build();"
      "  var rule8 = SpreadsheetApp.newConditionalFormatRule()"
      "    .whenTextEqualTo(\"A\")"
      "    .setBackground(\"#fb1744\")"
      "    .setBold(true)"
      "    .setFontColor(\"#ffffff\")"
      "    .setRanges([sheet.getRange(\"E:E\")])"
      "    .build();    "
      "  var rules = sheet.getConditionalFormatRules();"
      "    rules.push(rule);"
      "    rules.push(rule1);"
      "    rules.push(rule2);"
      "    rules.push(rule3);"
      "    rules.push(rule4);"
      "    rules.push(rule5);"
      "    rules.push(rule6);"
      "    rules.push(rule7);"
      "    rules.push(rule8);"
      "  sheet.setConditionalFormatRules(rules);"
      "  return result;"
      "}";
}
