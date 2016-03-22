package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.CheckBox;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

public class CheckBoxAction extends BasePage {

    //region Private Fields

    private String checkBoxLocator = "//span[text() = '%s']/parent::div/parent::div";

    //endregion Private Fields

    //region Public Methods

    public void select_checkbox(String checkBoxName) {
        CheckBox checkBox = new CheckBox(find(By.xpath(String.format(checkBoxLocator, checkBoxName))));
        checkBox.select();
    }

    public void deselect_checkbox(String checkBoxName) {
        CheckBox checkBox = new CheckBox(find(By.xpath(String.format(checkBoxLocator, checkBoxName))));
        checkBox.deselect();
    }

    //endregion Public Methods
}