public class Activities {
    private String activity_type;//khai báo các thuộc tính của class dưới truy cập private
    private String time;
    private String reason;
    private String location;
    public Activities(){

    }
    //constructor cho class
    public Activities(String time, String reason, String location, String activity_type){
        this.activity_type = activity_type;
        this.time = time;
        this.reason = reason;
        this.location = location;
    }
    
    //hàm theo dõi các hoạt động giao dịch
    public String activity_Tracking(String reason){
        return "";
    }
}