package wrap;

public class ComputeBean {
    private double op1;
    private double op2;
    private double result;
    private String operator;

    public ComputeBean() {
        result = -9999;
    }

    public void setOp1(double op1) {
        this.op1 = op1;
    }

    public void setOp2(double op2) {
        this.op2 = op2;
    }

    public double getOp1() {
        return op1;
    }

    public double getOp2() {
        return op2;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public double getResult() throws Exception {
        if (operator != null) {
            switch (operator) {
                case "+":
                    result = op1 + op2;
                    break;
                case "-":
                    result = op1 - op2;
                    break;
                case "*":
                    result = op1 * op2;
                    break;
                case "/":
                    if (op2 != 0) {
                        result = op1 / op2;
                    } else {
                        throw new Exception("除数为0");
                    }
                    break;
            }
        } else {
            result = -9999;
        }
        return result;
    }
}
