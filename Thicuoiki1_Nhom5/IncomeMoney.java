public class IncomeMoney extends Activities{
    //khởi tạo tham số chứa số tiền ban đầu với truy cập private
    private double root_money;
    //các constructor của lớp
    public IncomeMoney(){
        this.root_money = 0;
    }
    public IncomeMoney(double income){
        this.root_money =income;
    }
    public IncomeMoney(double root_money, String reaso, String date_time, String locaton, String type){
        super(date_time, reaso, locaton,type);
        this.root_money = root_money;
    }

    //hàm thêm tiền vào tài khoàn
    public boolean addIncome(double icome_moneyy){
        try{
            //cộng số tiền muốn thêm vào số tiền gốc
            root_money += icome_moneyy;
            return true;
        }catch(Exception e){
            return  false;
        }
    }

    //setter và getter cho root(tiền gốc)
    public double getRoot(){
        return this.root_money;
    }
    public void setRoot(double fee){
        this.root_money = fee;
    }
    //hàm tính toán số dư
    public void rootCalculate(double fee){
        this.root_money -= fee;
    }
    //hàm lấy về số dư
    public double getBalance(){
        return this.root_money;
    }
    public void calculateBalance(double fee){
        this.root_money-= fee;
    }

    @Override
    public String activity_Tracking(String reason) {
        return "Tài khoản có giao động bởi hành động "+reason;
    }
//overload các phương thức với các tham số khác nhau để đưa ra những kết quả thích hợp
    public String activity_Tracking(double fee){
        return "Nạp "+fee+" vào tài khoản, số dư hiện tại là "+this.root_money+"!";
    }
    public String activity_Tracking(double fee, String reason){
        this.root_money+=fee; 
        return "Tài khoản được cộng "+fee+" bởi hành động "+reason+", số dư hiện tại là: "+this.root_money+"!";
    }
    public String activity_Tracking(double fee, String reason, String date_time){
        this.root_money += fee;
        return "Tài khoản được cộng "+fee+" bởi hành động "+reason+" vào thời điểm "+date_time+", số dư hiện giờ là: "+this.root_money+"!";
    }
    public String activity_Tracking(double fee, String reaso, String date_time, String locaton){
        this.root_money += fee;
        return "Tài khoản được cộng "+fee+" bởi hành động "+reaso+" vào thời điểm "+date_time+" tại "+locaton+", số dư hiện giờ là: "+this.root_money+"!";
    }

}