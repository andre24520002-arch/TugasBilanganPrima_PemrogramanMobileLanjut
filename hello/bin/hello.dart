import 'package:hello/hello.dart' as hello;

// --- Langkah 3: Fungsi tukar di luar scope main() ---
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main(List<String> arguments) {

  // Ganti dengan Nama Lengkap dan NIM Anda
  String namaLengkap = "Andre kurniawan";
  String nim = "24.52.0002";

  print("=== PROGRAM MENAMPILKAN BILANGAN PRIMA (0 - 201) ===");

  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print("Angka $i adalah bilangan prima -> $namaLengkap ($nim)");
    }
  }
}

// Fungsi untuk mengecek apakah sebuah angka adalah bilangan prima
bool isPrime(int number) {
  // Bilangan prima harus lebih besar dari 1
  if (number <= 1) return false;

  // Cek pembagi dari 2 hingga akar dari number
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return false; // Jika bisa dibagi, bukan bilangan prima
    }
  }

  return true; // Bilangan prima
}

