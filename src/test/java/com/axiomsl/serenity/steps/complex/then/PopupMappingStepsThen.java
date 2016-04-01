package com.axiomsl.serenity.steps.complex.then;

import com.axiomsl.serenity.steps.basic.PopupSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;

/**
 * Created by kfilippov on 05.03.2016.
 */
public class PopupMappingStepsThen {

    //region @Steps

    @Steps
    PopupSteps step;

    //endregion @Steps

    //region @Then

    @Then("the user should see popup with label '$text'")
    public void thenTheyShouldSeePopupWithLabelText(String labelText) {
        step.should_see_popup_with_label_text(labelText);
    }

    @Then("the user should see popup with header '$text'")
    public void thenTheyShouldSeePopupWithHeaderText(String headerText) {
        step.should_see_popup_with_header_text(headerText);
    }

    //endregion @Then
}
