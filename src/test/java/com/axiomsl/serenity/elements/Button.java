package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.WebDriver;

/**
 * Created by kfilippov on 11.02.2016.
 */
public class Button extends BasePage {
    private final WebDriver driver;
    private final WebElementFacade wrappedElement;
    private String buttonWithTextLocator = "//div//span[text() = '%s']";
    private String buttonLocator = "//div[@role = 'button']//span";


    public Button(WebDriver driver, WebElementFacade wrappedElement) {
        this.driver = driver;
        this.wrappedElement = wrappedElement;
    }

    public void click() {
        wrappedElement.click();
    }

    public void hoverOn() {
        moveToElement(driver, wrappedElement);
    }

    public String getText() {
        return wrappedElement.getText();
    }
}
