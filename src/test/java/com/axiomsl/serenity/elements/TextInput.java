package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;

/**
 * Created by kfilippov on 13.02.2016.
 */
public class TextInput extends BasePage {

    //region Private Fields

    private final WebElementFacade wrappedElement;

    //endregion Private Fields

    //region Constructors

    public TextInput(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }

    //endregion Constructors

    //region Public Methods

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

    //endregion Public Methods
}
