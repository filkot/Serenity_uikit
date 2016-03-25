package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.Tree;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

public class TreeAction extends BasePage {

    //region Private Fields

    private String treeLocator = "//div[@role='tree']";
    private String itemWithTextLocator = "//div//span[text() = '%s']";

    //endregion Private Fields

    //region Public Methods

    public void select_item_in_tree(String item) {
        Tree tree = new Tree(find(By.xpath(treeLocator)));
        tree.selectItem(item);
    }

    public Boolean is_tree_item_available(String item) {
        String itemColor = find(By.xpath(String.format(itemWithTextLocator, item))).getCssValue("color");
        find(By.xpath(String.format(itemWithTextLocator, item))).click();
        String itemColor2 = find(By.xpath(String.format(itemWithTextLocator, item))).getCssValue("color");

        return (!itemColor2.equals(itemColor)) ? true : false;
    }

    //endregion Public Methods
}