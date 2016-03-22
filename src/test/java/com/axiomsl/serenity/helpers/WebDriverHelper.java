package com.axiomsl.serenity.helpers;

import org.openqa.selenium.WebDriver;
import static net.thucydides.core.webdriver.ThucydidesWebDriverSupport.getDriver;

/**
 * Created by mzhelezko on 21-Mar-16.
 */
final public class WebDriverHelper {

    //region Public Static Methods

    public static WebDriver GetGlobalWebDriver()
    {
        return getDriver();
    }

    //endregion Public Methods
}