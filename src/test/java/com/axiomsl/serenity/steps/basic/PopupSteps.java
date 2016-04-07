package com.axiomsl.serenity.steps.basic;

import com.axiomsl.serenity.actions.PopupAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.is;

/**
 * Created by kfilippov on 04.03.2016.
 */
public class PopupSteps extends ScenarioSteps {

    PopupAction action;

    //region Assertions

    @Step
    public void should_see_popup_with_label_text(String labelText) {
        assertThat(action.get_label_text(), is(labelText));
    }

    @Step
    public void should_see_popup_with_header_text(String headerText) {
        assertThat(action.get_header_text(), is(headerText));
    }

    //endregion Assertions

    //region Conditions

    @Step
    public void close() {
        action.close();
    }

    @Step
    public void maximize() {
        action.maximize();
    }

    @Step
    public void restore() {
        action.restore();
    }

    @Step
    public String get_label_text() {
        return action.get_label_text();
    }

    @Step
    public String get_header_text() {
        return action.get_header_text();
    }

    //endregion Conditions
}
