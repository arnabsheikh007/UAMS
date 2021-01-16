package com.uams;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.

/**
 *
 * @author arnab
 */
public class Applicant {
	private String name,pass,regno,email,roll,gpa,payment;
        //double gpa;
        //boolean payment=false;

	public Applicant() {
		super();
	}

	public Applicant(String name, String pass, String regno, String email,String roll,String gpa,String payment) {
		super();
		this.name = name;
		this.pass = pass;
		this.regno = regno;
		this.email = email;
                this.roll =roll;
                this.gpa=gpa;
                this.payment = payment;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getRegno() {
		return regno;
	}

	public void setRegno(String regno) {
		this.regno = regno;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	public String getRoll(){
            return roll;
        } 
        public void setRoll(String roll){
            this.roll =roll;
        }
        public String getGPA(){
            return gpa;
        }
        public void setGPA(String gpa){
            this.gpa=gpa;
        }
	public String getPayment(){
            return payment;
        }
        public void setPayment(String payment){
            this.payment =payment;
        }
}
