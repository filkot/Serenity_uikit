package com.axiomsl.serenity.steps.serenity;

import com.axiomsl.serenity.actions.TooltipAction;
import net.thucydides.core.annotations.Step;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.is;

/**
 * Created by kfilippov on 09.03.2016.
 */
public class TooltipSteps {

    TooltipAction action;


    @Step
    public void should_see_tooltip_with_text(String text) {
        assertThat(action.is_tooltip_with_text(text), is(true));
    }

    @Step
    public void should_not_see_tooltip_with_text(String text) {
        assertThat(action.is_tooltip_with_text(text), is(false));
    }
}
