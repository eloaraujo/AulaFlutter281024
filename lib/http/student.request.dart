import 'package:dio/dio.dart';
import 'package:http_flu/domain/student.dart';

class StudentRequest{

  final dio = Dio();

  Future<List<Student>> getStudent() async { 

  final jsonResponse = await dio.get('https://gdapp.com.br/api/students'); 

  final responseData = jsonResponse.data; 

 return List<Student>.from( 

  responseData.map((x) => Student.fromJson(x)), 

  ); 
  
}

Future<bool> createStudent(Student student)async{
  final response = await dio.post('https://gdapp.com.br/api/student', data: student.toJson());
  return true;
}
}