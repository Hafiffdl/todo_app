class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone =false,
  });

  static List<ToDo> todoList() {
    return[
      
      // ToDo(id: '01', todoText: 'Tugas Mobile Programming',),
      // ToDo(id: '02', todoText: 'Membeli Minyak',),
      // ToDo(id: '03', todoText: 'Olahraga',)
    ];
  }
}