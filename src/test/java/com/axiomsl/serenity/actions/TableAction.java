package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.Table;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

import java.util.List;


public class TableAction extends BasePage {


    public static final String EMPTY_STRING = "EMPTY_STRING";

    private String tableLocator = "//div[contains(@class, 'v-table-components-inside')]";
    private String captionLocator = "//div[contains(@class,'v-caption')]/span[text() = '%s']";

    public List<String> get_column_of_table_by_index(int i) {
        Table table = new Table(getDriver(), find(By.xpath(tableLocator)));
        return table.getColumnAsStringByIndex(i);
    }

    public List<String> get_header_list() {
        Table table = new Table(getDriver(), find(By.xpath(tableLocator)));
        return table.getHeadingsAsString();
    }

    public void getTableRows() {
        Table table = new Table(getDriver(), find(By.xpath(tableLocator)));
        table.getRows();
        System.out.println(table.getColumnAsStringByIndex(0));
    }

    public Table getTableByCaption(String caption){
        Table table;
        if(caption.equals(EMPTY_STRING)){
            table = new Table(getDriver(), find(By.xpath(tableLocator)));
        }else{
            String path = String.format(captionLocator, caption) + "/parent::div/following-sibling::div[contains(@class, 'v-table-components-inside')]";
            table = new Table(getDriver(), find(By.xpath(path)));
        }
        return table;
    }


}