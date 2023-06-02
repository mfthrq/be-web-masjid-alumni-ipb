package com.example.webmai.models;

public class Laporan {
    private Integer id_report;
    private String nama_report;
    private String email_report;
    private String deskripsi_report;
    
    public Laporan() {
    }

    public Laporan(Integer id_report, 
    String nama_report, 
    String email_report, 
    String deskripsi_report) {
        this.id_report = id_report;
        this.nama_report = nama_report;
        this.email_report = email_report;
        this.deskripsi_report = deskripsi_report;
    }

    public void set_id_report(Integer id_report){
        this.id_report = id_report;
    }

    public Integer get_id_report(){
        return id_report;
    }

    public void set_nama_report(String nama_report){
        this.nama_report = nama_report;
    }

    public String get_nama_report(){
        return nama_report;
    }

    public void set_email_report(String email_report){
        this.email_report = email_report;
    }

    public String get_email_report(){
        return email_report;
    }

    public void set_deskripsi_report(String deskripsi_report){
        this.deskripsi_report = deskripsi_report;
    }

    public String get_deskripsi_report(){
        return deskripsi_report;
    }

}
