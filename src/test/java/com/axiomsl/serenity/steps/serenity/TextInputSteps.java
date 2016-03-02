package com.axiomsl.serenity.steps.serenity;

import com.axiomsl.serenity.actions.TextInputAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.is;


public class TextInputSteps extends ScenarioSteps {

    TextInputAction action;


    @Step
    public void should_see_text_field() {
        assertThat(action.isTextFieldDisplayed(), is(true));
    }

    @Step
    public void should_not_see_text_field() {
        assertThat(action.isTextFieldNotDisplayed(), is(true));
    }

    @Step
    public void type_in_text_field(String text) {
        action.type_in_text_field(text);
    }


}