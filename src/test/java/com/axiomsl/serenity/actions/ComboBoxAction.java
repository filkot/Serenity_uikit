package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.ComboBox;
import com.axiomsl.serenity.elements.Table;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;


public class ComboBoxAction extends BasePage {


    private String comBoxLocator = "//div[contains(@class, 'v-filterselect-prompt')]";
    private String captionLocator = "//div[contains(@class,'v-caption')]/span[text() = '%s']";

    public void select_item_in_comboBox(String item) {
        ComboBox comboBox = new ComboBox(getDriver(), find(By.xpath(comBoxLocator)));
        comboBox.selectItem(item);
    }

    public ComboBox getComboBoxByCaption(String caption){
        String path = String.format(captionLocator, caption) + "/parent::div/following-sibling::div[contains(@class, 'v-filterselect')]";
        ComboBox comboBox = new ComboBox(getDriver(), find(By.xpath(path)));
        return comboBox;
    }


}