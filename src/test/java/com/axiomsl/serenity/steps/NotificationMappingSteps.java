package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.steps.serenity.NotificationSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;

/**
 * Created by kfilippov on 15.03.2016.
 */
public class NotificationMappingSteps {

    @Steps
    NotificationSteps step;

    @When("the user clicks on the notification with text '$text'")
    public void whenTheUserClickOnTheNotification(String text) {
        step.click_on_notification_with_text(text);
    }


    @Then("the user should see the notification with text '$text'")
    public void thenTheyShouldSeeANotificationWithText(String text) {
        step.should_see_notification_with_text(text);
    }

    @Then("the user should not see the notification with text '$text'")
    public void thenTheyShouldNotSeeANotificationWithText(String text) {
        step.should_not_see_notification_with_text(text);
    }
}
