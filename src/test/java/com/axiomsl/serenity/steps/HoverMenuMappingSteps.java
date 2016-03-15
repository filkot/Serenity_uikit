package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.steps.serenity.HoverMenuSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;

/**
 * Created by kfilippov on 11.03.2016.
 */
public class HoverMenuMappingSteps {
    @Steps
    HoverMenuSteps step;

    //WHEN
    @When("the user hovers on HoverMenu")
    public void whenTheUserClickOnMenuItem() {
        step.hover_on_hover_menu();
    }

    //Then
    @Then("the user should see menu item list '$item_list'")
    public void thenTheUserShouldSeeMenuItemList(String itemsList){
        step.should_see_menu_items_list(itemsList);
    }

    @Then("the user should not see menu item list")
    public void thenTheUserShouldNotSeeMenuItemList(){
        step.should_not_see_menu_item_list();
    }
}
