package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.Popup;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

/**
 * Created by kfilippov on 04.03.2016.
 */
public class PopupAction extends BasePage {

    //region Private Fields

    private String popupLocator = "//div[contains(@class, 'v-window') and @role = 'dialog']";

    //endregion Private Fields

    //region Public Methods

    public void close() {
        Popup popup = new Popup(find(By.xpath(popupLocator)));
        popup.close();
    }

    public void maximize() {
        Popup popup = new Popup(find(By.xpath(popupLocator)));
        popup.maximize();
    }

    public void restore() {
        Popup popup = new Popup(find(By.xpath(popupLocator)));
        popup.restore();
    }

    public String get_label_text() {
        Popup popup = new Popup(find(By.xpath(popupLocator)));
        return popup.getLabelText();
    }

    public String get_header_text() {
        Popup popup = new Popup(find(By.xpath(popupLocator)));
        return popup.getHeaderText();
    }

    //endregion Public Methods
}
