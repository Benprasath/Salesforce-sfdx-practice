public class AccountHelper {
    public static Integer getAccountCount(){
        //This is added comment
        //new line added
        return [SELECT COUNT() FROM Account];
    }
}