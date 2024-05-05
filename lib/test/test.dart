// import 'package:flutter/material.dart';
// import 'package:movie_flutter/data/model/loginaccount_model.dart'; // Import model của Note
//
// import '../data/services/Database_helper.dart'; // Import DatabaseHelper
//
//
// class NoteListScreen extends StatefulWidget {
//   @override
//   _NoteListScreenState createState() => _NoteListScreenState();
// }
//
// class _NoteListScreenState extends State<NoteListScreen> {
//   List<Note> _notes = []; // Danh sách ghi chú
//
//   @override
//   void initState() {
//     super.initState();
//     // Gọi hàm để lấy danh sách ghi chú khi StatefulWidget được khởi tạo
//     _getNotesFromDatabase();
//   }
//
//   // Phương thức để lấy danh sách ghi chú từ cơ sở dữ liệu
//   void _getNotesFromDatabase() async {
//     List<Note>? notes = await DatabaseHelper.getAllNotes(); // Gọi phương thức từ DatabaseHelper
//     if (notes != null) {
//       setState(() {
//         _notes = notes; // Cập nhật danh sách ghi chú
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Danh sách ghi chú'),
//       ),
//       body: ListView.builder(
//         itemCount: _notes.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(_notes[index].title), // Hiển thị tiêu đề ghi chú
//             subtitle: Text(_notes[index].description), // Hiển thị mô tả ghi chú
//             // Bạn có thể thêm các tính năng khác như sửa, xóa ghi chú tại đây
//           );
//         },
//       ),
//     );
//   }
// }
