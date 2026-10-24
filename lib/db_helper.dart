import 'package:cloud_firestore/cloud_firestore.dart';
import 'tarefa_model.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  DatabaseHelper._internal();

  final CollectionReference _colecao = FirebaseFirestore.instance.collection('tarefas');

  Future<void> inserirTarefa(Tarefa tarefa) async {
    await _colecao.add(tarefa.toMap());
  }

  Future<List<Tarefa>> obterTarefas() async {
    final querySnapshot = await _colecao.get();
    return querySnapshot.docs.map((doc) {
      return Tarefa.fromMap(doc.data() as Map<String, dynamic>, doc.id);
    }).toList();
  }

  Future<void> atualizarTarefa(Tarefa tarefa) async {
    if (tarefa.id != null) {
      await _colecao.doc(tarefa.id).update(tarefa.toMap());
    }
  }

  Future<void> deletarTarefa(String id) async {
    await _colecao.doc(id).delete();
  }
}
