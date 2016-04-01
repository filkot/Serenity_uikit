package com.axiomsl.serenity.steps.complex.then;

import com.axiomsl.serenity.steps.basic.NotificationSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;

/**
 * Created by kfilippov on 15.03.2016.
 */
public class NotificationMappingStepsThen {

    //region @Steps

    @Steps
    NotificationSteps step;

    //endregion @Steps

    //region @Then

    @Then("the user should see the notification with text '$text'")
    public void thenTheyShouldSeeANotificationWithText(String text) {
        step.should_see_notification_with_text(text);
    }

    @Then("the user should not see the notification with text '$text'")
    public void thenTheyShouldNotSeeANotificationWithText(String text) {
        step.should_not_see_notification_with_text(text);
    }

    //endregion @Then
}
