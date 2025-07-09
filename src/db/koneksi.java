/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author User
 */
public class koneksi {
    private Connection con;

    public Connection getCon() {
        try {
            String url = "jdbc:mysql://localhost:3306/db_subject"; // Ganti dengan nama database Anda
            String user = "root"; // Username database
            String password = ""; // Password database
            if (con == null) {
                con = DriverManager.getConnection(url, user, password);
            }
            System.out.println("Koneksi Berhasil");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
    
    public void simpanMapel(String id_mapel, String nama_mapel, String waktu_belajar){
        try {
            String sql = "INSERT INTO data_mata_pelajaran (id_mapel, nama_mapel, waktu_belajar) value(?,?,?)";
            PreparedStatement perintah = con.prepareStatement(sql);
            perintah.setString(1, id_mapel);
            perintah.setString(2, nama_mapel);
            perintah.setString(3, waktu_belajar);
            perintah.executeUpdate();
            System.out.println("data berhasil disimpan");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    public void ubahMapel(String id_mapel, String nama_mapel, String waktu_belajar){
        try {
            String sql = "UPDATE data_mata_pelajaran SET nama_mapel=?, waktu_belajar=? WHERE id_mapel=?";
            PreparedStatement perintah = con.prepareStatement(sql);
            perintah.setString(1, nama_mapel);
            perintah.setString(2, waktu_belajar);
            perintah.setString(3, id_mapel);
            perintah.executeUpdate();
            System.out.println("data berhasil diubah");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    public void hapusMapel(String id_mapel){
        try {
            String sql = "DELETE FROM data_mata_pelajaran WHERE id_mapel=?";
            PreparedStatement perintah = con.prepareStatement(sql);
            perintah.setString(1, id_mapel);
            perintah.executeUpdate();
            System.out.println("data berhasil dihapus");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    
    public void simpanKelas(String id_kelas, String nama_kelas, String ruangan){
        try {
            String sql = "INSERT INTO data_kelas (id_kelas, nama_kelas, ruangan) value(?,?,?)";
            PreparedStatement perintah = con.prepareStatement(sql);
            perintah.setString(1, id_kelas);
            perintah.setString(2, nama_kelas);
            perintah.setString(3, ruangan);
            perintah.executeUpdate();
            System.out.println("data berhasil disimpan");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    public void ubahKelas(String id_kelas, String nama_kelas, String ruangan){
        try {
            String sql = "UPDATE data_kelas SET nama_kelas=?, ruangan=? WHERE id_kelas=?";
            PreparedStatement perintah = con.prepareStatement(sql);
            perintah.setString(1, nama_kelas);
            perintah.setString(2, ruangan);
            perintah.setString(3, id_kelas);
            perintah.executeUpdate();
            System.out.println("data berhasil diubah");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    public void hapusKelas(String id_kelas){
        try {
            String sql = "DELETE FROM data_kelas WHERE id_kelas=?";
            PreparedStatement perintah = con.prepareStatement(sql);
            perintah.setString(1, id_kelas);
            perintah.executeUpdate();
            System.out.println("data berhasil dihapus");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
}
