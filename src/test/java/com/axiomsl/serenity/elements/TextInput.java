package com.axiomsl.serenity.elements;

import net.serenitybdd.core.pages.WebElementFacade;

/**
 * Created by kfilippov on 13.02.2016.
 */
public class TextInput {
    private final WebElementFacade wrappedElement;

    public TextInput(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }

    public void clear() {
        this.wrappedElement.clear();
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
