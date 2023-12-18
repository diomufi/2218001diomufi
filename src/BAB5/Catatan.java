/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BAB5;

/**
 *
 * @author Aharfi
 */
public class Catatan extends kelola_keuangan{
    String pengeluaran;
    double harga;
    
    void dataPengeluaran(String pengeluaran){
        this.pengeluaran = pengeluaran;
    }
    String cetakPengeluaran(){
        return pengeluaran;
    }
    void dataHargaBarangJasa(double harga){
        this.harga = harga;
    }
    double HargaBarangJasa(){
        return harga;
    }
    @Override
    double kurangSaldo() {
        double saldoakhir = saldoawal - harga;
        return saldoakhir;
    }
}
//overloading impementasi dalam 1 class memiliki method yang sama tetapi berbeda tipe data atau jumlah parameternya
class CatatanOverload{
     String pengeluaran;
    double harga;
    public void Pengeluaran(String pengeluaran){
              System.out.println(pengeluaran);
      this.pengeluaran = pengeluaran;
    }
    public String Pengeluaran(){
                System.out.println(pengeluaran);
  return pengeluaran;      
    }
    public void HargaBarangJasa(double harga){
                System.out.println(harga);
    this.harga = harga;
    }
    public Double HargaBarangJasa(){
        System.out.println(harga);
         return harga;  
    }
}
//overloading impementasi
