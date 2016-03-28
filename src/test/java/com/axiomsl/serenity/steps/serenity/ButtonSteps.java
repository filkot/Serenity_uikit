package com.axiomsl.serenity.steps.serenity;

import com.axiomsl.serenity.actions.ButtonAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.is;


public class ButtonSteps extends ScenarioSteps {

    ButtonAction action;


    @Step
    public void click_button_by_name(String buttonName) {
        action.click_button_by_name(buttonName);
    }
    @Step
    public void right_click_button_by_name(String buttonName) {
        action.right_click_button_by_name(buttonName);
    }

    @Step
    public void hover_on_button_by_name(String buttonName) {
        action.hover_on_button_by_name(buttonName);
    }

    @Step
    public void should_see_button_with_name(String name) {
        assertThat(action.get_button_text(), is(name));
    }

}