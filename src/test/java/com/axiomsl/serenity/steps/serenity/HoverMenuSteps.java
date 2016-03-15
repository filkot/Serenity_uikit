package com.axiomsl.serenity.steps.serenity;

import com.axiomsl.serenity.actions.HoverMenuAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import java.util.Arrays;
import java.util.List;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.equalTo;
import static org.hamcrest.Matchers.is;

/**
 * Created by kfilippov on 11.03.2016.
 */
public class HoverMenuSteps extends ScenarioSteps {
    HoverMenuAction action;

    @Step
    public void hover_on_hover_menu() {
        action.hover_on_hover_menu();
    }

    @Step
    public void should_see_menu_items_list(String itemsList) {
        List<String> items = Arrays.asList(itemsList.split("\\s*,\\s*"));
        assertThat(action.get_menu_items_list(), is(equalTo(items)));
    }

    @Step
    public void should_not_see_menu_item_list() {
        assertThat(action.is_menu_item_list(), is(false));
    }
}
