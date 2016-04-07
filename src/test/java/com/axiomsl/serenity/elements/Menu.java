package com.axiomsl.serenity.elements;

import ch.lambdaj.Lambda;
import com.axiomsl.serenity.helpers.ConversionsHelper;
import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.By;

import java.util.List;

/**
 * Created by kfilippov on 04.03.2016.
 */
public class Menu extends BasePage {

    //region Private Fields

    private final WebElementFacade wrappedElement;

    private String menuItemLocator = "//span[contains(@class, 'v-menubar-menuitem')]//span[text()='%s']";
    private String menuBarPopupLocator = "//div[@class='v-menubar-popup']";
    private String subItemLocator = "//div[contains(@class, 'v-menubar-submenu')]/span[@class ='v-menubar-menuitem']/span";

    //endregion Private Fields

    //region Constructors

    public Menu(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }

    //endregion Constructors

    //region Public Methods
    public void click(String item) {
        String[] itemList = item.split("->");
        System.out.println("click in menu " + itemList[0]);
        String rootPath = String.format(menuItemLocator, itemList[0]);
        WebElementFacade menuItemRoot = wrappedElement.then(By.xpath(rootPath));
        menuItemRoot.click();
        for (int i = 1; i < itemList.length; i++) {
            System.out.println("click in menu " + itemList[i]);
            String path = menuBarPopupLocator + String.format(menuItemLocator, itemList[i]);
            wrappedElement.then(By.xpath(path)).click();
//          driver.findElement(By.xpath(path)).click();
        }
    }

    public void hoverOn(String menuItem) {
        String[] itemList = menuItem.split("->");
        String rootPath = String.format(menuItemLocator, itemList[0]);
        WebElementFacade menuItemRoot = wrappedElement.then(By.xpath(rootPath));
        if (itemList.length == 1) {
            System.out.println("hoverOn menu " + itemList[0]);
            moveToElement(menuItemRoot);
            return;
        } else {
            menuItemRoot.click();
        }
        for (int i = 1; i < itemList.length; i++) {
            System.out.println("hoverOn menu " + itemList[i]);
            String path = menuBarPopupLocator + String.format(menuItemLocator, itemList[i]);
            if (i == itemList.length - 1) {
                moveToElement(wrappedElement.then(By.xpath(path)));
            } else {
                wrappedElement.then(By.xpath(path)).click();
            }
        }
    }

    public void doubleClick(String menuItem) {
        String[] itemList = menuItem.split("->");
        String rootPath = String.format(menuItemLocator, itemList[0]);
        WebElementFacade menuItemRoot = wrappedElement.then(By.xpath(rootPath));
        WebElementFacade itemForClick;
        if (itemList.length == 1) {
            System.out.println("click in menu " + itemList[0]);
            doubleClick(menuItemRoot);
            return;
        } else {
            menuItemRoot.click();
        }
        for (int i = 1; i < itemList.length; i++) {
            System.out.println("click in menu " + itemList[i]);
            String path = menuBarPopupLocator + String.format(menuItemLocator, itemList[i]);
            if (i == itemList.length - 1) {
                itemForClick = wrappedElement.then(By.xpath(path));
                doubleClick(itemForClick);
            } else {
                wrappedElement.then(By.xpath(path)).click();
            }
        }
    }

    public List<WebElementFacade> getSubItemsList() {
        return wrappedElement.thenFindAll(By.xpath(subItemLocator));
    }

    public List<String> getSubItemsListAsString() {
        return Lambda.convert(this.getSubItemsList(), ConversionsHelper.WebElementToTextConverter.toTextValues());
    }
    //endregion Public Methods
}
