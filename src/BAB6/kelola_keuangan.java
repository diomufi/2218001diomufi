/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BAB6;


/**
 *
 * @author Aharfi
 */
//abstract one in all

public abstract class kelola_keuangan {
    String ID,nama;
    private String alamat;
    double saldoawal,tambah,kurang;
        void dataID(String ID){
        this.ID = ID;
    }
    void dataNama(String nama){
        this.nama = nama;
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
    //encapsulation
    public void setAlamat(String alamat) {
        this.alamat = alamat;
    }
    public String getAlamat() {
        return alamat;
    }

    
}
