package com.axiomsl.serenity.steps.complex.then;

import com.axiomsl.serenity.steps.basic.MenuSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;

import java.util.List;

/**
 * Created by kfilippov on 04.03.2016.
 */
public class MenuMappingStepsThen {

    //region @Steps

    @Steps
    MenuSteps step;

    //region @Steps

    //region @Then

    @Then("the user should see '$itemsList' item list for '$menuItem' item")
    public void thenTheyShouldSeeItemList(List<String> itemsList, String item) {
        step.should_see_items_in_sub_menu(itemsList, item);
    }

    @Then("the user should not see '$name' sub item for '$item' menu item")
    public void thenTheyShouldNotSeeSubItem(String subItem, String item) {
        step.should_not_see_item_in_sub_menu(subItem, item);
    }

    //endregion @Then
}
