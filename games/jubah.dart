import 'jagoan.dart';

class Jubah {
  var nama;
  var kekuatan;
  var kesehatan;

  Jubah(String nama, int kekuatan, int kesehatan) {
    this.nama = nama;
    this.kekuatan = kekuatan;
    this.kesehatan = kesehatan;
  }

  String getNama() {
    return this.nama;
  }

  int getTambahKesehatan() {
    return (this.kesehatan *= 10);
  }

  int getNilaiKekuatan() {
    return (this.kekuatan *= 2);
  }
}
