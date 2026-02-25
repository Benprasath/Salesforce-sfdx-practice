public class AccountHelper {
    public static Integer getAccountCount(){
        //This is added comment
        return [SELECT COUNT() FROM Account];
    }
}