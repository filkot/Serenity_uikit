package com.axiomsl.serenity.steps.complex.then;

import com.axiomsl.serenity.steps.basic.DatePickerSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;

/**
 * Created by kfilippov on 29.03.2016.
 */
public class DatePickerMappingStepsThen {

    //region @Steps

    @Steps
    DatePickerSteps step;

    //endregion @Steps

    //region @Then

    @Then("the user should see the button with '$buttonName' name")
    public void thenTheUserShouldSeeButtonWithName(String buttonName) {

    }

    //endregion @Then
}
