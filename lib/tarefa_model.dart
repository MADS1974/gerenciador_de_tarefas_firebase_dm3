class Tarefa {
  String? id;
  String titulo;
  String data;
  bool concluida;

  Tarefa({
    this.id,
    required this.titulo,
    required this.data,
    this.concluida = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'titulo': titulo,
      'data': data,
      'concluida': concluida,
    };
  }

  factory Tarefa.fromMap(Map<String, dynamic> map, String documentId) {
    return Tarefa(
      id: documentId,
      titulo: map['titulo'] ?? '',
      data: map['data'] ?? '',
      concluida: map['concluida'] == true || map['concluida'] == 1,
    );
  }
}
