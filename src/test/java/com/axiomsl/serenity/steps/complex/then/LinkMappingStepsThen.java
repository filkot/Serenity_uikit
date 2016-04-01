package com.axiomsl.serenity.steps.complex.then;

import com.axiomsl.serenity.steps.basic.LinkSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;

/**
 * Created by kfilippov on 25.03.2016.
 */
public class LinkMappingStepsThen {

    //region @Steps

    @Steps
    LinkSteps step;

    //endregion @Steps

    //region @Then

    @Then("the user should see a changed color of '$linkText' link")
    public void thenTheyShouldSeeChangedColorOfTheLink(String linkText) {
        step.should_see_changed_color_of_link(linkText);
    }

    //endregion @Then
}
