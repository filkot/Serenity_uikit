package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

/**
 * Created by kfilippov on 04.03.2016.
 */
public class Menu extends BasePage{
    private final WebDriver driver;
    private final WebElementFacade wrappedElement;

    private String menuItemLocator = "//span[contains(@class, 'v-menubar-menuitem')]//span[text()='%s']";
    private String menuBarPopupLocator = "//div[@class='v-menubar-popup']";

    public Menu(WebDriver driver, WebElementFacade wrappedElement) {
        this.driver = driver;
        this.wrappedElement = wrappedElement;
    }

    public void click(String item){
        String[] itemList = item.split("->");
        System.out.println("click in menu " + itemList[0]);
        String rootPath = String.format(menuItemLocator, itemList[0]);
        WebElementFacade menuItemRoot = wrappedElement.then(By.xpath(rootPath));
        menuItemRoot.click();
        for (int i = 1; i < itemList.length; i++) {
            System.out.println("click in menu " + itemList[i]);
            String path = menuBarPopupLocator + String.format(menuItemLocator, itemList[i]);
            driver.findElement(By.xpath(path)).click();
        }
    }
}
