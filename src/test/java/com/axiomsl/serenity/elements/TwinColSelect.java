package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.interactions.Actions;

import java.util.List;

/**
 * Created by kfilippov on 11.02.2016.
 */
public class TwinColSelect extends BasePage {
    private final WebElementFacade wrappedElement;
    //TwinColSelect
    private String itemLocator = "//option[text() = '%s']";
    private String leftColLocator = ".//select[@class = 'v-select-twincol-options']";
    private String rightColLocator = ".//select[@class = 'v-select-twincol-selections']";
    private String forwardButtonLocator = ".//div[@class = 'v-select-twincol-buttons']/div[1]//span";
    private String backButtonLocator = ".//div[@class = 'v-select-twincol-buttons']/div[3]//span";

    public TwinColSelect(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }

    public void selectItemInLeftCol(String item) {
        wrappedElement.then(By.xpath(leftColLocator)).selectByVisibleText(item);
    }

    public void selectItemInRightCol(String item) {
        wrappedElement.then(By.xpath(rightColLocator)).selectByVisibleText(item);
    }

    public void selectLeftCol() {
        wrappedElement.then(By.xpath(leftColLocator)).click();
    }

    public void selectRightCol() {
        wrappedElement.then(By.xpath(rightColLocator)).click();
    }

    public void clickForwardButton() {
        wrappedElement.then(By.xpath(forwardButtonLocator)).click();
    }

    public void clickBackButton() {
        wrappedElement.then(By.xpath(backButtonLocator)).click();
    }

    public void transferItemFromLeftToRight(String item) {
        this.selectItemInLeftCol(item);
        this.clickForwardButton();
    }

    public void transferItemFromRightToLeft(String item) {
        this.selectItemInRightCol(item);
        this.clickBackButton();
    }

    public void transferItemFromLeftToRightByDbClick(String item) {
        dbCLick(wrappedElement.then(By.xpath(leftColLocator)).selectByVisibleText(item));
    }
    public void transferItemFromRightToLeftByDbClick(String item) {
        dbCLick(wrappedElement.then(By.xpath(rightColLocator)).selectByVisibleText(item));
    }

    public List<String> getLeftCoItemsList() {
        return wrappedElement.then(By.xpath(leftColLocator)).getSelectOptions();
    }

    public List<String> getRightColItemsList() {
        return wrappedElement.then(By.xpath(rightColLocator)).getSelectOptions();
    }



    public WebElementFacade getItem(String item){
        return wrappedElement.then(By.xpath(leftColLocator + String.format(itemLocator, item)));
    }


}
