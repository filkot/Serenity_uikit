package com.axiomsl.serenity.steps.serenity;


import com.axiomsl.serenity.actions.MenuAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import java.util.Arrays;
import java.util.List;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.*;

/**
 * Created by kfilippov on 04.03.2016.
 */
public class MenuSteps extends ScenarioSteps {
    MenuAction action;


    @Step
    public void click_menu_item_by_name(String menuItem) {
        action.click_menu_item_by_name(menuItem);
    }

    @Step
    public void move_mouse_on_menu_item_by_name(String menuItem) {
        action.move_mouse_on_menu_item_by_name(menuItem);
    }

    @Step
    public void double_click_menu_item_by_name(String menuItem) {
        action.double_click_menu_item_by_name(menuItem);
    }

    @Step
    public void should_see_items_in_sub_menu(String itemsList, String item) {
        List<String> items = Arrays.asList(itemsList.split("\\s*,\\s*"));
        assertThat(action.get_sub_menu_items_list(item), is(equalTo(items)));
    }

    @Step
    public void should_not_see_item_in_sub_menu(String subItem, String item) {
        assertThat(action.get_sub_menu_items_list(item), is(not(hasItem(subItem))));
    }
}