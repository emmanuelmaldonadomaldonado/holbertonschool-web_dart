void outer(String name, String id) {
  print(inner(name, id));
}

String inner(String name, String id) {
  return "Hello Agent B.$name your id is $id";
}