import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'page1.dart'; // Import halaman baru

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Login Profile',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _sekolahController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();
  final TextEditingController _deskripsiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40.0, left: 20.0, right: 20.0, top: 100.0),
            child: Center(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 10,
                color: Colors.white.withOpacity(0.9),
                shadowColor: Colors.black.withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Form Profile",
                        style: GoogleFonts.poppins(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Silahkan untuk mengisi form profile anda",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      // Form input fields
                      TextFormField(
                        controller: _usernameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Masukan username';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Nama',
                          hintText: 'Input nama anda',
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 98, 98, 98),
                          ),
                          labelStyle: GoogleFonts.poppins(color: Colors.black87),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _sekolahController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Masukan sekolah';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Sekolah',
                          hintText: 'Input nama sekolah',
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 98, 98, 98),
                          ),
                          labelStyle: GoogleFonts.poppins(color: Colors.black87),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _roleController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Masukan Role';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Role',
                          hintText: 'Input role anda',
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 98, 98, 98),
                          ),
                          labelStyle: GoogleFonts.poppins(color: Colors.black87),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _deskripsiController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Masukan Deskripsi';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Deskripsi',
                          hintText: 'Input deskripsi',
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 98, 98, 98),
                          ),
                          labelStyle: GoogleFonts.poppins(color: Colors.black87),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      InkWell(
                        onTap: () {
                          if (_usernameController.text.isEmpty ||
                              _sekolahController.text.isEmpty ||
                              _roleController.text.isEmpty ||
                              _deskripsiController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                backgroundColor: Colors.red,
                                content: Text(
                                  'Isi form login dengan lengkap!',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            );
                          } else {
                            // Navigasi ke Page1 dan kirim data
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Page1(
                                  username: _usernameController.text,
                                  sekolah: _sekolahController.text,
                                  role: _roleController.text,
                                  deskripsi: _deskripsiController.text,
                                ),
                              ),
                            );
                          }
                        },
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                          child: Center(
                            child: Text(
                              "Login",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
