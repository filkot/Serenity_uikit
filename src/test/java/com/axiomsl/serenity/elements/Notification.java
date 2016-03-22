package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;

/**
 * Created by kfilippov on 15.03.2016.
 */
public class Notification extends BasePage {

    //region Private Fields

    private final WebElementFacade wrappedElement;
    private String notificationLocator = "//div[contains(@class, 'v-label') and not(@style)]//span";

    //endregion Private Fields

    //region Constructors

    public Notification(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }

    //endregion Constructors

    //region Public Methods

    public void click(){
        wrappedElement.click();
    }

    //endregion Public Methods
}
