package com.axiomsl.serenity.steps.serenity;

import com.axiomsl.serenity.actions.HoverMenuAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

/**
 * Created by kfilippov on 11.03.2016.
 */
public class HoverMenuSteps extends ScenarioSteps {
    HoverMenuAction action;

    @Step
    public void hover_on_hover_menu() {
        action.hover_on_hover_menu();
    }
}
