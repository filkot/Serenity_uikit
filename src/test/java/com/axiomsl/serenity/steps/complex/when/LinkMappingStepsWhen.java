package com.axiomsl.serenity.steps.complex.when;

import com.axiomsl.serenity.steps.basic.LinkSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.When;

/**
 * Created by kfilippov on 25.03.2016.
 */
public class LinkMappingStepsWhen {

    //region @Steps

    @Steps
    LinkSteps step;

    //endregion @Steps

    //region @When
    @When("the user clicks '$linkText' link")
    public void whenTheUserClickTheLink(String linkText) {
        step.click_link_by_name(linkText);
    }

    @When("the user hovers on '$linkText' link")
    public void whenTheUserHoverOnTheLink(String linkText) {
        step.hover_on_link_by_name(linkText);
    }

    //endregion @When
}