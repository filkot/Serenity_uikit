package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by kfilippov on 11.03.2016.
 */
public class HoverMenu extends BasePage{

    private final WebDriver driver;
    private final WebElementFacade wrappedElement;

    private String buttonLocator = ".//div[@class = 'hover-menu-button']";
    private String menuItemsLocator = ".//div[@class= 'hover-menu-items']";

    public HoverMenu(WebDriver driver, WebElementFacade wrappedElement) {
        this.driver = driver;
        this.wrappedElement = wrappedElement;
    }

    public void hoverOnMenu() {
        WebElementFacade menu = wrappedElement.then(By.xpath(buttonLocator));
        moveToElement(driver, menu);
    }

    public List<String> getItemsList(){
        List<String> list = new ArrayList<>();
        for(WebElementFacade item: wrappedElement.thenFindAll(By.xpath(menuItemsLocator))){
            list.add(item.getText());
        }
        return list;
    }

    public boolean isMenuItemsList(){
        if(wrappedElement.thenFindAll(By.xpath(menuItemsLocator)).size()>0){
            return true;
        }
        return false;
    }
}
