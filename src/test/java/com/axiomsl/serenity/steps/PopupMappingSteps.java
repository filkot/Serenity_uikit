package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.steps.serenity.PopupSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;

/**
 * Created by kfilippov on 05.03.2016.
 */
public class PopupMappingSteps {
    @Steps
    PopupSteps step;

    //When
    @When("the user close popup")
    public void whenTheUserClosePopup() {
        step.close();
    }

    @When("the user maximize popup")
    public void whenTheUserMaximizePopup() {
        step.maximize();
    }

    @When("the user restore popup")
    public void whenTheUserRestorePopup() {
        step.restore();
    }

    //Then
    @Then("they should see popup with label '$text'")
    public void thenTheyShouldSeePopupWithLabelText(String labelText) {
        step.should_see_popup_with_label_text(labelText);
    }

    @Then("they should see popup with header '$text'")
    public void thenTheyShouldSeePopupWithHeaderText(String headerText) {
        step.should_see_popup_with_header_text(headerText);
    }
}
