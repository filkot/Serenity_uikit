package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.WebDriver;

/**
 * Created by kfilippov on 15.03.2016.
 */
public class Notification extends BasePage {
    private final WebDriver driver;
    private final WebElementFacade wrappedElement;
    private String notificationLocator = "//div[contains(@class, 'v-label') and not(@style)]//span";

    //div[contains(@class, 'v-Notification error')]//p[contains(text(), '')]


    public Notification(WebDriver driver, WebElementFacade wrappedElement) {
        this.driver = driver;
        this.wrappedElement = wrappedElement;
    }

    public void click(){
        wrappedElement.click();
    }
}
