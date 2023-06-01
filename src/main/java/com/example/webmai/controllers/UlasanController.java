package com.example.webmai.controllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.webmai.models.Ulasan;

@Controller
public class UlasanController {
    private String url = "jdbc:postgresql://localhost:5432/db-masjid";
    private String user = "postgres";
    private String password = "mfthrq17";

    private String connStatus = "Disconnected";
    private String connMessage = "";

    Connection conn;
    java.sql.Statement stmnt;
    String sql;
 
    @RequestMapping("/ulasan-admin")
    public String ulasan_admin(org.springframework.ui.Model model) {
        try {
            Class.forName("org.postgresql.Driver");

            conn = DriverManager.getConnection(url, user, password);

            connStatus = "Connected";

            stmnt = conn.createStatement();

            sql = "SELECT * FROM public.tblreview";

            ResultSet rs = stmnt.executeQuery(sql);

            List<Ulasan> data = new LinkedList<>();

            while (rs.next()) {
                Ulasan uls = new Ulasan();

                uls.setId_review(rs.getInt("id_review"));
                uls.setNama_review(rs.getString("nama_review"));
                uls.setEmail_review(rs.getString("email_review"));
                uls.setSelected_rating(rs.getInt("selected_rating"));
                uls.setDeskripsi_review(rs.getString("deskripsi_review"));

                data.add(uls);
            }

            model.addAttribute("data", data);
        } catch (Exception e) {
            // TODO: handle exception
            connMessage = e.getMessage();
        }

        model.addAttribute("connStatus", connStatus);
        model.addAttribute("connMessage", connMessage);

        return "ulasan-admin";
    }


    @RequestMapping("/save-ulasan")
    public String save(Model model, Ulasan uls) {
        try {
            Class.forName("org.postgresql.Driver");

            conn = DriverManager.getConnection(url, user, password);

            connStatus = "Connected";

            stmnt = conn.createStatement();

            sql = "INSERT INTO public.tblreview (nama_review, email_review, selected_rating, deskripsi_review) VALUES ('"+ uls.getNama_review() +"', '"+ uls.getEmail_review() +"', '"+ uls.getSelected_rating() +"', '"+ uls.getDeskripsi_review() +"')";

            stmnt.execute(sql);
        } catch (Exception e) {
            // TODO: handle exception
            connMessage = e.getMessage();
        }

        model.addAttribute("connStatus", connStatus);
        model.addAttribute("connMessage", connMessage);
        return "redirect:/ulasan";
    }

    @RequestMapping("/edit-ulasan")
    public String edit(Model model, @RequestParam int id_review) {
        try {
            Class.forName("org.postgresql.Driver");

            conn = DriverManager.getConnection(url, user, password);

            connStatus = "Connected";

            stmnt = conn.createStatement();

            sql = "SELECT * FROM public.tblreview WHERE id_review ='"+ id_review +"'";

            ResultSet rs = stmnt.executeQuery(sql);

            rs.next();

            Ulasan uls = new Ulasan(rs.getInt("id_review"), rs.getString("nama_review"), rs.getString("email_review"), rs.getInt("selected_rating"), rs.getString("deskripsi_review"));

            model.addAttribute("uls", uls);
        } catch (Exception e) {
            // TODO: handle exception
        }
        return "edit-ulasan";
    }

    @RequestMapping("/update-ulasan")
    public String update(@RequestParam int id_review, @RequestParam String nama_review, @RequestParam String email_review, @RequestParam int selected_rating, @RequestParam String deskripsi_review, Model model) {   

        connStatus = "Disconnected";
        connMessage = "";

        Ulasan uls = new Ulasan();
        uls.setId_review(id_review);
        uls.setNama_review(nama_review);
        uls.setEmail_review(email_review);
        uls.setSelected_rating(selected_rating);
        uls.setDeskripsi_review(deskripsi_review);

        try {
            Class.forName("org.postgresql.Driver");

            conn = DriverManager.getConnection(url, user, password);

            connStatus = "Connected";

            stmnt = conn.createStatement();

            sql = "UPDATE public.tblreview SET nama_review = '" + uls.getNama_review() + "', email_review = '"
            + uls.getEmail_review() + "', selected_rating = '" + uls.getSelected_rating() + "', deskripsi_review ='" + uls.getDeskripsi_review() + "' WHERE id_review = '" + uls.getId_review() + "'";

            stmnt.execute(sql);
        } catch (Exception e) {
            // TODO: handle exception
            connMessage = e.getMessage();
        }

        model.addAttribute("connStatus", connStatus);
        model.addAttribute("connMessage", connMessage);

        return "redirect:/ulasan-admin";
    }

    @RequestMapping("/delete-ulasan")
    public String delete(Model model, @RequestParam int id_review) {
        try {
            Class.forName("org.postgresql.Driver");

            conn = DriverManager.getConnection(url, user, password);

            connStatus = "Connected";

            stmnt = conn.createStatement();

            sql = "DELETE FROM public.tblreview WHERE id_review='"+id_review+"'";

            stmnt.execute(sql);
        } catch (Exception e) {
            // TODO: handle exception
            connMessage = e.getMessage();
        }

        model.addAttribute("connStatus", connStatus);
        model.addAttribute("connMessage", connMessage);
        
        return "redirect:/ulasan-admin";
    }

    @RequestMapping("/ulasan")
    public String ulasan() {
        return "ulasan";
    }

}
