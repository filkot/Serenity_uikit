package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;

/**
 * Created by dbudranov on 11.04.2016.
 */
public class SplitPanel extends BasePage {
    private final WebElementFacade wrappedElement;
    private static Boolean isHSpltterMoved = false;
    private static Boolean isVSpltterMoved = false;


    public SplitPanel(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }

    public void moveHSplitterByOffset(int offsetX) {
        int hs1 = wrappedElement.getLocation().getX();
        dragAndDropByOffset(wrappedElement, offsetX, 0);
        int hs2 = wrappedElement.getLocation().getX();

        isHSpltterMoved = ((hs2 - hs1) != 0);
    }

    public void moveVSplitterByOffset(int offsetY) {
        int vs1 = wrappedElement.getLocation().getY();
        dragAndDropByOffset(wrappedElement, 0, offsetY);
        int vs2 = wrappedElement.getLocation().getY();

        isVSpltterMoved = ((vs2 - vs1) != 0);
    }

    public Boolean isHSplitterMoved() {return isHSpltterMoved;}
    public Boolean isVSplitterMoved() {return isVSpltterMoved;}
}
