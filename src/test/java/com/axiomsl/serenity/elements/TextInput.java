package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.WebDriver;

/**
 * Created by kfilippov on 13.02.2016.
 */
public class TextInput extends BasePage {
    private final WebDriver driver;
    private final WebElementFacade wrappedElement;

    public TextInput(WebDriver driver, WebElementFacade wrappedElement) {
        this.driver = driver;
        this.wrappedElement = wrappedElement;
    }

    public void clear() {
        this.wrappedElement.clear();
    }

    public void type(String text) {
        this.wrappedElement.type(text);
    }



    public void sendKeys(CharSequence... keys) {
        this.wrappedElement.sendKeys(keys);
    }


    public String getText() {
        if ("textarea".equals(this.wrappedElement.getTagName())) {
            return this.wrappedElement.getText();
        } else {
            String enteredText = this.wrappedElement.getAttribute("value");
            return enteredText == null ? "" : enteredText;
        }
    }
}
