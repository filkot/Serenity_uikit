package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.steps.serenity.ButtonSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;


public class ButtonMappingSteps {

    @Steps
    ButtonSteps step;

    //WHEN
    @When("the user click button with name '$buttonName'")
    public void whenTheUserClickTheButton(String buttonName) {
        step.click_button_by_name(buttonName);
    }

    @When("the user hover on button with name '$buttonName'")
    public void whenTheUserHoverOnTheButton(String buttonName) {
        step.hover_on_button_by_name(buttonName);
    }

    //THEN
    @Then("they should see the button with text '$text'")
    public void thenTheyShouldSeeAButtonWithText(String text) {
        step.should_see_button_with_text(text);
    }


}
