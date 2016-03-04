package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.Menu;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

/**
 * Created by kfilippov on 04.03.2016.
 */
public class MenuAction extends BasePage{
    private String menuBarLocator = "/ancestor::div[contains(@class, 'v-menubar v-widget')]";
    private String menuItemLocator = "//span[contains(@class, 'v-menubar-menuitem')]//span[text()='%s']";


    public void click_menu_item_by_name(String menuItem) {
        String[] itemList = menuItem.split("->");
        String path = String.format(menuItemLocator, itemList[0]) + menuBarLocator;
        Menu menu = new Menu(getDriver(), find(By.xpath(path)));
        menu.click(menuItem);
    }
}
