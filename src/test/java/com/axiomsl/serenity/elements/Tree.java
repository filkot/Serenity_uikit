package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.interactions.Actions;

/**
 * Created by kfilippov on 11.02.2016.
 */
public class Tree extends PageObject {
    private final WebElementFacade wrappedElement;
//    private String treeNodeLocator = ".//div[@class = 'v-tree-node-caption']//span[text() = '%s']";
//    private String treeNodeLocator = "//span[text() = '%s']/ancestor::div[contains(@class, 'v-tree-node-leaf') or contains(@class, 'v-tree-node-last')]";
//    private String treeRootLocator = "//span[text() = '%s']/ancestor::div[contains(@class, 'v-tree-node-root')]";
    private String treeNodeLocator = "//span[text() = '%s']/ancestor::div[contains(@class, 'v-tree-node-leaf') or contains(@class, 'v-tree-node-last')]";
    private String treeRootLocator = "//span[text() = '%s']/ancestor::div[contains(@class, 'v-tree-node-root')]";

    public Tree(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }

    public void selectItem(String item){
        String[] itemList = item.split("->");

        String rootPath = String.format(treeRootLocator, itemList[0]);
        WebElementFacade treeRoot = wrappedElement.then(By.xpath(rootPath));
        clickByCoordinate(treeRoot, 1, 1);

        String nodePath = rootPath;
        for(int i = 1; i<itemList.length; i++){
            System.out.println(itemList[i]);
            nodePath = nodePath + String.format(treeNodeLocator, itemList[i], i+1);
            System.out.println(nodePath);
            WebElementFacade treeNode = wrappedElement.then(By.xpath(nodePath));
            if(itemList.length == i+1){
                treeNode.click();
                break;
            }
            clickByCoordinate(treeNode, 1,1);
        }
    }

    public void clickByCoordinate(WebElementFacade element, int x, int y){
        Actions actions = new Actions(getDriver());
        actions.moveToElement(element, x, y).click().build().perform();
    }


}
