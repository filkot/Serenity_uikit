package com.axiomsl.serenity.steps.complex.when;

import com.axiomsl.serenity.steps.basic.NotificationSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.When;

/**
 * Created by kfilippov on 15.03.2016.
 */
public class NotificationMappingStepsWhen {

    //region @Steps

    @Steps
    NotificationSteps step;

    //endregion @Steps

    //region @When

    @When("the user clicks on the notification with text '$text'")
    public void whenTheUserClickOnTheNotification(String text) {
        step.click_on_notification_with_text(text);
    }

    //endregion @When
}
