package com.axiomsl.serenity.steps.serenity;

import com.axiomsl.serenity.actions.DatePickerAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import java.util.Date;

/**
 * Created by kfilippov on 29.03.2016.
 */
public class DatePickerSteps extends ScenarioSteps {
    DatePickerAction action;

    @Step
    public void set_date_in_date_picker(Date date) {
        action.getDatePicker().setDate(date);
    }
}
