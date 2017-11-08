package wrap;

public class Triangle {
    private double sideA;
    private double sideB;
    private double sideC;
    private boolean isTriangle;
    private double area;

    public Triangle() {
    }

    /**
     *
     * 我们不替isTriangle, area设置setter,因为在jsp页面中，不需要设置这个属性，只需要获得。
     */



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

    public double getArea() throws Exception {
        if (isTriangle()) {
            double q = (sideA + sideB + sideC) / 2;
            area = Math.sqrt(q * (q - sideC) * (q - sideB) * (q - sideA));
            setArea(area);
        } else {
            throw new Exception("参数错误");
        }
        return area;
    }

    public boolean isTriangle() {
        if (sideA + sideB > sideC && sideB + sideC > sideA && sideC + sideA > sideB) {
            setTriangle(true);
        } else {
            setTriangle(false);
        }
        return isTriangle;
    }

    public void setTriangle(boolean triangle) {
        isTriangle = triangle;
    }

    public void setArea(double area) {
        this.area = area;
    }
}
