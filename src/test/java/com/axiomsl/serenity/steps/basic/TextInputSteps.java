package com.axiomsl.serenity.steps.basic;

import com.axiomsl.serenity.actions.TextInputAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.is;

public class TextInputSteps extends ScenarioSteps {

    public static final String EMPTY_STRING = "";
    TextInputAction action;

    //region Assertions

    @Step
    public void should_see_text_field() {
        assertThat(action.isTextFieldDisplayed(), is(true));
    }

    @Step
    public void should_not_see_text_field() {
        assertThat(action.isTextFieldNotDisplayed(), is(true));
    }

    //endregion Assertions

    //region Conditions

    @Step
    public void type_in_text_field(String text) {
        action.type_in_text_field(text);
    }

    @Step
    public void enter_text_in_text_field_with_caption(String textInputCaption, String text) {
        if(text.equals("EMPTY_STRING")){
            text = EMPTY_STRING;
        }
        action.getTextInputByCaption(textInputCaption).type(text);
    }

    //endregion Conditions
}