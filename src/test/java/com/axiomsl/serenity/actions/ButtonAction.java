package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.Button;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

public class ButtonAction extends BasePage {

    //region Private Fields

    private String buttonWithTextLocator = "//div//span[text() = '%s']";
    private String buttonLocator = "//div[@role = 'button']//span";

    //endregion Private Fields

    //region Public Methods

    public void click_button_by_name(String buttonName) {
        Button button = new Button(find(By.xpath(String.format(buttonWithTextLocator, buttonName))));
        button.click();
    }
    public void right_click_button_by_name(String buttonName) {
        Button button = new Button(find(By.xpath(String.format(buttonWithTextLocator, buttonName))));
        button.rightClick();
    }

    public void hover_on_button_by_name(String buttonName) {
        Button button = new Button(find(By.xpath(String.format(buttonWithTextLocator, buttonName))));
        button.hoverOn();
    }

    public String get_button_text() {
        Button button = new Button(find(By.xpath(buttonLocator)));
        return button.getText();
    }

    //endregion Public Methods
}