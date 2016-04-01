package com.axiomsl.serenity.steps.complex.when;

import com.axiomsl.serenity.steps.basic.MenuSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.When;

/**
 * Created by kfilippov on 04.03.2016.
 */
public class MenuMappingStepsWhen {

    //region @Steps

    @Steps
    MenuSteps step;

    //region @Steps

    //region @When

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

    //endregion @When
}
