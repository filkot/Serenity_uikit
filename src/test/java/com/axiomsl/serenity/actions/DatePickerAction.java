package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.DatePicker;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

/**
 * Created by kfilippov on 29.03.2016.
 */
public class DatePickerAction extends BasePage {

    //region Private Fields

    private String datePickerLocator = "//div[contains(@class, 'v-datefield-popupcalendar')]";


    //endregion Private Fields

    //region Public Methods

    public DatePicker getDatePicker() {
        return new DatePicker(find(By.xpath(datePickerLocator)));
    }

    //endregion Public Methods
}

