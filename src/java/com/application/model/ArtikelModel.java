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
import java.util.Date;

/**
 *
 * @author eliteRaihan
 */
public class ArtikelModel {

    // String id, nama, alamat;
    String id_artikel, link_img, judul, konten;
    Date tgl_kegiatan = new Date();
    Koneksi db = null;

    public ArtikelModel() {
        db = new Koneksi();
    }

    public String getId_artikel() {
        return id_artikel;
    }

    public void setId_artikel(String id_artikel) {
        this.id_artikel = id_artikel;
    }

    public String getLink_img() {
        return link_img;
    }

    public void setLink_img(String link_img) {
        this.link_img = link_img;
    }

    public String getJudul() {
        return judul;
    }

    public void setJudul(String judul) {
        this.judul = judul; 
    }

    public String getKonten() {
        return konten;
    }

    public void setKonten(String konten) {
        this.konten = konten;
    }

    /**
     * @return the tgl_keiagatan
     */
    public Date getTgl_kegiatan() {
        return tgl_kegiatan;
    }

    /**
     * @param tgl_keiagatan the tgl_keiagatan to set
     */
    public void setTgl_kegiatan(Date tgl_keiagatan) {
        this.tgl_kegiatan = tgl_keiagatan;
    }

    public List tampil() {
        List<ArtikelModel> data = new ArrayList<ArtikelModel>();
        ResultSet rs = null;
        try {
            String sql = "SELECT * FROM t_artikel ORDER BY f_id_artikel ASC";
            rs = db.ambilData(sql);
            while (rs.next()) {
                ArtikelModel am = new ArtikelModel();
                am.setId_artikel(rs.getString("f_id_artikel"));
                am.setLink_img(rs.getString("f_link_img"));
                am.setJudul(rs.getString("f_judul"));
                am.setKonten(rs.getString("f_konten"));
                am.setTgl_kegiatan(rs.getDate("f_tgl_kegiatan"));
                data.add(am);
            }
            db.diskonek(rs);
        } catch (SQLException ex) {
            System.out.println("Terjadi Kesalahan Saat menampilkan data Artikel" + ex);
        }
        return data;
    }

    public void simpan() {
        String sql = "INSERT INTO t_artikel VALUES (null, '" + link_img + "', '" + judul + "', '" + konten + "', '" + tgl_kegiatan + "')";
        db.simpanData(sql);
    }

    public void update() {
        String sql = "UPDATE t_artikel SET f_link_img='" + link_img + "', f_judul='" + judul + "', f_konten='" + konten + "', f_tgl_kegiatan='" + tgl_kegiatan + "' WHERE f_id_artikel='" + id_artikel + "'";
        db.simpanData(sql);
    }

    public List cariID() {
        List<ArtikelModel> data = new ArrayList<ArtikelModel>();
        ResultSet rs = null;
        try {
            String sql = "SELECT * FROM t_artikel WHERE f_id_artikel='" + id_artikel + "'";
            rs = db.ambilData(sql);
            while (rs.next()) {
                ArtikelModel m = new ArtikelModel();
                m.setId_artikel(rs.getString("f_id_artikel"));
                m.setLink_img(rs.getString("f_link_img"));
                m.setJudul(rs.getString("f_judul"));
                m.setKonten(rs.getString("f_konten"));
                m.setTgl_kegiatan(rs.getDate("f_tgl_kegiatan"));
                data.add(m);
            }
            db.diskonek(rs);
        } catch (SQLException ex) {
            System.out.println("Terjadi Kesalah Saat menampilkan Cari ID" + ex);
        }
        return data;
    }

    public void hapus() {
        String sql = "DELETE FROM t_artikel WHERE f_id_artikel='" + id_artikel + "'"; // System.out.println("");
        db.simpanData(sql);
    }

}
