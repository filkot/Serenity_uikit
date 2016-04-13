package com.axiomsl.serenity.helpers;

import net.thucydides.core.webdriver.ThucydidesWebDriverSupport;
import org.openqa.selenium.WebDriver;

/**
 * Created by mzhelezko on 21-Mar-16.
 */
final public class WebDriverHelper {

    //region Public Static Methods

    public WebDriver getDriver()
    {
        return ThucydidesWebDriverSupport.getDriver();
    }

    //endregion Public Methods
}