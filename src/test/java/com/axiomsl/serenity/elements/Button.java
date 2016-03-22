package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;

/**
 * Created by kfilippov on 11.02.2016.
 */
public class Button extends BasePage {

    //region Private Fields

    private final WebElementFacade wrappedElement;
    private String buttonWithTextLocator = "//div//span[text() = '%s']";
    private String buttonLocator = "//div[@role = 'button']//span";

    //endregion Private Fields

    //region Constructors

    public Button(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }

    //endregion Constructors

    //region Public Methods

    public void click() {
        wrappedElement.click();
    }

    public void rightClick() {
        rightClick(wrappedElement);
    }

    public void hoverOn() {
        moveToElement(wrappedElement);
    }

    public String getText() {
        return wrappedElement.getText();
    }

    //endregion Public Methods
}
