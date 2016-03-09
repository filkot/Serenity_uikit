package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.WebDriver;

/**
 * Created by kfilippov on 11.02.2016.
 */
public class Label extends BasePage {
    private final WebDriver driver;
    private final WebElementFacade wrappedElement;
    private String labelLocator = "//div[contains(@class, 'v-label') and not(@style)]//span";


    public Label(WebDriver driver, WebElementFacade wrappedElement) {
        this.driver = driver;
        this.wrappedElement = wrappedElement;
    }


    public String getText() {
        return wrappedElement.then().getText();
    }
}
