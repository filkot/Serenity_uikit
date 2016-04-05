package com.axiomsl.serenity.steps.basic;

import com.axiomsl.serenity.actions.SlidingPanelAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.is;

/**
 * Created by dbudranov on 05.04.2016.
 */
public class SlidingPanelSteps extends ScenarioSteps {
    SlidingPanelAction action;

    @Step
    public void hover_on_slide_panel() {
        action.get_slide_panel().hoverOnSlidePanel();
    }

    @Step
    public void hover_out_slide_panel() {
        action.get_slide_panel().hoverOutSlidePanel();
    }

    @Step
    public void should_see_active_slide_panel() {
        assertThat(action.get_slide_panel().isSlidePanelActive(), is(true));
    }

    @Step
    public void should_see_inactive_slide_panel() {
        assertThat(action.get_slide_panel().isSlidePanelActive(), is(false));
    }
}
