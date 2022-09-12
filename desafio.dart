void main() {

  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //! Baseado no array acima monte um relatório onde:
  print('1 - Apresente os pacientes com mais de 20 anos e print o nome deles');
  for(var dados in pacientes) {
    final dadosPaciente = dados.split('|');
    final nomePaciente = dadosPaciente[0];
    final idadePaciente = int.tryParse(dadosPaciente[1]) ?? 0;

    if(idadePaciente > 20) {
      print(nomePaciente);
    }

  }

  print('');
  print('2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)');

  final desenvolvedor = [];
  final estudante = [];
  final dentista = [];
  final jornalista = [];

  for(var dados in pacientes) {
    final dadosPaciente = dados.split('|');
    final nomeProfissional = dadosPaciente[0];
    final profissao = dadosPaciente[2].toLowerCase();

    if(profissao == 'desenvolvedor') {
      desenvolvedor.add(nomeProfissional);
    } 

    if(profissao == 'estudante') {
      estudante.add(nomeProfissional);
    } 

    if(profissao == 'dentista') {
      dentista.add(nomeProfissional);
    }
  
    if(profissao == 'jornalista') {
      jornalista.add(nomeProfissional);
    }
} 
    print('Desenvolvedores:');
    desenvolvedor.forEach(print);
    print('');

    print('Estudantes:');
    estudante.forEach(print);
    print('');

    print('Dentistas:');
    dentista.forEach(print);
    print('');

    print('Jornalistas:');
    jornalista.forEach(print);
    print('');

  print('3 - Apresente a quantidade de pacientes que moram em SP');
  
  final pacientesSP = [];
  final pacientesMG = [];

  for (var dados in pacientes) {
    final dadosPaciente = dados.split('|');
    final estadosPaciente = dadosPaciente[3].toUpperCase();

    if(estadosPaciente.contains('SP')) {
      pacientesSP.add(estadosPaciente);
    }

    if(estadosPaciente.contains('MG')) {
      pacientesMG.add(estadosPaciente);
    }
  }
  print('A quantidade de pacientes que moram em São Paulo são: ${pacientesSP.length}');
  print('A quantidade de pacientes que moram em Minas Gerais são: ${pacientesMG.length}');
}