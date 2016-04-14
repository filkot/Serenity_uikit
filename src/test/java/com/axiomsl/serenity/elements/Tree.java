package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.By;

import java.util.List;

/**
 * Created by kfilippov on 11.02.2016.
 */
public class Tree extends BasePage {

    //region Private Fields

    private final WebElementFacade wrappedElement;
    private String treeNodeLocator = "//span[text() = '%s']/ancestor::div[contains(@class, 'v-tree-node') and @aria-level='%s']";
    private String treeRootLocator = "//span[text() = '%s']/ancestor::div[contains(@class, 'v-tree-node-root')]";

    private final static String TREE_EXPANDED_ITEM = "//span[contains(text(), '%s')]/ancestor::div[contains(@aria-expanded, 'true')]";
    private final static String TREE_COLLAPSED_ITEM = "//span[contains(text(), '%s')]/ancestor::div[contains(@aria-expanded, 'false')]";
    private final static String TREE_CHECKED_ITEM = "//span[contains(text(), '%s')]/ancestor::div[contains(@aria-selected, 'true')]";
    private final static String TREE_UNCHECKED_ITEM = "//span[contains(text(), '%s')]/ancestor::div[contains(@aria-selected, 'false')]";

    //endregion Private Fields

    //region Constructors

    public Tree(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }

    //endregion Constructors

    //region Private Methods

    private String getItemsByPattern(String xpathPattern, String itemPattern) {
        List<WebElementFacade> listItems = wrappedElement.thenFindAll(By.xpath(String.format(xpathPattern, itemPattern)));

        StringBuilder strOut = new StringBuilder();

        for (WebElementFacade we : listItems) {
            String str = we.getText().replace("\n", ", ");
            strOut.append(str + ", ");
        }

        int strLen = strOut.toString().length();
        if (strLen > 2)
            strOut.delete((strLen-2), strLen);

        return strOut.toString();
    }

    //end region Private Methods

    //region Public Methods

    public void selectItem(String item) {
        String[] itemList = item.split("->");

        String rootPath = String.format(treeRootLocator, itemList[0]);
        WebElementFacade treeRoot = wrappedElement.then(By.xpath(rootPath));
        clickByCoordinate(treeRoot, 1, 1);

        String nodePath = rootPath;
        for (int i = 1; i < itemList.length; i++) {
            System.out.println(itemList[i]);
            nodePath = nodePath + String.format(treeNodeLocator, itemList[i], i + 1);
            System.out.println(nodePath);
            WebElementFacade treeNode = treeRoot.then(By.xpath(nodePath));
            if (itemList.length == i + 1) {
                treeNode.click();
                break;
            }
            clickByCoordinate(treeNode, 1, 1);
        }
    }

    public void selectItemInTree(String item) {
        selectItem(item);
    }

    public String getExpandedItemsInTree(String itemPattern) {
        return getItemsByPattern(TREE_EXPANDED_ITEM, itemPattern);
    }

    public String getCollapsedItemsInTree(String itemPattern) {
        return getItemsByPattern(TREE_COLLAPSED_ITEM, itemPattern);
    }

    public String getCheckedItemsInTree(String itemPattern) {
        return getItemsByPattern(TREE_CHECKED_ITEM, itemPattern);
    }

    public String getUncheckedItemsInTree(String itemPattern) {
        return getItemsByPattern(TREE_UNCHECKED_ITEM, itemPattern);
    }

    //endregion Public Methods
}
