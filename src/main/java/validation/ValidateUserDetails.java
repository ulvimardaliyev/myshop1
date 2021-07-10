package validation;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ValidateUserDetails {

    private static final Pattern VALID_PASSWORD =
            Pattern.compile("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=*])(?=\\S+$).{8,}$");
    private static final Pattern VALID_EMAIL_ADDRESS_REGEX =
            Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);

    public static boolean validate(String email, String password) {

        boolean isValidate = validateEmail(email) && validatePassword(password);
        return isValidate;
    }


    private static boolean validatePassword(String pass) {
        Matcher matcher = VALID_PASSWORD.matcher(pass);
        return matcher.find();
    }

    private static boolean validateEmail(String emailStr) {
        Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(emailStr);
        return matcher.find();
    }
}
