package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;

/**
 * Created by dbudranov on 05.04.2016.
 */
public class SlidingPanel extends BasePage {
    //region Private Fields

    private final static int SLIDE_PANEL_OFFSET_X = 100;
    private final WebElementFacade wrappedElement;

    //endregion Private Fields

    //region Constructors

    public SlidingPanel(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }

    //endregion Constructors

    //region Public Methods

    public void hoverOnSlidePanel() {
        moveToElement(this.wrappedElement);
    }

    public void hoverOutSlidePanel() {
        moveMouseByOffset(SLIDE_PANEL_OFFSET_X, 0);
    }

    public Boolean isSlidePanelActive() {
        int posX = wrappedElement.getLocation().getX();
        return (posX == 0) ? true : false;
    }

    //endregion Public Methods
}
