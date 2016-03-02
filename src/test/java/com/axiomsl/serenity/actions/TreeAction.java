package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.CheckBox;
import com.axiomsl.serenity.elements.Tree;
import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.Keys;
import org.openqa.selenium.interactions.Actions;


public class TreeAction extends BasePage {

    private String treeLocator = "//div[@role='tree']";
//    private String treeNodeLocator = "//span[text() = '%s']/ancestor::div[contains(@class, 'v-tree-node-leaf') or contains(@class, 'v-tree-node-last') and @aria-level='%s']";
    private String treeNodeLocator = "//span[text() = '%s']/ancestor::div[contains(@class, 'v-tree-node') and @aria-level='%s']";
    private String treeRootLocator = "//span[text() = '%s']/ancestor::div[contains(@class, 'v-tree-node-root')]";



    public void select_item_in_tree(String item){
//        Tree tree = new Tree(find(By.xpath(treeLocator)));
//        tree.selectItem(item);
        String[] itemList = item.split("->");

        String rootPath = String.format(treeRootLocator, itemList[0]);
        WebElementFacade treeRoot = find(By.xpath(rootPath));
        clickByCoordinate(treeRoot, 1, 1);

        String nodePath = rootPath;
        for(int i = 1; i<itemList.length; i++){
            System.out.println(itemList[i]);
            nodePath = nodePath + String.format(treeNodeLocator, itemList[i], i+1);
            System.out.println(nodePath);
            WebElementFacade treeNode = treeRoot.then(By.xpath(nodePath));
            if(itemList.length == i+1){
                treeNode.click();
                break;
            }
            clickByCoordinate(treeNode, 1,1);
        }
    }




}