package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.steps.serenity.MenuSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;

import java.util.List;

/**
 * Created by kfilippov on 04.03.2016.
 */
public class MenuMappingSteps {

    @Steps
    MenuSteps step;

    //WHEN
    @When("the user clicks on '$menuItem' menu item")
    public void whenTheUserClickOnMenuItem(String menuItem) {
        step.click_menu_item_by_name(menuItem);
    }

    @When("the user moves a cursor on '$menuItem' menu item")
    public void whenTheUserMoveMouseOnMenuItem(String menuItem) {
        step.move_mouse_on_menu_item_by_name(menuItem);
    }

    @When("the user double clicks '$menuItem' menu item")
    public void whenTheUserDbClickOnMenuItem(String menuItem) {
        step.double_click_menu_item_by_name(menuItem);
    }

    //THEN
    @Then("the user should see '$itemsList' item list for '$menuItem' item")
    public void thenTheyShouldSeeItemList(List<String> itemsList, String item) {
        step.should_see_items_in_sub_menu(itemsList, item);
    }

    @Then("the user should not see '$name' sub item for '$item' menu item")
    public void thenTheyShouldNotSeeSubItem(String subItem, String item) {
        step.should_not_see_item_in_sub_menu(subItem, item);
    }
}
