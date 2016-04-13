package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.Label;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

public class LabelAction extends BasePage {

    //region Private Fields

    private String labelLocator = "//div[contains(@class, 'v-label') and not(@style)]//span";
    private String labelWithTextLocator = "//div[contains(@class, 'v-label') and not(@style)]//span[text() = \"%s\"]";

    //endregion Private Fields

    //region Public Methods

    public String get_label_text() {
        Label label = new Label(find(By.xpath(labelLocator)));
        return label.getText();
    }

    public boolean is_label_with_text(String text){
        if(findAll(By.xpath(String.format(labelWithTextLocator, text))).size()>0){
            return true;
        }
        return false;
    }

    public int get_sum_value() {
        String expSum = find(By.xpath("//div[contains(@class,'v-label')]//span[not(contains(text(), 'Change random row to random value'))]")).getText();
        return Integer.parseInt(expSum);
    }

    //endregion Public Methods
}