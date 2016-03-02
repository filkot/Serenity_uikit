package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.TextInput;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;


public class TextInputAction extends BasePage {


    private String textFieldLocator = "//input[@type = 'text']";

    public boolean isTextFieldDisplayed() {
        TextInput textInput = new TextInput(find(By.xpath(textFieldLocator)));
        return VisibilityOfElementLocated(By.xpath(textFieldLocator));
    }

    public boolean isTextFieldNotDisplayed() {
        return InvisibilityOfElementLocated(By.xpath(textFieldLocator));
    }

    public void type_in_text_field(String text) {
        TextInput textInput = new TextInput(find(By.xpath(textFieldLocator)));
        textInput.sendKeys(text);
    }


}