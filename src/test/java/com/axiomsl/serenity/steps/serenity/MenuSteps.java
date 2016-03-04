package com.axiomsl.serenity.steps.serenity;


import com.axiomsl.serenity.actions.MenuAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

/**
 * Created by kfilippov on 04.03.2016.
 */
public class MenuSteps extends ScenarioSteps {
    MenuAction action;


    @Step
    public void click_menu_item_by_name(String menuItem) {
        action.click_menu_item_by_name(menuItem);
    }
}
