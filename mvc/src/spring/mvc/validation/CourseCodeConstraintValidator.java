package spring.mvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator implements ConstraintValidator<CourseCode, String> {

    private String coursePrefix;

    @Override
    public void initialize(CourseCode theCourseCode) {
        this.coursePrefix = theCourseCode.value();
    }

    @Override
    // theCode -> value entered by user at the website
    // context -> you can place additional error messages if needed
    public boolean isValid(String theCode, ConstraintValidatorContext context) {

        boolean result;

        // must check for null input i.e, user doesn't enter anything cases
        if (theCode != null) {
            result = theCode.startsWith(coursePrefix);
        } else {
            result = true;
        }
        return result;
    }
}
