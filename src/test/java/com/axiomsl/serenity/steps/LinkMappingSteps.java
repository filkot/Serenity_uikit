package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.steps.serenity.LinkSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;

/**
 * Created by kfilippov on 25.03.2016.
 */
public class LinkMappingSteps {
    @Steps
    LinkSteps step;

    //WHEN
    @When("the user clicks '$linkText' link")
    public void whenTheUserClickTheLink(String linkText) {
        step.click_link_by_name(linkText);
    }


    @When("the user hovers on '$linkText' link")
    public void whenTheUserHoverOnTheLink(String linkText) {
        step.hover_on_link_by_name(linkText);
    }



    //THEN
    @Then("the user should see a changed color of '$linkText' link")
    public void thenTheyShouldSeeChangedColorOfTheLink(String linkText) {
        step.should_see_changed_color_of_link(linkText);
    }
}
