package com.axiomsl.serenity.steps.serenity;

import com.axiomsl.serenity.actions.ButtonAction;
import com.axiomsl.serenity.actions.CheckBoxAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.hasItem;
import static org.hamcrest.Matchers.is;
import static org.hamcrest.Matchers.not;
import static org.hamcrest.Matchers.equalTo;


public class ButtonSteps extends ScenarioSteps {

    ButtonAction action;

    @Step
    public void should_see_button_with_text(String text) {
        assertThat(action.get_button_text(), is(text));
    }

    @Step
    public void click_button_by_name(String buttonName) {
        action.click_button_by_name(buttonName);
    }



}