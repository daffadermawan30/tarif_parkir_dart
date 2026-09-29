void main() {}

enum jeniskendaraan {
  motor,
  mobil,
} // untuk membatasi jenis kendaraan yang masuk kategori soal

int tarifParkir(jeniskendaraan kendaraan, int durasi) {
  int jam = durasi ~/ 60; // membulatkan ke atas
  int menit = durasi % 60; // menghitung sisa menit

  if (menit > 0) {
    jam = jam + 1; // menambah jam jika sisa menit lebih dari 0
  }

  int totalTarif = switch (kendaraan) {
    jeniskendaraan.motor => 2000 + (jam - 1) * 1000,
    jeniskendaraan.mobil => 5000 + (jam - 1) * 2000,
  };

  return totalTarif;
}
