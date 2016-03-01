package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.*;
import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;
import net.thucydides.core.pages.PageObject;
import org.openqa.selenium.By;
import org.openqa.selenium.ElementNotVisibleException;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.StaleElementReferenceException;

import java.util.List;


public class CheckBoxAction extends BasePage {


    private String checkBoxLocator = "//span[text() = '%s']/parent::div/parent::div";

    public void select_checkbox(String checkBoxName){
        CheckBox checkBox = new CheckBox(find(By.xpath(String.format(checkBoxLocator, checkBoxName))));
        checkBox.select();
    }

    public void deselect_checkbox(String checkBoxName) {
        CheckBox checkBox = new CheckBox(find(By.xpath(String.format(checkBoxLocator, checkBoxName))));
        checkBox.deselect();
    }




}