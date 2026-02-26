public class AccountHelper {
    public static Integer getAccountCount(){
        //This is added comment
        //new line added
        //new change in the file
        return [SELECT COUNT() FROM Account];
    }
}