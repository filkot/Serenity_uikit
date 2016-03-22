package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.Tree;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

public class TreeAction extends BasePage {

    //region Private Fields

    private String treeLocator = "//div[@role='tree']";

    //endregion Private Fields

    //region Public Methods

    public void select_item_in_tree(String item) {
        Tree tree = new Tree(find(By.xpath(treeLocator)));
        tree.selectItem(item);
    }

    //endregion Public Methods
}