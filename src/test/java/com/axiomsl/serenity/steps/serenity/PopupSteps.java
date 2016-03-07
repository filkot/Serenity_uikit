package com.axiomsl.serenity.steps.serenity;

import com.axiomsl.serenity.actions.PopupAction;
import com.axiomsl.serenity.elements.Popup;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;
import org.openqa.selenium.By;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.hasItem;
import static org.hamcrest.Matchers.is;
import static org.hamcrest.Matchers.not;

/**
 * Created by kfilippov on 04.03.2016.
 */
public class PopupSteps  extends ScenarioSteps {
    PopupAction action;

    @Step
    public void close(){
        action.close();
    }

    @Step
    public void maximize() {
        action.maximize();
    }
    @Step
    public void restore(){
        action.restore();
    }

    @Step
    public String get_label_text(){
        return action.get_label_text();
    }

    @Step
    public String get_header_text(){
        return action.get_header_text();
    }

    @Step
    public void should_see_popup_with_label_text(String labelText) {
        assertThat(action.get_label_text(), is(labelText));
    }

    @Step
    public void should_see_popup_with_header_text(String headerText) {
        assertThat(action.get_header_text(), is(headerText));
    }
}
