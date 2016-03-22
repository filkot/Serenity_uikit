package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.Notification;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

/**
 * Created by kfilippov on 15.03.2016.
 */
public class NotificationAction extends BasePage{

    //region Private Fields

    private String notificationWithTextLocator = "//div[contains(@class, 'v-Notification error')]//p[text() = \"%s\"]";

    //endregion Private Fields

    //region Public Methods

    public void click(String text) {
        Notification notification = new Notification(find(By.xpath(String.format(notificationWithTextLocator, text))));
        notification.click();
    }

    public boolean is_notification_with_text(String text){
        if(findAll(By.xpath(String.format(notificationWithTextLocator, text))).size()>0){
            return true;
        }
        return false;
    }

    //endregion Public Methods
}
