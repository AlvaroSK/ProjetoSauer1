# T�tulo

Projeto Sauer

## Rodando Teste

Comando:

flutter test

## Comandos essenciais - https://medium.com/flutterando/introdu%C3%A7%C3%A3o-a-teste-de-widgets-no-flutter-1ac1bd234efd

WidgetTester: Respons�vel por toda a �simula��o� do seu widget, constru��o, gestos, etc.
pumpWidget(): Cria o widget e fala para o WidgetTester constru�-lo.
pump(): Reconstr�i o widget depois de um determinado per�odo de tempo.
pumpAndSettle(): Reconstr�i o widget at� o �ltimo frame/estado, essencial quando se est� testando widgets que cont�m algum tipo de anima��o.
Finder: Como o nome entrega, ele � respons�vel por achar os widgets.