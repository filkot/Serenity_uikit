package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.elements.Menu;
import com.axiomsl.serenity.steps.serenity.LabelSteps;
import com.axiomsl.serenity.steps.serenity.MenuSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.When;

/**
 * Created by kfilippov on 04.03.2016.
 */
public class MenuMappingSteps {

    @Steps
    MenuSteps step;

    //WHEN
    @When("the user click menu item with name '$menuItem'")
    public void whenTheUserGetTableRows(String menuItem) {
        step.click_menu_item_by_name(menuItem);
    }
}
