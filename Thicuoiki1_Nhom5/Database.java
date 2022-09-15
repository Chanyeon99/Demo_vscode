import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;
public class Database {
    //làm việc với file user.txt
    public boolean writeDatabase(String user_name, String password, String email){
        try {
            //tìm và ghi vào file
            FileWriter writer = new FileWriter("user.txt");
            writer.write(user_name+" "+password+" "+email);
            writer.close();
            return true;
        } catch (IOException e) {
            //nếu có lỗi xảy ra thì in ra:
            System.out.println("Không thể ghi dữ liệu");
            return false;
        }
    }
    public String readDatabase(){
        try {
            //tìm và đọc file, file này chỉ có duy nhất 1 dòng nên không cần vòng lặp
            File db = new File("user.txt");
            Scanner reader = new Scanner(db);
            String data = reader.nextLine();
            reader.close();
            return data;
        } catch (FileNotFoundException e) {
            //nếu có lỗi xảy ra thì trả về
            return "Database trống";
        }
    } 
    //làm việc với activicty tracking
    public boolean write_tracking_activities(String data){
        try{
            //tìm và ghi vào file
            PrintWriter writer2 = new PrintWriter(new FileWriter("activity_tracking.txt", true));
            writer2.append(data+"\n");
            writer2.close();
            return true;
        }catch(Exception e){
            //nếu có vấn đề xảy ra thì trả về
            return false;
        }
    }
    public String read_tracking_activity(){
        try {
            //tìm và đọc file
            File activity_tracking = new File("activity_tracking.txt");
            Scanner reader2 = new Scanner(activity_tracking);
            String results = "";
            //do file có thể có nhiều dòng nên cần dùng vòng lặp
            while(reader2.hasNextLine()){
                results += reader2.nextLine()+"\n";
                reader2.close();
            }
            return results;
        } catch (Exception e) {
            //nếu file có vấn đề thì trả về
            return "Không tìm thấy lịch sử";
        }
    }
    //hàm để xoá dữ liệu file activity_Tracking.txt
    public void clear_tracking_activity(){
        try {
            //xoá dữ liệu bằng cách tìm file và ghi đè vào nó, ở đây ghi đè một ký tự trống
            FileWriter writer = new FileWriter("activity_tracking.txt");
            writer.write("");
            writer.close();
        } catch (IOException e) {
            //nếu có vấn đề thì in ra:
            System.out.println("Không thể xoá dữ liệu");
        }
    }


    //money tracking, hàm này dùng để theo dõi số dư của tài khoản
    public void write_money_tracking(Double root, Double balance){
        try {
            //tìm và ghi vào file
            FileWriter writer = new FileWriter("money_tracking.txt");
            writer.write(root+" "+balance);
            writer.close();
        } catch (IOException e) {
            System.out.println("Không thể ghi dữ liệu");
        }
    }
    //hàm dùng để đọc thông tin về số dư đã ghi ở hàm trên
    public String read_money_tracking(){
        try {
            //do nội dung file chỉ có 1 dòng nên ko cần vòng lặp
            File db = new File("money_tracking.txt");
            Scanner reader = new Scanner(db);
            String data = reader.nextLine();
            reader.close();
            return data;
        } catch (FileNotFoundException e) {
            return "Database trống";
        }
    }
}
