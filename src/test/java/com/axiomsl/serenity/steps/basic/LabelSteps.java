package com.axiomsl.serenity.steps.basic;

import com.axiomsl.serenity.actions.LabelAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.is;

public class LabelSteps extends ScenarioSteps {

    LabelAction action;

    //region Assertions

    @Step
    public void should_see_label_with_text(String text) {
        assertThat(action.is_label_with_text(text), is(true));
    }

    @Step
    public void should_not_see_label_with_text(String text) {
        assertThat(action.is_label_with_text(text), is(false));
    }

    //endregion Assertions
}