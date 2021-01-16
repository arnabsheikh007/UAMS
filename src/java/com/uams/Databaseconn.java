
package com.uams;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author arnab
 */
import java.sql.*;
import java.util.ArrayList;



public class Databaseconn {
	private String dburl="jdbc:mysql://localhost:3306/demo1";
	private String dbuser="root";
	private String dbpass="arnab";
	private String dbdriver="com.mysql.jdbc.Driver";
	
	public void loadDriver(String dbdriver)
	{
		try {
			Class.forName(dbdriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public Connection getConnection()
	{
		loadDriver(dbdriver);
		Connection con=null;
		try {
			con=DriverManager.getConnection(dburl, dbuser, dbpass);
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return con;
	}
	
	public Boolean insert(Applicant applicant)
	{
		Connection con=getConnection();
		///String result="Data Inserted Successfully :) ";
		Boolean ok=true;
		String sql="INSERT INTO demo1.Applicant VALUES(?,?,?,?,?,?,'DUE');";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, applicant.getRegno());
                        ps.setString(2, applicant.getName());
                        ps.setString(3, applicant.getRoll());
                        ps.setString(4, applicant.getGPA());
			ps.setString(5, applicant.getEmail());
			ps.setString(6, applicant.getPass());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			String result="Data not Inserted :( ";
                        System.out.println(result);
			ok=false;
		}
		
		return ok;
	}
	
	public Boolean checkPass(String user,String inputpass)
	{
		Connection con=getConnection();
		String sql="SELECT pass FROM demo1.Applicant WHERE registration=?;";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, user);
			ResultSet rs=ps.executeQuery();
			String passindb=null;
			while(rs.next())
			{
				passindb=rs.getString(1);
                             
			}
                        if(passindb==null)    return false;
			if(passindb.equals(inputpass))
			{
				return true;
			}
		} catch (SQLException | NullPointerException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}
	
        public Applicant getAllInfo(String regi)
	{
		Connection con=getConnection();
                Applicant applicant=null;
		String sql="SELECT * FROM demo1.Applicant WHERE registration=?;";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, regi);
                        ResultSet rs=ps.executeQuery();
			while(rs.next()){
                            String name = rs.getString(2);
                            String reg = rs.getString(1);
                            String roll = rs.getString(3);
                            String gpa = rs.getString(4);
                            String email = rs.getString(5);
                            String pass = rs.getString(6);
                            String payment = rs.getString(7);
                            applicant =new Applicant(name,pass,reg,email,roll,gpa,payment);
                        }
                        
			
		} catch (SQLException | NullPointerException e) {
                    // TODO Auto-generated catch block

		}
                return applicant;
	}
        public Boolean doPayment(String reg)
	{
		Connection con=getConnection();
		///String result="Data Inserted Successfully :) ";
		Boolean ok=true;
		String sql="UPDATE applicant SET payment='PAID' where registration = ? ;";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,reg);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			String result="Data not Inserted :( ";
                        System.out.println(result);
			ok=false;
		}
		
		return ok;
	}
        
        public ArrayList< Applicant> listAll(){
               ArrayList<Applicant> ret =  new ArrayList<>();
               Connection con=getConnection();
                Applicant applicant=null;
		String sql="SELECT * FROM demo1.Applicant";
		try {
                        Statement stmt = con.createStatement();
                        ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
                            String name = rs.getString(2);
                            String reg = rs.getString(1);
                            String roll = rs.getString(3);
                            String gpa = rs.getString(4);
                            String email = rs.getString(5);
                            String pass = rs.getString(6);
                            String payment = rs.getString(7);
                            applicant =new Applicant(name,pass,reg,email,roll,gpa,payment);
                            ret.add(applicant);
                        }
                        
			
		} catch (SQLException | NullPointerException e) {
                    // TODO Auto-generated catch block

		}
               return ret;
        }
}
