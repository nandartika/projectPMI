/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.application.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kartika
 */
public class lokasiModel {

    String id_lokasi, namaTempat, provinsi, kota, alamat, tlpn, email;
    int status;
    Koneksi db = null;

    /**
     * @return the id_lokasi
     */
    public String getId_lokasi() {
        return id_lokasi;
    }

    /**
     * @param id_lokasi the id_lokasi to set
     */
    public void setId_lokasi(String id_lokasi) {
        this.id_lokasi = id_lokasi;
    }

    /**
     * @return the namaTempat
     */
    public String getNamaTempat() {
        return namaTempat;
    }

    /**
     * @param namaTempat the namaTempat to set
     */
    public void setNamaTempat(String namaTempat) {
        this.namaTempat = namaTempat;
    }

    /**
     * @return the provinsi
     */
    public String getProvinsi() {
        return provinsi;
    }

    /**
     * @param provinsi the provinsi to set
     */
    public void setProvinsi(String provinsi) {
        this.provinsi = provinsi;
    }

    /**
     * @return the kota
     */
    public String getKota() {
        return kota;
    }

    /**
     * @param kota the kota to set
     */
    public void setKota(String kota) {
        this.kota = kota;
    }
    
    /**
     * @return the alamat
     */
    public String getAlamat() {
        return alamat;
    }

    /**
     * @param alamat the alamat to set
     */
    public void setAlamat(String alamat) {
        this.alamat = alamat;
    }

    /**
     * @return the tlpn
     */
    public String getTlpn() {
        return tlpn;
    }

    /**
     * @param tlpn the tlpn to set
     */
    public void setTlpn(String tlpn) {
        this.tlpn = tlpn;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the status
     */
    public int getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(int status) {
        this.status = status;
    }

    public List tampil() {
        List<lokasiModel> data = new ArrayList<lokasiModel>();
        ResultSet rs = null;
        try {
            String sql = "SELECT * FROM t_lokasi ORDER BY f_id_lokasi";
            rs = db.ambilData(sql);
            while (rs.next()) {
                lokasiModel am = new lokasiModel();
                am.setId_lokasi(rs.getString("f_id_lokasi"));
                am.setNamaTempat(rs.getString("f_nama_tempat"));
                am.setProvinsi(rs.getString("f_provinsi"));
                am.setKota(rs.getString("f_kota"));
                am.setAlamat(rs.getString("f_alamat"));
                am.setTlpn(rs.getString("f_Tlpn"));
                am.setEmail(rs.getString("f_email"));
                am.setStatus(rs.getInt("f_status"));
                data.add(am);
            }
            db.diskonek(rs);
        } catch (SQLException ex) {
            System.out.println("Terjadi Kesalahan Saat menampilkan data Artikel" + ex);
        }
        return data;
    }

    public void simpan() {
        String sql = "INSERT INTO t_artikel VALUES (null, '" + namaTempat + "', '" + provinsi + "', '" + kota + "', '" + alamat + "', '" + tlpn + "', '" + email + "', '" + status + "')";
        db.simpanData(sql);
    }

    public void update() {
        String sql = "UPDATE t_artikel SET f_nama_tempat='" + namaTempat + "', f_provinsi='" + provinsi + "', f_kota='" + kota + "', f_alamat='" + alamat + "', f_nomor_telp='" + tlpn + "', f_email='" + email + "', f_status='" + status + "' WHERE f_id_lokasi='" + id_lokasi + "'";
        db.simpanData(sql);
    }

    public List cariID() {
        List<lokasiModel> data = new ArrayList<lokasiModel>();
        ResultSet rs = null;
        try {
            String sql = "SELECT * FROM t_lokasi WHERE f_id_lokasi='" + id_lokasi + "'";
            rs = db.ambilData(sql);
            while (rs.next()) {
                lokasiModel m = new lokasiModel();
                m.setId_lokasi(rs.getString("f_id_lokasi"));
                m.setNamaTempat(rs.getString("f_nama_tempat"));
                m.setProvinsi(rs.getString("f_provinsi"));
                m.setKota(rs.getString("f_kota"));
                m.setAlamat(rs.getString("f_alamat"));
                m.setTlpn(rs.getString("f_Tlpn"));
                m.setEmail(rs.getString("f_email"));
                m.setStatus(rs.getInt("f_status"));
                data.add(m);
            }
            db.diskonek(rs);
        } catch (SQLException ex) {
            System.out.println("Terjadi Kesalah Saat menampilkan Cari ID" + ex);
        }
        return data;
    }

    public void hapus() {
        String sql = "DELETE FROM t_lokasi WHERE f_id_lokasi='" + id_lokasi + "'"; // System.out.println("");
        db.simpanData(sql);
    }
}
