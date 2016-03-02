package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.TwinColSelect;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

import java.util.List;


public class TwinColSelectAction extends BasePage {


    private String twinColSelectLocator = "//div[contains(@class, 'v-select-twincol')]";

    public void transferred_item_from_left_to_right(String item) {
        TwinColSelect twinCol = new TwinColSelect(find(By.xpath(twinColSelectLocator)));
        twinCol.oneFromLeftToRight(item);
    }

    public void transferred_item_from_right_to_left(String item) {
        TwinColSelect twinCol = new TwinColSelect(find(By.xpath(twinColSelectLocator)));
        twinCol.oneFromRightToLeft(item);
    }

    public List<String> get_left_col_items_list() {
        TwinColSelect twinCol = new TwinColSelect(find(By.xpath(twinColSelectLocator)));
        return twinCol.getLeftCoItemsList();
    }

    public List<String> get_right_col_items_list() {
        TwinColSelect twinCol = new TwinColSelect(find(By.xpath(twinColSelectLocator)));
        return twinCol.getRightColItemsList();
    }


}