package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.Tree;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

public class TreeAction extends BasePage {

    //region Private Fields

    private String treeNavigationLocator = "//div[@role='tree']";
    private String treeLocator = "//div[contains(@class, 'v-tree-checkboxed')]";

    private String itemWithTextLocator = "//div//span[text() = '%s']";
    //endregion Private Fields

    //region Public Methods

    public Boolean isTreeItemAvailable(String item) {
        String itemColor = find(By.xpath(String.format(itemWithTextLocator, item))).getCssValue("color");
        find(By.xpath(String.format(itemWithTextLocator, item))).click();
        String itemColor2 = find(By.xpath(String.format(itemWithTextLocator, item))).getCssValue("color");

        return (!itemColor2.equals(itemColor)) ? true : false;
    }

    public Tree getNavigationTree() {
        Tree tree = new Tree(find(By.xpath(treeNavigationLocator)));
        return tree;
    }

    public Tree getExampleTree() {
        Tree tree = new Tree(find(By.xpath(treeLocator)));
        return tree;
    }

    //endregion Public Methods
}