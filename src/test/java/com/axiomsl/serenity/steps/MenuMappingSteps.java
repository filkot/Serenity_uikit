package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.elements.Menu;
import com.axiomsl.serenity.steps.serenity.LabelSteps;
import com.axiomsl.serenity.steps.serenity.MenuSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;

/**
 * Created by kfilippov on 04.03.2016.
 */
public class MenuMappingSteps {

    @Steps
    MenuSteps step;

    //WHEN
    @When("the user click menu item with name '$menuItem'")
    public void whenTheUserClickOnMenuItem(String menuItem) {
        step.click_menu_item_by_name(menuItem);
    }

    @When("the user moves a cursos on menu item with name '$menuItem'")
    public void whenTheUserMoveMouseOnMenuItem(String menuItem) {
        step.move_mouse_on_menu_item_by_name(menuItem);
    }

    @When("the user double click menu item with name '$menuItem'")
    public void whenTheUserDbClickOnMenuItem(String menuItem) {
        step.double_click_menu_item_by_name(menuItem);
    }

    //THEN
    @Then("they should see the item list '$itemsList' for '$item'")
    public void thenTheyShouldSeeItemList(String itemsList, String item) {
        step.should_see_items_in_sub_menu(itemsList, item);
    }

    @Then("they should not see menu sub item with name '$name' for '$item'")
    public void thenTheyShouldNotSeeSubItem(String subItem, String item) {
        step.should_not_see_item_in_sub_menu(subItem, item);
    }
}
