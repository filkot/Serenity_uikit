package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.LazyTable;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

/**
 * Created by mzhelezko on 14-Apr-16.
 */
public class LazyTableAction extends BasePage {

    //region Private Fields

    private String tableLocator = "//div[contains(@class, 'v-table')]";
    private String captionLocator = "//div[contains(@class,'v-caption')]/div[text() = '%s']";

    //endregion Private Fields

    //endregion Public Methods

    public LazyTable getTable(String caption){
        LazyTable lazyTable;
        if(caption.equals("a") || caption.equals("the") ){
            lazyTable = new LazyTable(find(By.xpath(tableLocator)));
        }else{
            String path = String.format(captionLocator, caption)
                    + String.format("/parent::div/preceding-sibling::div[contains(@class, 'wrapper-components-inside')]/div");
            lazyTable = new LazyTable(find(By.xpath(path)));
        }
        return lazyTable;
    }

    //endregion Public Methods

}
