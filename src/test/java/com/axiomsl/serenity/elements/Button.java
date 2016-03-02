package com.axiomsl.serenity.elements;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.core.pages.WebElementFacade;

/**
 * Created by kfilippov on 11.02.2016.
 */
public class Button extends PageObject {
    private final WebElementFacade wrappedElement;
    private String buttonWithTextLocator = "//div//span[text() = '%s']";
    private String buttonLocator = "//div[@role = 'button']//span";


    public Button(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }

    public void click() {
        wrappedElement.click();
    }

    public String getText() {
        return wrappedElement.getText();
    }
}
