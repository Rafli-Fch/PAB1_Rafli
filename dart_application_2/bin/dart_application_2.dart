class Produk{
  String namaProduk;
  double harga;
  int jumlah;
  double diskon;

  Produk(this.namaProduk, this.harga, this.jumlah, this.diskon);
  double hitungTotalHargaTanpaDiskon() {
  return harga*jumlah;
  }
  double hitungTotalHargaSetelahDiskon(){
  double TanpaDiskon=hitungTotalHargaTanpaDiskon();
  double DenganDiskon=TanpaDiskon * (diskon/100);
  return  TanpaDiskon-DenganDiskon;
  }

void tampilkanInformasiProduk(){
    print('Nama Produk \t\t\t: $namaProduk');
    print('Harga Satuan \t\t\t: Rp.$harga');
    print('Jumlah \t\t\t\t: $jumlah');
    print('Diskon \t\t\t\t: $diskon%');
    print('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
    print('Total Harga Tanpa Diskon \t: Rp ${hitungTotalHargaTanpaDiskon()}');
    print('Total Harga setelah Diskon \t: Rp${hitungTotalHargaSetelahDiskon()}');
    print('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
}
}

void main(){
  var produk=Produk('Kamera', 1500000, 2, 10);
  produk.tampilkanInformasiProduk();
}