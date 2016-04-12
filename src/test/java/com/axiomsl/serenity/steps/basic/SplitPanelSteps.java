package com.axiomsl.serenity.steps.basic;

import com.axiomsl.serenity.actions.SplitPanelAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.is;

/**
 * Created by dbudranov on 12.04.2016.
 */
public class SplitPanelSteps extends ScenarioSteps {
    SplitPanelAction action;

    @Step
    public void move_h_splitter_by_offset(String container, int offsetX) {
        action.get_split_panel(container).moveHSplitterByOffset(offsetX);
    }

    @Step
    public void move_v_splitter_by_offset(String container, int offsetY) {
        action.get_split_panel(container).moveVSplitterByOffset(offsetY);
    }

    @Step
    public void check_h_splitter_offset(String container) {
        assertThat(action.get_split_panel(container).isHSplitterMoved(), is(true));
    }

    @Step
    public void check_v_splitter_offset(String container) {
        assertThat(action.get_split_panel(container).isVSplitterMoved(), is(true));
    }
}
