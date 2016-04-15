package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.By;

/**
 * Created by mzhelezko on 14-Apr-16.
 */
public class ProgressBar extends BasePage {

    //region Private Fields

    private final WebElementFacade wrappedElement;
    private String progressBarTextLocator = "//div[@class='v-progressbar-progress']";

    //endregion Private Fields

    //region Constructors

    public ProgressBar(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }

    //endregion Constructors

    //region Public Methods

    public String getText() {
        return wrappedElement.find(By.xpath(progressBarTextLocator)).getText();
    }

    public boolean isDisplayed() {
        return wrappedElement.isDisplayed();
    }

    //endregion Public Methods
}