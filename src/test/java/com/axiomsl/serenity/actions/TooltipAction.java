package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.Tooltip;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

/**
 * Created by kfilippov on 09.03.2016.
 */
public class TooltipAction extends BasePage {

    //region Private Fields

    private String tooltipLocator = "//div[@class='v-tooltip-text']";
    private String tooltipWithTextLocator = "//div[@class='v-tooltip-text' and contains(text() , '%s')]";

    //endregion Private Fields

    //region Public Methods

    public String get_tooltip_text() {
        Tooltip tooltip = new Tooltip(find(By.xpath(tooltipLocator)));
        return tooltip.getText();
    }

    public boolean is_tooltip_with_text(String text){
        if(findAll(By.xpath(String.format(tooltipWithTextLocator, text))).size()>0){
            return true;
        }
        return false;
    }

    //endregion Public Methods
}
