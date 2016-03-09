package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.WebDriver;

/**
 * Created by kfilippov on 09.03.2016.
 */
public class Tooltip extends BasePage {
    private final WebDriver driver;
    private final WebElementFacade wrappedElement;

    public Tooltip(WebDriver driver, WebElementFacade wrappedElement) {
        this.driver = driver;
        this.wrappedElement = wrappedElement;
    }

    public String getText() {
        return wrappedElement.getText();
    }
}
