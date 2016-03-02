package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.Table;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

import java.util.List;


public class TableAction extends BasePage {


    private String tableLocator = "//div[contains(@class, 'v-table-components-inside')]";

    public List<String> get_column_of_table_by_index(int i) {
        Table table = new Table(find(By.xpath(tableLocator)));
        return table.getColumnAsStringByIndex(i);
    }

    public List<String> get_header_list() {
        Table table = new Table(find(By.xpath(tableLocator)));
        return table.getHeadingsAsString();
    }

    public void getTableRows() {
        Table table = new Table(find(By.xpath(tableLocator)));
        table.getRows();

        System.out.println(table.getColumnAsStringByIndex(0));
    }


}