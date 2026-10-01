void main() {
  print(tarifParkir(jeniskendaraan.motor, 30));
  print(tarifParkir(jeniskendaraan.motor, 150));
  print(tarifParkir(jeniskendaraan.mobil, 60));
  print(tarifParkir(jeniskendaraan.mobil, 181));
}

enum jeniskendaraan {
  motor,
  mobil,
} // untuk membatasi jenis kendaraan yang masuk kategori soal

String tarifParkir(jeniskendaraan kendaraan, int durasi) {
  int jam = durasi ~/ 60; // membulatkan ke atas
  int menit = durasi % 60; // menghitung sisa menit

  if (menit > 0) {
    jam = jam + 1; // menambah jam jika sisa menit lebih dari 0
  }

  int totalTarif = switch (kendaraan) {
    jeniskendaraan.motor => 2000 + (jam - 1) * 1000,
    jeniskendaraan.mobil => 5000 + (jam - 1) * 3000,
  };

  // Format nominal dengan pemisah ribuan
  String strTarif = totalTarif.toString();
  String bagianDepan = strTarif.substring(0, strTarif.length - 3);
  String bagianBelakang = strTarif.substring(strTarif.length - 3);
  String nominal = 'Rp$bagianDepan.$bagianBelakang';

  return 'Jenis Kendaraan: ${kendaraan.name} | Durasi: $durasi menit | Total: $nominal';
}
