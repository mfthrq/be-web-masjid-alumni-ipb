package com.example.webmai.models;

public class Ulasan {
    private int id_review;
    private String nama_review;
    private String email_review;
    private int selected_rating;
    private String deskripsi_review;

    public Ulasan() {

    }

    public Ulasan(int id_review, String nama_review, String email_review, int selected_rating, String deskripsi_review) {
        this.id_review = id_review;
        this.nama_review = nama_review;
        this.email_review = email_review;
        this.selected_rating = selected_rating;
        this.deskripsi_review = deskripsi_review;
    }

    public void setId_review(int id_review) {
        this.id_review = id_review;
    }

    public int getId_review() {
        return id_review;
    }

    public void setNama_review(String nama_review) {
        this.nama_review = nama_review;
    }

    public String getNama_review() {
        return nama_review;
    }

    public void setEmail_review(String email_review) {
        this.email_review = email_review;
    }

    public String getEmail_review() {
        return email_review;
    }

    public void setSelected_rating(int selected_rating) {
        this.selected_rating = selected_rating;
    }

    public int getSelected_rating() {
        return selected_rating;
    }

    public void setDeskripsi_review(String deskripsi_review) {
        this.deskripsi_review = deskripsi_review;
    }

    public String getDeskripsi_review() {
        return deskripsi_review;
    }
}
