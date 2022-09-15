
public class Expense extends Activities{
    //khởi tạo thuộc tính để chứa số tiền chi ra
    private double balance;
    //các constructor cho lớp
    public Expense(){
    }
    public Expense(double balance, String time, String reason, String location, String activity_type){
        super(time, reason, location,activity_type);
        this.balance = balance;
    }
    //hàm chi tiền
    public void addSpending_money(double money, double balance){
        //trừ số tiền gốc bằng chi phí(money)
        balance -= money;
    }    
    //ghi đè phương thức activity_Tracking bên lớp cha, đồng thời thể hiện tính đa hình
    @Override
    public String activity_Tracking(String reason) {
        return "Tài khoản bị trừ tiền bởi hành động "+reason+"!";
    }
    //overload các phương thức với các tham số khác nhau để đưa ra các kết quả phù hợp
    public String activity_Tracking(double fee, String reason, double balance){
        balance -= fee;
        return "Tài khoản bị trừ "+fee+" bởi hành động "+reason+", số dư hiện tại là: "+balance+"!";
    }
    public String activity_Tracking(double fee, String reason, String time, double balance){
        balance -= fee;
        return "Tài khoản bị trừ "+fee+"  bởi hành động "+reason+" vào thời điểm "+time+", số dư hiện tai là: "+balance+"!";
    }
    public String activity_Tracking(double fee, String reason, String time, String location, double balance){
        balance -= fee;
        return "Tài khoản bị trừ "+fee+" bởi hành động "+reason+" và thời điểm "+time+" tại "+location+", số dư hiện tại: "+balance+"!";
    }
}
