package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.Link;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

/**
 * Created by kfilippov on 25.03.2016.
 */
public class LinkAction extends BasePage{
    //region Private Fields
    private String linkWithTextLocator = "//span[text() = '%s']/ancestor::div[contains(@class, 'v-link')]";
    private String linkLocator = "//div[contains(@class, 'v-link')]";
    //endregion Private Fields

    //region Public Methods
    public Link get_link_by_name(String linkText) {
        return new Link(find(By.xpath(String.format(linkWithTextLocator, linkText))));
    }
    //endregion Public Methods
}
