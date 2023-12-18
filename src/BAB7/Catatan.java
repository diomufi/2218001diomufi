/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BAB7;


/**
 *
 * @author Aharfi
 */
public class Catatan extends kelola_keuangan{
 double harga;
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
//polymorphism impelementasi
class polymorphism{
      String pengeluaran;
    double harga;  
}
//polymorphism turunan impelementasi
class Cetakeluar extends polymorphism{
    void dataPengeluaran(String pengeluaran){
        this.pengeluaran = pengeluaran;
         System.out.println(pengeluaran);
    }
    String cetakPengeluaran(){
        System.out.println(pengeluaran);
        return pengeluaran;
    }
}