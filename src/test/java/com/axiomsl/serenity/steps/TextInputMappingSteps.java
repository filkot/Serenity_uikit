package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.steps.serenity.TextInputSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;


public class TextInputMappingSteps {

    @Steps
    TextInputSteps step;

    //WHEN
    @When("the user type text '$text' in text field")
    public void whenTheUserTypeToTheTextField(String text) {
        step.type_in_text_field(text);
    }

    //THEN
    @Then("they should see the textField")
    public void thenTheyShouldSeeATextField() {
        step.should_see_text_field();
    }

    @Then("they should not see the textField")
    public void thenTheyShouldNotSeeATextField() {
        step.should_not_see_text_field();
    }


}
