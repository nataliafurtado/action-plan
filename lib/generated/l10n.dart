// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `NOVA AÇÂO`
  String get NOVA_ACAO {
    return Intl.message(
      'NOVA AÇÂO',
      name: 'NOVA_ACAO',
      desc: '',
      args: [],
    );
  }

  /// `Categoria`
  String get CATEGORIA {
    return Intl.message(
      'Categoria',
      name: 'CATEGORIA',
      desc: '',
      args: [],
    );
  }

  /// `O que ?`
  String get O_QUE {
    return Intl.message(
      'O que ?',
      name: 'O_QUE',
      desc: '',
      args: [],
    );
  }

  /// `Como ?`
  String get COMO {
    return Intl.message(
      'Como ?',
      name: 'COMO',
      desc: '',
      args: [],
    );
  }

  /// `Prioridade`
  String get PRIORIDADE {
    return Intl.message(
      'Prioridade',
      name: 'PRIORIDADE',
      desc: '',
      args: [],
    );
  }

  /// `Prazo`
  String get PRAZO {
    return Intl.message(
      'Prazo',
      name: 'PRAZO',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get SATUS {
    return Intl.message(
      'Status',
      name: 'SATUS',
      desc: '',
      args: [],
    );
  }

  /// `Feeb Back`
  String get FEED_BACK {
    return Intl.message(
      'Feeb Back',
      name: 'FEED_BACK',
      desc: '',
      args: [],
    );
  }

  /// `Obs`
  String get OBS {
    return Intl.message(
      'Obs',
      name: 'OBS',
      desc: '',
      args: [],
    );
  }

  /// `SALVAR`
  String get SALVAR {
    return Intl.message(
      'SALVAR',
      name: 'SALVAR',
      desc: '',
      args: [],
    );
  }

  /// `Iniciar configurações`
  String get INICIAR_CONFIG {
    return Intl.message(
      'Iniciar configurações',
      name: 'INICIAR_CONFIG',
      desc: '',
      args: [],
    );
  }

  /// `Para configurar é necessario:`
  String get PARA_CONFIGURAR_E_NEC {
    return Intl.message(
      'Para configurar é necessario:',
      name: 'PARA_CONFIGURAR_E_NEC',
      desc: '',
      args: [],
    );
  }

  /// ` - É preciso uma conta no google`
  String get E_PRECISO_UMA {
    return Intl.message(
      ' - É preciso uma conta no google',
      name: 'E_PRECISO_UMA',
      desc: '',
      args: [],
    );
  }

  /// ` - Criar uma planilha vazia no google drive`
  String get CRIAR_UMA_PLANILHA {
    return Intl.message(
      ' - Criar uma planilha vazia no google drive',
      name: 'CRIAR_UMA_PLANILHA',
      desc: '',
      args: [],
    );
  }

  /// ` - Ir na parte de Editors de Script da planilha e colar um script`
  String get IR_NA_PARTE {
    return Intl.message(
      ' - Ir na parte de Editors de Script da planilha e colar um script',
      name: 'IR_NA_PARTE',
      desc: '',
      args: [],
    );
  }

  /// ` - Implantar o scrip`
  String get IMPALNTAR_O_SCRIP {
    return Intl.message(
      ' - Implantar o scrip',
      name: 'IMPALNTAR_O_SCRIP',
      desc: '',
      args: [],
    );
  }

  /// ` - Liberar acesso da planilhas para outros aplicativos`
  String get LIBERAR_O_ACESSO {
    return Intl.message(
      ' - Liberar acesso da planilhas para outros aplicativos',
      name: 'LIBERAR_O_ACESSO',
      desc: '',
      args: [],
    );
  }

  /// `Instruções de instalação`
  String get INTRUCOES_DE_INSTALACAO {
    return Intl.message(
      'Instruções de instalação',
      name: 'INTRUCOES_DE_INSTALACAO',
      desc: '',
      args: [],
    );
  }

  /// `Utilize um navegador web para realizar as configuraçães.`
  String get UTILIZE_UM_NAVEGADOR_WEB {
    return Intl.message(
      'Utilize um navegador web para realizar as configuraçães.',
      name: 'UTILIZE_UM_NAVEGADOR_WEB',
      desc: '',
      args: [],
    );
  }

  /// `Não é possivel fazer pelo aplicativo do google drive.`
  String get NAO_E_POSSIVEL_FAZER {
    return Intl.message(
      'Não é possivel fazer pelo aplicativo do google drive.',
      name: 'NAO_E_POSSIVEL_FAZER',
      desc: '',
      args: [],
    );
  }

  /// `1. Criar uma planilha vazia no google drive`
  String get UM {
    return Intl.message(
      '1. Criar uma planilha vazia no google drive',
      name: 'UM',
      desc: '',
      args: [],
    );
  }

  /// `2. Ir na parte de <> Editor de Script`
  String get DOIS {
    return Intl.message(
      '2. Ir na parte de <> Editor de Script',
      name: 'DOIS',
      desc: '',
      args: [],
    );
  }

  /// `3. Apagar o scrip inicial padrão`
  String get TRES {
    return Intl.message(
      '3. Apagar o scrip inicial padrão',
      name: 'TRES',
      desc: '',
      args: [],
    );
  }

  /// `4. Colar o script fornecido abaixo`
  String get QUATRO {
    return Intl.message(
      '4. Colar o script fornecido abaixo',
      name: 'QUATRO',
      desc: '',
      args: [],
    );
  }

  /// `Copiar script`
  String get COPIAR_SCRIPT {
    return Intl.message(
      'Copiar script',
      name: 'COPIAR_SCRIPT',
      desc: '',
      args: [],
    );
  }

  /// `* Não esqueça de salvar depois de colar`
  String get NAO_ESQUECA_DE_SALVAR {
    return Intl.message(
      '* Não esqueça de salvar depois de colar',
      name: 'NAO_ESQUECA_DE_SALVAR',
      desc: '',
      args: [],
    );
  }

  /// `5. Em seguida pressione em - Nova implantação`
  String get CINCO {
    return Intl.message(
      '5. Em seguida pressione em - Nova implantação',
      name: 'CINCO',
      desc: '',
      args: [],
    );
  }

  /// `6. Em seguida pressione em - App da Web`
  String get SEIS {
    return Intl.message(
      '6. Em seguida pressione em - App da Web',
      name: 'SEIS',
      desc: '',
      args: [],
    );
  }

  /// `7. Em seguida pressione em - Implantar`
  String get SETE {
    return Intl.message(
      '7. Em seguida pressione em - Implantar',
      name: 'SETE',
      desc: '',
      args: [],
    );
  }

  /// `* Selecione - Qualquer pessoa`
  String get SELECIONE_QUALQUER_PESSOA {
    return Intl.message(
      '* Selecione - Qualquer pessoa',
      name: 'SELECIONE_QUALQUER_PESSOA',
      desc: '',
      args: [],
    );
  }

  /// `8. Em seguida pressione em -Avançado`
  String get OITO {
    return Intl.message(
      '8. Em seguida pressione em -Avançado',
      name: 'OITO',
      desc: '',
      args: [],
    );
  }

  /// `* Você mesmo esta criando um APP`
  String get VOCE_MESMO_ESTA {
    return Intl.message(
      '* Você mesmo esta criando um APP',
      name: 'VOCE_MESMO_ESTA',
      desc: '',
      args: [],
    );
  }

  /// `** E está permitindo que seu recém-criado app acesse sua planilha`
  String get E_ESTA_PERMITINDO {
    return Intl.message(
      '** E está permitindo que seu recém-criado app acesse sua planilha',
      name: 'E_ESTA_PERMITINDO',
      desc: '',
      args: [],
    );
  }

  /// `9. Em seguida pressione em -Acessar projeto sem título`
  String get NOVE {
    return Intl.message(
      '9. Em seguida pressione em -Acessar projeto sem título',
      name: 'NOVE',
      desc: '',
      args: [],
    );
  }

  /// `10. Em seguida pressione em - Permitir`
  String get DEZ {
    return Intl.message(
      '10. Em seguida pressione em - Permitir',
      name: 'DEZ',
      desc: '',
      args: [],
    );
  }

  /// `11. Copie a URL do APP da Web`
  String get ONZE {
    return Intl.message(
      '11. Copie a URL do APP da Web',
      name: 'ONZE',
      desc: '',
      args: [],
    );
  }

  /// `12. Cole a URL no campo abaixo`
  String get DOZE {
    return Intl.message(
      '12. Cole a URL no campo abaixo',
      name: 'DOZE',
      desc: '',
      args: [],
    );
  }

  /// `Cole aqui a URL copiada `
  String get COLE_AQUI_A_URL {
    return Intl.message(
      'Cole aqui a URL copiada ',
      name: 'COLE_AQUI_A_URL',
      desc: '',
      args: [],
    );
  }

  /// `O campo é obrigatório`
  String get O_CAMPO_E_OBRIGATORIO {
    return Intl.message(
      'O campo é obrigatório',
      name: 'O_CAMPO_E_OBRIGATORIO',
      desc: '',
      args: [],
    );
  }

  /// ` Ir para o plano de ação`
  String get IR_PARA_O_PLANO_DE_ACAO {
    return Intl.message(
      ' Ir para o plano de ação',
      name: 'IR_PARA_O_PLANO_DE_ACAO',
      desc: '',
      args: [],
    );
  }

  /// `COPIADO`
  String get COPIADO {
    return Intl.message(
      'COPIADO',
      name: 'COPIADO',
      desc: '',
      args: [],
    );
  }

  /// `COPIAR`
  String get COPIAR {
    return Intl.message(
      'COPIAR',
      name: 'COPIAR',
      desc: '',
      args: [],
    );
  }

  /// `Todas`
  String get TODAS {
    return Intl.message(
      'Todas',
      name: 'TODAS',
      desc: '',
      args: [],
    );
  }

  /// `Plano de ação`
  String get PLANO_DE_ACAO {
    return Intl.message(
      'Plano de ação',
      name: 'PLANO_DE_ACAO',
      desc: '',
      args: [],
    );
  }

  /// `Quem ?`
  String get QUEM {
    return Intl.message(
      'Quem ?',
      name: 'QUEM',
      desc: '',
      args: [],
    );
  }

  /// `Deseja excluir essa ação ?`
  String get DESEJA_EXCLUIR {
    return Intl.message(
      'Deseja excluir essa ação ?',
      name: 'DESEJA_EXCLUIR',
      desc: '',
      args: [],
    );
  }

  /// `Excluir`
  String get EXCLUIR {
    return Intl.message(
      'Excluir',
      name: 'EXCLUIR',
      desc: '',
      args: [],
    );
  }

  /// `Cancelar`
  String get CANCELAR {
    return Intl.message(
      'Cancelar',
      name: 'CANCELAR',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'ESTA_ACAO_NAO:' key
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pt', countryCode: 'BR'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}