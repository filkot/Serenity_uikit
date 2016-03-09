package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.Tooltip;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

/**
 * Created by kfilippov on 09.03.2016.
 */
public class TooltipAction extends BasePage{
    private String tooltipLocator = "//div[@class='v-tooltip-text']";

    public String get_button_text() {
        Tooltip button = new Tooltip(getDriver(), find(By.xpath(tooltipLocator)));
        return button.getText();
    }
}
