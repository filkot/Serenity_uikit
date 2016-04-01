package com.axiomsl.serenity.steps.complex.when;

import com.axiomsl.serenity.steps.basic.TextInputSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Alias;
import org.jbehave.core.annotations.Named;
import org.jbehave.core.annotations.When;

public class TextInputMappingStepsWhen {

    //region @Steps

    @Steps
    TextInputSteps step;

    //endregion @Steps

    //region @When

    @When("the user type text '$text' in text field")
    public void whenTheUserTypeToTheTextField(String text) {
        step.type_in_text_field(text);
    }

    @When("the user enters '$text' text in '$textInputCaption' text field")
    @Alias("the user enters '$text' text in <textInputCaption> text field")
    public void whenTheUserTypeToTheTextField(@Named("textInputCaption") String textInputCaption,
                                              @Named("text") String text) {
        step.enter_text_in_text_field_with_caption(textInputCaption, text);
    }

    //endregion @When
}
