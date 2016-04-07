package com.axiomsl.serenity.steps.basic;

import com.axiomsl.serenity.actions.NotificationAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.is;

/**
 * Created by kfilippov on 15.03.2016.
 */
public class NotificationSteps extends ScenarioSteps {

    NotificationAction action;

    //region Assertions

    @Step
    public void should_see_notification_with_text(String text) {
        assertThat(action.is_notification_with_text(text), is(true));
    }

    @Step
    public void should_not_see_notification_with_text(String text) {
        assertThat(action.is_notification_with_text(text), is(false));
    }

    //endregion Assertions

    //region Conditions

    @Step
    public void click_on_notification_with_text(String text) {
        action.click(text);
    }

    //endregion Conditions
}
