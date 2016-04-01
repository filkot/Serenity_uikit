package com.axiomsl.serenity.steps.complex.when;

import com.axiomsl.serenity.steps.basic.DatePickerSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.When;

import java.util.Date;

/**
 * Created by kfilippov on 29.03.2016.
 */
public class DatePickerMappingStepsWhen {

    //region @Steps

    @Steps
    DatePickerSteps step;

    //endregion @Steps

    //region @When

    @When("the user inputs the date '$date'")
    public void whenTheUserClicksOnTheButton(Date date) {
        step.set_date_in_date_picker(date);
    }

    //endregion @When
}