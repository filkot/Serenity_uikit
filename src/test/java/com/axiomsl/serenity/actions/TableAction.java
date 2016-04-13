package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.Table;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

import java.util.List;

public class TableAction extends BasePage {

    //region Private Fields

    //private String tableLocator = "//div[contains(@class, 'v-table-components-inside')]";
    private String tableLocator = "//div[contains(@class, 'v-table')]";
    private String captionLocator = "//div[contains(@class,'v-caption')]/span[text() = '%s']";

    //endregion Private Fields

    //region Public Methods

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

    public Table getTable(String caption){
        Table table;
        if(caption.equals("a") || caption.equals("the") ){
            table = new Table(find(By.xpath(tableLocator)));
        }else{
            //String path = String.format(captionLocator, caption)
            //        + String.format("/parent::div/following-sibling::%s", tableLocator.replace("//",""));
            String path = String.format(captionLocator, caption)
                    + String.format("/parent::div/following-sibling::div[contains(concat(' ', normalize-space(@class), ' '), concat(' ', 'v-table', ' '))]");
            table = new Table(find(By.xpath(path)));
        }
        return table;
    }

    //endregion Public Methods
}