/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.uams;

/**
 *
 * @author arnab
 */
import com.itextpdf.text.*;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.Random;
public class AdmitCard {
    public void genPDF(String reg, Applicant applicant ) throws IOException, DocumentException, URISyntaxException {
        Document document = new Document();
        String loc ="C:\\Users\\arnab\\OneDrive\\Documents\\NetBeansProjects\\UAMS\\web\\AdmitCards\\";
        String filename = loc+ reg+".pdf";
        PdfWriter.getInstance((com.itextpdf.text.Document) document, new FileOutputStream(filename));

        document.open();
        Font font = FontFactory.getFont(FontFactory.COURIER, 16, BaseColor.BLACK);
        int roll = 10000+ Math.abs(new Random().nextInt()%10000);
        String admissionroll = String.valueOf(roll);
        String data = "Name                : "+applicant.getName()+"\n"+
                      "Admission Test Roll : "+ admissionroll +"\n"+
                      "Registration No     : " +applicant.getRegno()+"\n"+
                      "HSC Roll            : " + applicant.getRoll()+"\n"+
                      "GPA                 : " +applicant.getGPA()+"\n"+
                      "Email               : " +applicant.getEmail()+"\n"+"\n"+"\n"+
                      "Venue\t:Bangladesh University of Professionals,Mirpur Cantonment,Dhaka-1216\n"+
                      "Time \t: 10:00 AM ,1 March 2021\n";
        Paragraph paragraph = new Paragraph(new Chunk("\t\t\tAdmit Card \n", font));
        paragraph.add(new Chunk(data, font));


        document.add(paragraph);
        document.close();

    }
}
