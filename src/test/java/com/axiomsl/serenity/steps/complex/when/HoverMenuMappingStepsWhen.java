package com.axiomsl.serenity.steps.complex.when;

import com.axiomsl.serenity.steps.basic.HoverMenuSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.When;

/**
 * Created by kfilippov on 11.03.2016.
 */
public class HoverMenuMappingStepsWhen {

    //region @Steps

    @Steps
    HoverMenuSteps step;

    //endregion @Steps

    //region @When

    @When("the user hovers on HoverMenu")
    public void whenTheUserClickOnMenuItem() {
        step.hover_on_hover_menu();
    }

    //endregion @When
}