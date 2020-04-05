# Título

Projeto Sauer

## Rodando Teste

Comando:

flutter test

## Comandos essenciais - https://medium.com/flutterando/introdu%C3%A7%C3%A3o-a-teste-de-widgets-no-flutter-1ac1bd234efd

WidgetTester: Responsável por toda a “simulação” do seu widget, construção, gestos, etc.
pumpWidget(): Cria o widget e fala para o WidgetTester construí-lo.
pump(): Reconstrói o widget depois de um determinado período de tempo.
pumpAndSettle(): Reconstrói o widget até o último frame/estado, essencial quando se está testando widgets que contêm algum tipo de animação.
Finder: Como o nome entrega, ele é responsável por achar os widgets.