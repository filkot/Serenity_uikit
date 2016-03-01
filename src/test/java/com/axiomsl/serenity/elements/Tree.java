package com.axiomsl.serenity.elements;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.By;

/**
 * Created by kfilippov on 11.02.2016.
 */
public class Tree extends PageObject {
    private final WebElementFacade wrappedElement;
    private String treeNodeLocator = ".//div[@class = 'v-tree-node-caption']//span[text() = '%s']";

    public Tree(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }

    public void selectItem(String item){
        WebElementFacade treeNode = wrappedElement.then(By.xpath(String.format(treeNodeLocator, item)));
        treeNode.click();
    }
}
