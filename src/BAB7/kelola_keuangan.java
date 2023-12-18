/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BAB7;

/**
 *
 * @author Aharfi
 */
public class kelola_keuangan {
    String ID,nama,alamat;
    double saldoawal,tambah,kurang;
    
    void dataID(String ID){
        this.ID = ID;
    }
    void dataNama(String nama){
        this.nama = nama;
    }
    void dataAlamat(String alamat){
        this.alamat = alamat;
    }
    void dataSaldo(double saldo){
        this.saldoawal = saldo;
    }
    
    String cetakID(){
        return ID;
    }
    String cetakNama(){
        return nama;
    }
    String cetakAlamat(){
        return alamat;
    }
    double cetakSaldo(){
        return saldoawal;
    }
    
    double tambahSaldo(){
        double saldoakhir = saldoawal + tambah;
        return saldoakhir;
    }
    
    double kurangSaldo(){
        double saldoakhir = saldoawal - kurang;
        return saldoakhir;
    }
    kelola_keuangan(){
        this.ID = "KL001";
        this.nama = "Mufi";
        this.alamat = "lamongan";
        this.saldoawal = 3000000;
    }
}
