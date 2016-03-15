package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.HoverMenu;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

import java.util.List;

/**
 * Created by kfilippov on 11.03.2016.
 */
public class HoverMenuAction extends BasePage {
    private String hoverMenuLocator = "//div[contains(@class, 'hover-menu')]";

    public void hover_on_hover_menu() {
        HoverMenu hoverMenu = new HoverMenu(getDriver(), find(By.xpath(hoverMenuLocator)));
        hoverMenu.hoverOnMenu();
    }

    public List<String> get_menu_items_list(){
        HoverMenu hoverMenu = new HoverMenu(getDriver(), find(By.xpath(hoverMenuLocator)));
        return hoverMenu.getItemsList();
    }

    public boolean is_menu_item_list(){
        HoverMenu hoverMenu = new HoverMenu(getDriver(), find(By.xpath(hoverMenuLocator)));
        return hoverMenu.isMenuItemsList();
    }
}
