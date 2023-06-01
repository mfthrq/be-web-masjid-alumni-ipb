package com.example.webmai.controllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.webmai.models.Laporan;

import ch.qos.logback.classic.Logger;

@Controller
public class LaporanController {

    private String url = "jdbc:postgresql://localhost:5432/db-masjid";
    private String user = "postgres";
    private String password = "mfthrq17";

    private String connStatus = "Disconnected";
    private String connMessage = "";

    private Connection conn;
    private Statement stmnt;
    private String sql;

    @RequestMapping("/laporan-admin")
    public String laporan_admin(Model model) {
        try {
            Class.forName("org.postgresql.Driver");

            conn = DriverManager.getConnection(url, user, password);

            connStatus = "Connected";
            stmnt = conn.createStatement();
            sql = "SELECT * FROM public.tblreport";

            ResultSet rs = stmnt.executeQuery(sql);
            List<Laporan> data = new LinkedList<>();

            while (rs.next()) {
                Laporan laporan = new Laporan();
                laporan.set_id_report(rs.getInt("id_report"));
                laporan.set_nama_report(rs.getString("nama_report"));
                laporan.set_email_report(rs.getString("email_report"));
                laporan.set_deskripsi_report(rs.getString("deskripsi_report"));

                data.add(laporan);
            }

            model.addAttribute("data", data);
        } catch (Exception e) {

            connMessage = e.getMessage();

        }

        model.addAttribute("connStatus", connStatus);
        model.addAttribute("connMessage", connMessage);

        return "laporan-admin";
    }

    @RequestMapping(value = "/save-laporan", method = RequestMethod.POST)
    public String save_laporan(@RequestParam String nama_report, @RequestParam String email_report,
        @RequestParam String deskripsi_report, Model model) {

        connStatus = "Disconnected";
        connMessage = "";

        // Create a new Laporan object and set its properties
        Laporan laporan = new Laporan();
        laporan.set_nama_report(nama_report);
        laporan.set_email_report(email_report);
        laporan.set_deskripsi_report(deskripsi_report);

        try {
            Class.forName("org.postgresql.Driver");

            conn = DriverManager.getConnection(url, user, password);

            connStatus = "Connected";
            stmnt = conn.createStatement();
            sql = "INSERT INTO tblreport (nama_report, email_report, deskripsi_report) VALUES ('"
                    + laporan.get_nama_report() + "', '" + laporan.get_email_report() + "', '"
                    + laporan.get_deskripsi_report() + "')";
            stmnt.execute(sql);

        } catch (Exception e) {
            connMessage = e.getMessage();
        }

        model.addAttribute("connStatus", connStatus);
        model.addAttribute("connMessage", connMessage);

        return "redirect:/laporan";
    }

    @RequestMapping("/delete-laporan")
    public String delete_laporan(Model model, @RequestParam Integer id_report) {

        connStatus = "Disconnected";
        connMessage = "";

        try {

            Class.forName("org.postgresql.Driver");

            conn = DriverManager.getConnection(url, user, password);

            connStatus = "Connected";
            stmnt = conn.createStatement();
            sql = "DELETE FROM public.tblreport WHERE id_report='" + id_report + "'";

            stmnt.execute(sql);

        } catch (Exception e) {

            connMessage = e.getMessage();

        }

        model.addAttribute("connStatus", connStatus);
        model.addAttribute("connMessage", connMessage);

        return "redirect:/laporan-admin";
    }

    @RequestMapping("/edit-laporan")
    public String edit_laporan(Model model, @RequestParam Integer id_report) {
        try {

            Class.forName("org.postgresql.Driver");

            conn = DriverManager.getConnection(url, user, password);

            connStatus = "Connected";
            stmnt = conn.createStatement();
            sql = "SELECT * FROM public.tblreport WHERE id_report='" + id_report + "'";

            ResultSet rs = stmnt.executeQuery(sql);

            rs.next();
            Laporan laporan = new Laporan(rs.getInt("id_report"), rs.getString("nama_report"),
                    rs.getString("email_report"), rs.getString("deskripsi_report"));

            model.addAttribute("laporan", laporan);

        } catch (Exception e) {

            connMessage = e.getMessage();

        }

        model.addAttribute("connStatus", connStatus);
        model.addAttribute("connMessage", connMessage);

        return "edit-laporan";
    }

    @RequestMapping(value = "/update-laporan", method = RequestMethod.POST)
    public String update_laporan(@RequestParam Integer id_report, @RequestParam String nama_report, @RequestParam String email_report, @RequestParam String deskripsi_report, Model model) {

        connStatus = "Disconnected";
        connMessage = "";

        Laporan laporan = new Laporan();
        laporan.set_id_report(id_report);
        laporan.set_nama_report(nama_report);
        laporan.set_email_report(email_report);
        laporan.set_deskripsi_report(deskripsi_report);

        try {
            Class.forName("org.postgresql.Driver");

            conn = DriverManager.getConnection(url, user, password);

            connStatus = "Connected";
            stmnt = conn.createStatement();
            sql = "UPDATE public.tblreport SET nama_report = '" + laporan.get_nama_report() + "', email_report = '"
            + laporan.get_email_report() + "', deskripsi_report = '" + laporan.get_deskripsi_report() + "' WHERE id_report = '" + laporan.get_id_report() + "'";

            stmnt.execute(sql);

        } catch (Exception e) {
            connMessage = e.getMessage();
        }

        model.addAttribute("connStatus", connStatus);
        model.addAttribute("connMessage", connMessage);

        return "redirect:/laporan-admin";
    }

    @RequestMapping("/laporan")
    public String laporan() {
        return "laporan";
    }

}
