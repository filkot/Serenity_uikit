package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.ComboBox;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;


public class ComboBoxAction extends BasePage {


    private String comBoxLocator = "//div[contains(@class, 'v-filterselect-prompt')]";

    public void select_item_in_comboBox(String item) {
        ComboBox comboBox = new ComboBox(find(By.xpath(comBoxLocator)));
        comboBox.selectItem(item);
    }


}