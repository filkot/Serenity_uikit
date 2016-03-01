package com.axiomsl.serenity.elements;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.By;

import java.util.List;

/**
 * Created by kfilippov on 11.02.2016.
 */
public class TwinColSelect extends PageObject {

    private final WebElementFacade wrappedElement;
    //TwinColSelect
    private String leftColLocator = ".//select[@class = 'v-select-twincol-options']";
    private String rightColLocator = ".//select[@class = 'v-select-twincol-selections']";
    private String forwardButtonLocator = ".//div[@class = 'v-select-twincol-buttons']/div[1]//span";
    private String backButtonLocator = ".//div[@class = 'v-select-twincol-buttons']/div[3]//span";

    public TwinColSelect(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }

    public void oneFromLeftToRight(String item){
        wrappedElement.then(By.xpath(leftColLocator)).selectByVisibleText(item);
        this.clickForwardButton();
    }

    public void oneFromRightToLeft(String item){
        wrappedElement.then(By.xpath(rightColLocator)).selectByVisibleText(item);
        this.clickBackButton();
    }

    public List<String> getLeftCoItemsList(){
        return wrappedElement.then(By.xpath(leftColLocator)).getSelectOptions();
    }

    public List<String> getRightColItemsList(){
        return wrappedElement.then(By.xpath(rightColLocator)).getSelectOptions();
    }

    public void clickForwardButton(){
        wrappedElement.then(By.xpath(forwardButtonLocator)).click();
    }

    public void clickBackButton(){
        wrappedElement.then(By.xpath(backButtonLocator)).click();
    }


}
