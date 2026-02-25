public class AccountHelper {
    public static Integer getAccountCount(){
        return [SELECT COUNT() FROM Account];
    }
}