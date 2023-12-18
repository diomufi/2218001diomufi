/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BAB3;

/**
 *
 * @author Aharfi
 */
public class Catatan extends kelola_keuangan{
    String pengeluaran;
    double harga,saldoakhir;
    
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
        saldoakhir = saldoawal - harga;
        return saldoakhir;
    }
    
    
}
