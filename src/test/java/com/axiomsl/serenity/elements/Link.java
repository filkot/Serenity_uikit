package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.By;

/**
 * Created by kfilippov on 25.03.2016.
 */
public class Link extends BasePage{

    //region Private Fields
    private final WebElementFacade wrappedElement;

    public static final String DEFAULT_COLOR = "rgba(25, 125, 225, 1)";
    //endregion Private Fields

    //region Constructors
    public Link(WebElementFacade wrappedElement) {
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
        return wrappedElement.then(By.xpath("//span")).getText();
    }

    public String getHref() {
        return wrappedElement.then(By.xpath("//a")).getText();
    }

    public String getCurrentColor(){
        return wrappedElement.getCssValue("color");
    }
    public String getDefaultColor(){
        return DEFAULT_COLOR;
    }

    //endregion Public Methods
}
