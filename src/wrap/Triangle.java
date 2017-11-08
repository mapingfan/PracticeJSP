package wrap;

import java.io.Serializable;

public class Triangle implements Serializable {
    private double sideA;
    private double sideB;
    private double sideC;
    private boolean triangle;
    private double area;

    public Triangle() {
    }

    public double getSideA() {
        return sideA;
    }

    public void setSideA(double sideA) {
        this.sideA = sideA;
    }

    public double getSideB() {
        return sideB;
    }

    public void setSideB(double sideB) {
        this.sideB = sideB;
    }

    public double getSideC() {
        return sideC;
    }

    public void setSideC(double sideC) {
        this.sideC = sideC;
    }

    public boolean isTriangle() {
        triangle = sideA + sideB > sideC && sideB + sideC > sideA && sideC + sideA > sideB;
        return triangle;

    }

    public double getArea() {
        if (isTriangle()) {
            double q = (sideA + sideB + sideC) / 2;
            area = Math.sqrt(q * (q - sideA) * (q - sideB) * (q - sideC));
        } else {
            area = 0;
        }
        return area;
    }
}
