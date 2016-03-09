package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.TwinColSelect;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

import java.util.List;


public class TwinColSelectAction extends BasePage {


    private String twinColSelectLocator = "//div[contains(@class, 'v-select-twincol')]";

    public void press_forward_button_n_times(String n) {
        TwinColSelect twinCol = new TwinColSelect(getDriver(), find(By.xpath(twinColSelectLocator)));
        for (int i = 0; i < Integer.parseInt(n); i++) {
            twinCol.clickForwardButton();
        }
    }

    public void press_back_button_n_times(String n) {
        TwinColSelect twinCol = new TwinColSelect(getDriver(), find(By.xpath(twinColSelectLocator)));
        for (int i = 0; i < Integer.parseInt(n); i++) {
            twinCol.clickBackButton();
        }
    }

    public void select_left_col() {
        TwinColSelect twinCol = new TwinColSelect(getDriver(), find(By.xpath(twinColSelectLocator)));
        twinCol.selectLeftCol();
    }

    public void select_right_col() {
        TwinColSelect twinCol = new TwinColSelect(getDriver(), find(By.xpath(twinColSelectLocator)));
        twinCol.selectRightCol();
    }

    public void select_item_in_left_col(String item) {
        TwinColSelect twinCol = new TwinColSelect(getDriver(), find(By.xpath(twinColSelectLocator)));
        twinCol.selectItemInLeftCol(item);
    }

    public void select_item_in_right_col(String item) {
        TwinColSelect twinCol = new TwinColSelect(getDriver(), find(By.xpath(twinColSelectLocator)));
        twinCol.selectItemInRightCol(item);
    }

    public void select_all_items_in_left_col() {
        TwinColSelect twinCol = new TwinColSelect(getDriver(), find(By.xpath(twinColSelectLocator)));
        twinCol.selectAllItemsInLeftCol();
    }

    public void select_all_items_in_right_col() {
        TwinColSelect twinCol = new TwinColSelect(getDriver(), find(By.xpath(twinColSelectLocator)));
        twinCol.selectAllItemsInRightCol();
    }

    public void transfer_item_from_left_to_right(String item) {
        TwinColSelect twinCol = new TwinColSelect(getDriver(), find(By.xpath(twinColSelectLocator)));
        twinCol.transferItemFromLeftToRight(item);
    }

    public void transfer_item_from_right_to_left(String item) {
        TwinColSelect twinCol = new TwinColSelect(getDriver(), find(By.xpath(twinColSelectLocator)));
        twinCol.transferItemFromRightToLeft(item);
    }

    public void transfer_item_from_left_to_right_by_dbclick(String item) {
        TwinColSelect twinCol = new TwinColSelect(getDriver(), find(By.xpath(twinColSelectLocator)));
        twinCol.transferItemFromLeftToRightByDbClick(item);
    }

    public void transfer_item_from_right_to_left_by_dbclick(String item) {
        TwinColSelect twinCol = new TwinColSelect(getDriver(), find(By.xpath(twinColSelectLocator)));
        twinCol.transferItemFromRightToLeftByDbClick(item);
    }

    public List<String> get_left_col_items_list() {
        TwinColSelect twinCol = new TwinColSelect(getDriver(), find(By.xpath(twinColSelectLocator)));
        return twinCol.getLeftCoItemsList();
    }

    public List<String> get_right_col_items_list() {
        TwinColSelect twinCol = new TwinColSelect(getDriver(), find(By.xpath(twinColSelectLocator)));
        return twinCol.getRightColItemsList();
    }


}