package com.axiomsl.serenity.steps.serenity;

import com.axiomsl.serenity.actions.LabelAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.is;


public class LabelSteps extends ScenarioSteps {

    LabelAction action;

    @Step
    public void should_see_label_with_text(String text) {
        assertThat(action.get_label_text(), is(text));
    }


}