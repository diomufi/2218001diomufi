/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BAB8;

import BAB3.*;

/**
 *
 * @@author mufi
 */
public class perencanaan extends kelola_keuangan{
    String Keluaran;
    double harga;
    void dataKeluaran(String Keluaran){
        this.Keluaran = Keluaran;
    }
    String cetakKeluaran(){
        return Keluaran;
    }
    void dataHargaKeluaran(double harga){
        this.harga = harga;
    }
    double cetakHarga(){
        return harga;
    }
    perencanaan(){
        super();
    }
}
