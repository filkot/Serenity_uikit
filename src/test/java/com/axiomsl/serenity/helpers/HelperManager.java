package com.axiomsl.serenity.helpers;

/**
 * Created by mzhelezko on 05-Apr-16.
 */
final public class HelperManager {

    //region Private Static Fields

    private static ConversionsHelper ConversionsHelperInstance = null;
    private static WebDriverHelper WebDriverHelperInstance = null;

    //endregion Private Static Fields

    //region Private Static Methods

    private static ConversionsHelper getConversionsHelper() {
        return ConversionsHelperInstance!=null ? ConversionsHelperInstance : new ConversionsHelper();
    }

    private static WebDriverHelper getWebDriverHelper() {
        return WebDriverHelperInstance!=null ? WebDriverHelperInstance : new WebDriverHelper();
    }

    //endregion Private Static Methods

    //region Public Static Methods

    public static ConversionsHelper Conversions = getConversionsHelper();
    public static WebDriverHelper WebDriver = getWebDriverHelper();

    //endregion Public Static Methods
}