package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;

/**
 * Created by kfilippov on 11.02.2016.
 */
public class Label extends BasePage {

    //region Private Fields

    private final WebElementFacade wrappedElement;
    private String labelLocator = "//div[contains(@class, 'v-label') and not(@style)]//span";

    //endregion Private Fields

    //region Constructors

    public Label(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }

    //endregion Constructors

    //region Public Methods

    public String getText() {
        return wrappedElement.then().getText();
    }

    //endregion Public Methods
}
