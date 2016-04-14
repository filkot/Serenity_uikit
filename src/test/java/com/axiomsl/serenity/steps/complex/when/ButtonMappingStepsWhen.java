package com.axiomsl.serenity.steps.complex.when;

import com.axiomsl.serenity.steps.basic.ButtonSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Alias;
import org.jbehave.core.annotations.When;

public class ButtonMappingStepsWhen {

    //region @Steps

    @Steps
    ButtonSteps step;

    //endregion @Steps

    //region @When

    @When("the user {clicks|presses} on '$buttonName' button")
    @Alias("the user {clicks|presses} on '$itemName' item")
    public void whenTheUserClicksOnTheButton(String buttonName) {
        step.click_button_by_name(buttonName);
    }

    @When("the user {clicks|presses} on '$buttonName' URL button")
    public void whenTheUserClicksOnTheURLButton(String buttonName) {
        step.click_url_button_by_name(buttonName);
    }

    @When("the user right clicks on '$buttonName' button")
    public void whenTheUserRightClicksOnTheButton(String buttonName) {
        step.right_click_button_by_name(buttonName);
    }

    @When("the user hovers on '$buttonName' button")
    public void whenTheUserHoverOnTheButton(String buttonName) {
        step.hover_on_button_by_name(buttonName);
    }

    //endregion @When
}