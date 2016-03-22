package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.TextInput;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

public class TextInputAction extends BasePage {

    //region Private Fields

    private String textFieldLocator = "//input[@type = 'text']";
    private String captionLocator = "//div[contains(@class,'v-caption')]/span[text() = '%s']";

    //endregion Private Fields

    //region Public Methods

    public boolean isTextFieldDisplayed() {
        TextInput textInput = new TextInput(find(By.xpath(textFieldLocator)));
        return VisibilityOfElementLocated(By.xpath(textFieldLocator));
    }

    public boolean isTextFieldNotDisplayed() {
        return InvisibilityOfElementLocated(By.xpath(textFieldLocator));
    }

    public void type_in_text_field(String text) {
        TextInput textInput = new TextInput(find(By.xpath(textFieldLocator)));
        textInput.clear();
        textInput.sendKeys(text);
    }

    public TextInput getTextInputByCaption(String caption){
        String path = String.format(captionLocator, caption) + "/parent::div/following-sibling::input[@type = 'text']";
        TextInput textInput = new TextInput(find(By.xpath(path)));
        return textInput;
    }

    //endregion Public Methods
}