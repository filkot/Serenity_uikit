package com.axiomsl.serenity.pages;

import net.serenitybdd.core.pages.WebElementFacade;
import net.thucydides.core.pages.PageObject;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;

import java.util.List;

//@DefaultUrl("http://192.168.11.176:8080/axiom/tests")
public class BasePage extends PageObject {

    private String itemInTreeLocator = "//div[contains (@class, 'v-tree')]//span[text() = '%s']";
    private String buttonLocator = "//div[@role = 'button']//span";
    private String textFieldLocator = "//input[@type = 'text']";
    private String treeNodeLocator = "//div[@class = 'v-tree-node-caption']//span[text() = '%s']";
    private String passwordLocator = "//input[@type = 'password']";


    public void login() {
        find(By.xpath(passwordLocator)).waitUntilEnabled();
        WebElementFacade login = find(By.xpath(textFieldLocator));
        WebElementFacade password = find(By.xpath(passwordLocator));
        WebElementFacade button = find(By.xpath(buttonLocator));
        login.type(System.getProperty("axiom.login"));
        password.type(System.getProperty("axiom.password"));
        button.click();
        find(By.xpath(passwordLocator)).waitUntilNotVisible();
    }

    public void clickByCoordinate(WebElementFacade element, int x, int y) {
        Actions actions = new Actions(getDriver());
        actions.moveToElement(element, x, y).click().build().perform();
    }

    public void dbCLick1(WebDriver driver, WebElementFacade element){
        Actions actions = new Actions(driver);
        actions.moveToElement(element, 1, 1).doubleClick().build().perform();
        actions.moveToElement(element).click().build().perform();
        actions.moveToElement(element).click().click().build().perform();
        actions.moveToElement(element).doubleClick().doubleClick().release().build().perform();
        actions.moveToElement(element).doubleClick().build().perform();

    }


    //_________________________________________________________________________________________

    public void open_dashboard(String dashboardName) {
        WebElementFacade dashboard = find(By.xpath(String.format(itemInTreeLocator, dashboardName)));
        dashboard.click();
    }
//    public void select_item_in_tree(String item){
//
//        WebElementFacade treeNode = find(By.xpath(String.format(treeNodeLocator, item)));
//        treeNode.click();
//    }


//______________________________________________________________________________________________________________________

    public boolean VisibilityOfElement(WebElementFacade element) {
        try {
            return element.isCurrentlyVisible();
        } catch (StaleElementReferenceException | NoSuchElementException | ElementNotVisibleException e) {
            return false;
        } catch (Throwable t) {
            throw new Error(t);
        }
    }

    public boolean VisibilityOfElementLocated(By locator) {
        try {
            List<WebElementFacade> elements = findAll(locator);
            if (elements.isEmpty()) {
                return true;
            }
            return elements.get(0).isDisplayed();
        } catch (StaleElementReferenceException | NoSuchElementException | ElementNotVisibleException e) {
            return false;
        } catch (Throwable t) {
            throw new Error(t);
        }
    }

    public boolean InvisibilityOfElement(WebElementFacade element) {
        try {
            return !element.isCurrentlyVisible();
        } catch (StaleElementReferenceException | NoSuchElementException | ElementNotVisibleException e) {
            return true;
        } catch (Throwable t) {
            throw new Error(t);
        }
    }

    public boolean InvisibilityOfElementLocated(By locator) {
        try {
            List<WebElementFacade> elements = findAll(locator);
            if (elements.isEmpty()) {
                return true;
            }
            return !elements.get(0).isDisplayed();
        } catch (StaleElementReferenceException | NoSuchElementException | ElementNotVisibleException e) {
            return true;
        } catch (Throwable t) {
            throw new Error(t);
        }
    }

}