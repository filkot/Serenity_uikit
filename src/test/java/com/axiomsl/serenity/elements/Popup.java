package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

/**
 * Created by kfilippov on 04.03.2016.
 */
public class Popup extends BasePage{
    private final WebDriver driver;
    private final WebElementFacade wrappedElement;

    private String closeLocator = ".//div[contains(@class, 'v-window-closebox')]";
    private String maximizeLocator = ".//div[contains(@class, 'v-window-maximizebox')]";
    private String restoreLocator = ".//div[contains(@class, 'v-window-restorebox')]";
    private String headerLocator = ".//div[contains(@class, 'v-window-header')]";
    private String labelLocator = ".//div[contains(@class,'v-label')]";

    public Popup(WebDriver driver, WebElementFacade wrappedElement) {
        this.driver = driver;
        this.wrappedElement = wrappedElement;
    }

    public void close(){
        wrappedElement.then(By.xpath(closeLocator)).click();
    }

    public void maximize(){
        wrappedElement.then(By.xpath(maximizeLocator)).click();
    }

    public void restore(){
        wrappedElement.then(By.xpath(restoreLocator)).click();
    }

    public String getHeaderText(){
        return wrappedElement.then(By.xpath(headerLocator)).getText();
    }
    public String getLabelText(){
        return wrappedElement.then(By.xpath(labelLocator)).getText();
    }

}
