//Nhóm 5 đề 5
import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double root_balance = 0;
        double final_balance = 0;
        Database db = new Database();
        IncomeMoney ic = new IncomeMoney();
        Expense sp = new Expense();
         boolean flag = true;
        while(flag){
            System.out.println("----------------------------CHÀO MỪNG BẠN ĐẾN VỚI ỨNG DỤNG QUẢN LÍ CHI TIÊU----------------------------");
            System.out.println("\t\t\t\t\t1. Đăng nhập");
            System.out.println("\t\t\t\t\t2. Đăng ký");
            System.out.println("\t\t\t\t\t3. Thoát");
            int choice1 = -1;
            try {
                choice1 = sc.nextInt();
            } catch (Exception e) {
                System.out.println("Vui lòng nhập số");
                break;
            }
            switch(choice1){
                case 1:
                    System.out.println("----------------------------Nhập thông tin đăng nhập----------------------------");
                    System.out.println("Tên đăng nhập: ");
                    sc = new Scanner(System.in);
                    String username = sc.nextLine();
                    System.out.println("Mật khẩu: ");
                    sc = new Scanner(System.in);
                    String password = sc.nextLine();
                    try{//lấy data của người dùng bên file user.txt, do nó có dạng: username passord (cách nhau 1 khoảng trắng) nên ta slpit nó ra 1 mảng
                        String[] user_data = db.readDatabase().split(" ");
                        String usn = user_data[0]; //so sánh thông tin người dùng đã nhập với thông tin bên database
                        if(user_data[0].equals(username) && user_data[1].equals(password)){
                            System.out.println("Đăng nhập thành công");
                            boolean flag2 = true;                   
                            while(flag2){        //file money_tracking.txt
                                String[] balance_data = db.read_money_tracking().split(" ");     //in ra lời chao và số dư                    
                                System.out.println("----------------------------Xin chào "+usn+", số dư hiện tại: "+balance_data[1]+", xin mời lựa chọn chức năng----------------------------");
                                System.out.println("\t\t\t\t\t1. Thêm thu nhập");
                                System.out.println("\t\t\t\t\t2. Thêm chi tiêu");
                                System.out.println("\t\t\t\t\t3. Thống kê và đánh giá");
                                System.out.println("\t\t\t\t\t4. Quay về đăng nhập");
                                System.out.println("\t\t\t\t\t5. Thoát chương trình");
                                int choice2 = sc.nextInt();
                                switch(choice2){
                                    case 1:
                                        try {
                                            if(balance_data[0].equals("0")){
                                                System.out.println("Nhập số dư để khởi tạo: ");
                                                double root_price = 0;
                                                try{
                                                    root_price = sc.nextDouble();
                                                    //gán root balance bằng số tiền người dùng nhập vào, roo_balance sẽ chỉ thay đổi khi người dùng nạp tiền
                                                    root_balance = root_price;
                                                    //đồng thời gán final_balance bằng root(vì số tiền ban đầu phải cân bằng)
                                                    final_balance = root_balance;                                                  
                                                    db.write_money_tracking(root_price, final_balance);  //ghi hoạt động vào file theo dõi
/*initialize incomemoney vs số tiền user nhập vào*/ ic = new IncomeMoney(root_price);                                                 
                                                    db.write_tracking_activities(ic.activity_Tracking(root_price));   //ghi hoạt động vào file theo dõi
                                                    System.out.println("Khởi tạo thành công");
                                                }catch(Exception e){
                                                    System.out.println("Số tiền lỗi");
                                                }
                                            }else{                                              
                                                Boolean flag3 = true; //flag3 có chức năng như flag1 và flag2
                                                while(flag3){
                                                    System.out.println("----------------------------Lựa chọn chức năng----------------------------");
                                                    System.out.println("\t\t\t\t\t1. Nạp thêm tiền vào tài khoản");
                                                    System.out.println("\t\t\t\t\t2. Quay về");
                                                    System.out.println("\t\t\t\t\t3. Thoát chương trình");
                                                    int choi_3 = sc.nextInt();
                                                    switch(choi_3){
                                                        case 1:
                                                            System.out.println("----------------------------Nhập các thông tin dưới đây----------------------------");
                                                            System.out.println("Nhập nội dung, lí do nạp thêm: ");
                                                            sc = new Scanner(System.in);
                                                            String income_reason = sc.nextLine();
                                                            System.out.println("Nhập số tiền cần nạp: ");
                                                            double income_fee = sc.nextDouble();
                                                            root_balance += income_fee;        //vì là nạp tiền nên ta tiếp tục tăng số tiền gốc lên
                                                            final_balance = root_balance;
                                                            db.write_money_tracking(root_balance, final_balance);
                                                            System.out.println("Ngày tháng năm và thời gian: ");
                                                            sc = new Scanner(System.in);
                                                            String income_dob = sc.nextLine();
                                                            //ghi hoạt động vào file theo dõi
                                                            db.write_tracking_activities(ic.activity_Tracking(income_fee, income_reason, income_dob));
                                                            System.out.println("Thêm thành công");
                                                            break;
                                                        case 2:
                                                            flag3 = false;
                                                            break;
                                                        case 3:
                                                            System.out.println("Đang thoát...");                                             
                                                            Thread.sleep(1000);              //slepp để tạm dừng chương trình 1s
                                                            System.exit(0);
                                                            break;
                                                        default:  //nếu chọn khác trên menu                                                     
                                                        System.out.println("Lựa chọn không hợp lệ, vui lòng chọn lại");
                                                    }
                                                }
                                            }
                                            Thread.sleep(1000);
                                        } catch (Exception e) {
                                            System.out.println("Khởi tạo thất bại, có lỗi xảy ra!");
                                        }
                                        break;
                                    case 2:
                                        try {                   //lflag 4 có tác dụng như các flag còn lại                        
                                            Boolean flag4 = true;
                                            while(flag4){
                                                System.out.println("----------------------------Nhập lựa chọn----------------------------");
                                                System.out.println("\t\t\t\t\t1. Rút tiền");
                                                System.out.println("\t\t\t\t\t2. Thêm khoản chi tiêu");
                                                System.out.println("\t\t\t\t\t3. Quay lại");
                                                System.out.println("\t\t\t\t\t4. Thoát chương trình");
                                                int choice3 = sc.nextInt();
                                                switch(choice3){
                                                    case 1:
                                                        System.out.println("Nhập số tiền cần rút: ");
                                                        double rut_money = sc.nextDouble();
                                                        //nếu số tiền muốn rút vượt quá số dư thì ko cho rút
                                                        if(rut_money > ic.getBalance()){
                                                            System.out.println("Số tiền rút không thể vượt quá số dư");
                                                        }else{
                                                            System.out.println("Nhập ghi chú hoặc lí do rút tiền: ");
                                                            sc = new Scanner(System.in);
                                                            String rut_reason = sc.nextLine();
                                                            //trừ final_balance bằng số tiền bị rút ra
                                                            final_balance -= rut_money;
                                                            db.write_money_tracking(root_balance, final_balance);
                                                            Double x = ic.getRoot();
                                                            db.write_tracking_activities(sp.activity_Tracking(rut_money, rut_reason, x));
        /*ghi vào file theo dõi    */                         ic.setRoot(x);
                                                            System.out.println("Rút tiền thành công");
                                                            Thread.sleep(1000);
                                                        }
                                                        break;
                                                    case 2:
                                                        System.out.println("Nhập chi phí cho khoản chi tiêu: ");
                                                        double ct_fee = sc.nextDouble();
                                                        sc = new Scanner(System.in);
                                                        System.out.println("Nhập lí do hoặc ghi chú: ");
                                                        String ct_reason = sc.nextLine();
                                                        sc = new Scanner(System.in);
                                                        System.out.println("Nhập ngày tháng và thời gian: ");
                                                        String ct_dob = sc.nextLine();
                                                        double xx = ic.getBalance();
                                                        //trừ final_balance bằng số tiền ng dùng rút ra
                                                        final_balance -= ct_fee;
 /*ghi vào file theo dõi       */                       db.write_money_tracking(root_balance, final_balance);
                                                        db.write_tracking_activities(sp.activity_Tracking(ct_fee, ct_reason, ct_dob, xx));
                                                        ic.setRoot(xx);
                                                        System.out.println("Thêm thành công");
                                                        Thread.sleep(1000);
                                                        break;
                                                    case 3:
                                                        flag4 = false;
                                                        break;
                                                    case 4:
                                                        System.out.println("Đang thoát...");
                                                        Thread.sleep(1000);
                                                        System.exit(0);
                                                        break;
                                                    default:         //nếu chọn khác trên menu
                                                    System.out.println("Lựa chọn không hợp lệ, vui lòng chọn lại");
                                                }
                                            }
                                        } catch (Exception e) {
                                            System.out.println("Có lỗi xảy ra!");
                                        }
                                        break;
                                    case 3:
                                        Boolean flag4 = true;
                                        while(flag4){
                                            System.out.println("------------------------Lựa chọn chức năng-----------------");
                                            System.out.println("\t\t\t1. Thống kê giao dịch");
                                            System.out.println("\t\t\t2. Phân tích tổng thể");
                                            System.out.println("\t\t\t3. Quay lại");
                                            System.out.println("\t\t\t4. Xoá lịch sử giao dịch");
                                            System.out.println("\t\t\t5. Thoát chương trình");
                                            int choice4 = sc.nextInt();
                                            switch(choice4){
                                                case 1:            //dùng luôn hàm thống kê bên database
                                                    System.out.println(db.read_tracking_activity());
                                                    break;
                                                case 2:
                                                    String[] balance_da = db.read_money_tracking().split(" ");
                                                    System.out.println("-----------------Tổng quan-------------");
                                                    //đưa ra so tiền người dùng đã nạp vào và chi tiêu
                                                    Double a = Double.parseDouble(balance_da[0]);
                                                    double b = Double.parseDouble(balance_da[1]);
                                                    System.out.println("Tháng này bạn đã nạp vào "+balance_da[0]+", chi ra "+(a-b));
                                                    if(b > 0){
                                                        System.out.println("Số tiền còn dư: "+b);
                                                    }else{               //do tiền có thể bị âm nên ta cần chuyển qua số dương
                                                        System.out.println("Bạn cần nạp thêm "+(Math.abs(b)));
                                                    }
                                                    break;
                                                case 3:
                                                    flag4 = false;
                                                    break;
                                                case 4:
                                                    System.out.println("----------------Bạn có chắc xoá hết lịch sử giao dịch------------");
                                                    System.out.println("1. Có");
                                                    System.out.println("2. Không");
                                                    int choice5 = sc.nextInt();
                                                    if( choice5 == 1){
                                                        db.clear_tracking_activity();
                                                        System.out.println("Đang xoá lịch sử...");
                                                    }
                                                    break;
                                                case 5:
                                                    System.out.println("Đang thoát...");
                                                    Thread.sleep(1000);
                                                    System.exit(0);
                                                    break;
                                            }
                                        }
                                        break;
                                    case 4:
                                        flag2 = false;
                                        break;
                                    case 5:
                                        System.out.println("Đang tắt...");
                                        System.exit(0);
                                        break;
                                    default:
                                        System.out.println("Lựa chọn không hợp lệ, vui lòng chọn lại");
                                        break;
                                }
                            }
                        }else{
                            System.out.println("Tên tài khoản hoặc mật khẩu không chính xác");
                            Thread.sleep(1000);
                        }
                    }catch(Exception e){
                        System.out.println("Đăng nhập thất bại, có lỗi xảy ra với file database");
                    }
                    break;
                case 2:
                    System.out.println("----------------------------Điền các thông tin để đăng ký----------------------------");
                    try{
                        System.out.println("Nhập email: ");
                        sc = new Scanner(System.in);
                        String email = sc.nextLine();
                        System.out.println("Nhập tên người dùng: ");
                        sc = new Scanner(System.in);
                        String user_name = sc.nextLine();
                        System.out.println("nhập mật khẩu: ");
                        sc = new Scanner(System.in);                   //ghi thông tin đăng ký vào file user.txt
                        String pass_word = sc.nextLine();    
                        db.writeDatabase(user_name, pass_word, email);
                        if(db.writeDatabase(user_name, pass_word, email)){   //nếu hàm trả về true thì thông báo thành công
                            System.out.println("Đăng ký thành công");
                        }else{                           //không thì thông báo thất bại
                            System.out.println("Đăng ký thất bại, có lỗi xảy ra với file database");
                        }
                    }catch(Exception e){                        //nếu có lỗi xảy ra thì:
                        System.out.println("Đăng ký thất bại, có lỗi xảy ra!");
                    }
                    break;
                default:                    //nếu chọn khác trên menu
                    System.out.println("Lựa chọn không hợp lệ, vui lòng chọn lại");
            }
        }    
    }
}