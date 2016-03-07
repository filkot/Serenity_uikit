package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.Menu;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

import java.util.List;

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

    public void double_click_menu_item_by_name(String menuItem) {
        String[] itemList = menuItem.split("->");
        String path = String.format(menuItemLocator, itemList[0]) + menuBarLocator;
        Menu menu = new Menu(getDriver(), find(By.xpath(path)));
        menu.doubleClick(menuItem);
    }

    public List<String> get_sub_menu_items_list(String item){
        String path = String.format(menuItemLocator, item) + menuBarLocator;
        Menu menu = new Menu(getDriver(), find(By.xpath(path)));
        return menu.getSubItemsListAsString();
    }
}
