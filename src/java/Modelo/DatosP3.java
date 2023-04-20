/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author filip
 */
public class DatosP3 {
    
    //No lo quiten porque si no no jala
    
    
    private double n1;
    private double n2;
    private double n3;
    private double nMayor;

    public DatosP3() {
    }

    public DatosP3(double n1, double n2, double n3, double nMayor) {
        this.n1 = n1;
        this.n2 = n2;
        this.n3 = n3;
        this.nMayor = nMayor;
    }

    public double getnMayor() {
        return nMayor;
    }

    public void setnMayor(double nMayor) {
        this.nMayor = nMayor;
    }

    public double getN1() {
        return n1;
    }

    public void setN1(double n1) {
        this.n1 = n1;
    }

    public double getN2() {
        return n2;
    }

    public void setN2(double n2) {
        this.n2 = n2;
    }

    public double getN3() {
        return n3;
    }

    public void setN3(double n3) {
        this.n3 = n3;
    }
}
