package business;

/**
 *
 * @author Tom Valli
 */
public class AnnuityMonth {
    private int month;
    private double bbal, deposit, depositEnd, intearn, ebal;
    
    public AnnuityMonth() {
        this.month = 0;
        this.bbal = 0;
        this.deposit = 0;
        this.depositEnd = 0;
        this.intearn = 0;
        this.ebal = 0;
    }
    public AnnuityMonth(int m, double bb, double dep, double dep2, double ie, double eb) {
        this.month = m;
        this.bbal = bb;
        this.deposit = dep;
        this.depositEnd = dep2;
        this.intearn = ie;
        this.ebal = eb;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public double getBbal() {
        return bbal;
    }

    public void setBbal(double bbal) {
        this.bbal = bbal;
    }

    public double getDeposit() {
        return deposit;
    }

    public void setDeposit(double deposit) {
        this.deposit = deposit;
    }
    
    public double getDepositEnd() {
        return depositEnd;
    }

    public void setDepositEnd(double deposit2) {
        this.depositEnd = deposit;
    }

    public double getIntearn() {
        return intearn;
    }

    public void setIntearn(double intearn) {
        this.intearn = intearn;
    }

    public double getEbal() {
        return ebal;
    }

    public void setEbal(double ebal) {
        this.ebal = ebal;
    }
}
