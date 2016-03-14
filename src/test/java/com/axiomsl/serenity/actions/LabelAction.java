package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.Label;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;


public class LabelAction extends BasePage {


    private String labelLocator = "//div[contains(@class, 'v-label') and not(@style)]//span";
    private String labelWithTextLocator = "//div[contains(@class, 'v-label') and not(@style)]//span[text() = \"%s\"]";

    public String get_label_text() {
        Label label = new Label(getDriver(), find(By.xpath(labelLocator)));
        return label.getText();
    }

    public boolean is_label_with_text(String text){
        if(findAll(By.xpath(String.format(labelWithTextLocator, text))).size()>0){
            return true;
        }
        return false;
    }


}