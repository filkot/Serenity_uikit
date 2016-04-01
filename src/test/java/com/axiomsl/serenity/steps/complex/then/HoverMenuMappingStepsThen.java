package com.axiomsl.serenity.steps.complex.then;

import com.axiomsl.serenity.steps.basic.HoverMenuSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;

import java.util.List;

/**
 * Created by kfilippov on 11.03.2016.
 */
public class HoverMenuMappingStepsThen {

    //region @Steps

    @Steps
    HoverMenuSteps step;

    //endregion @Steps

    //region @Then

    @Then("the user should see HoverMenu item list '$item_list'")
    public void thenTheUserShouldSeeMenuItemList(List<String> itemsList){
        step.should_see_menu_items_list(itemsList);
    }

    @Then("the user should not see HoverMenu item list")
    public void thenTheUserShouldNotSeeMenuItemList(){
        step.should_not_see_menu_item_list();
    }

    //endregion @Then
}