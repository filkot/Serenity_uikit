package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.HoverMenu;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

/**
 * Created by kfilippov on 11.03.2016.
 */
public class HoverMenuAction extends BasePage {
    private String hoverMenuLocator = "//div[contains(@class, 'hover-menu')]";

    public void hover_on_hover_menu() {
        HoverMenu hoverMenu = new HoverMenu(getDriver(), find(By.xpath(hoverMenuLocator)));
        hoverMenu.hoverOnMenu();
    }
}
