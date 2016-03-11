package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.steps.serenity.HoverMenuSteps;
import net.thucydides.core.annotations.Steps;
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
}
