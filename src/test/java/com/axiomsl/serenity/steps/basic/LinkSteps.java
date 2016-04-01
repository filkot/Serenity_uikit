package com.axiomsl.serenity.steps.basic;

import com.axiomsl.serenity.actions.LinkAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;
import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.is;
import static org.hamcrest.Matchers.not;

/**
 * Created by kfilippov on 25.03.2016.
 */
public class LinkSteps extends ScenarioSteps {

    LinkAction action;

    //region Assertions

    @Step
    public void should_see_changed_color_of_link(String linkText) {
        assertThat(action.get_link_by_name(linkText).getCurrentColor(), is(not(action.get_link_by_name(linkText).getDefaultColor())));
    }

    //endregion Assertions

    //region Conditions

    @Step
    public void click_link_by_name(String linkText) {
        action.get_link_by_name(linkText).click();
    }

    @Step
    public void hover_on_link_by_name(String linkText) {
        action.get_link_by_name(linkText).hoverOn();
    }

    //endregion Conditions
}
