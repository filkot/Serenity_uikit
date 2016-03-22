package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;

/**
 * Created by kfilippov on 09.03.2016.
 */
public class Tooltip extends BasePage {

    //region Private Fields

    private final WebElementFacade wrappedElement;

    //endregion Private Fields

    //region Constructors

    public Tooltip(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }

    //endregion Constructors

    //region Public Methods

    public String getText() {
        return wrappedElement.getText();
    }

    //endregion Public Methods
}
