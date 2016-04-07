package com.axiomsl.serenity.steps.basic;

import com.axiomsl.serenity.actions.DatePickerAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

/**
 * Created by kfilippov on 29.03.2016.
 */
public class DatePickerSteps extends ScenarioSteps {

    DatePickerAction action;

    //region Conditions

    @Step
    public void set_date_in_date_picker(String date) {
        action.getDatePicker().setDate(date);
    }

    //endregion Conditions
}
