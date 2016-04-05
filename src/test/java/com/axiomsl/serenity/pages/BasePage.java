package com.axiomsl.serenity.pages;

import ch.lambdaj.Lambda;
import ch.lambdaj.function.convert.Converter;
import com.axiomsl.serenity.helpers.HelperManager;
import net.serenitybdd.core.pages.WebElementFacade;
import net.thucydides.core.pages.PageObject;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;

import java.util.List;
import java.util.Map;

//@DefaultUrl("http://192.168.11.176:8080/axiom/tests")
public class BasePage extends PageObject {

    //region Private Fields

    private String itemInTreeLocator = "//div[contains (@class, 'v-tree')]//span[text() = '%s']";
    private String buttonLocator = "//div[@role = 'button']//span";
    private String textFieldLocator = "//input[@type = 'text']";
    private String treeNodeLocator = "//div[@class = 'v-tree-node-caption']//span[text() = '%s']";
    private String exampleClassPathLocator = "//div[contains@class, 'v-splitpanel-second-container']";
    private String exampleClassPathSplitterLocator = "//div[@class = 'v-splitpanel-hsplitter']";
    private String passwordLocator = "//input[@type = 'password']";

    //endregion Private Fields

    //region Protected Fields

    protected final WebDriver driver = HelperManager.WebDriver.GetGlobalWebDriver();

    //endregion Protected Fields

    //region Public Static Methods

    public static boolean VisibilityOfElement(WebElementFacade element) {
        try {
            return element.isCurrentlyVisible();
        } catch (StaleElementReferenceException | NoSuchElementException | ElementNotVisibleException e) {
            return false;
        } catch (Throwable t) {
            throw new Error(t);
        }
    }

    //endregion Public Static Methods

    //region Public Methods

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

    public void move_cursor_on_example_class_path_area(){
        moveToElement(find(By.xpath(exampleClassPathLocator)));
    }

    public void click_on_example_class_path_area(){
        find(By.xpath(exampleClassPathLocator)).click();
    }

    public Boolean is_class_path_available(){
        int hsX1 = find(By.xpath(exampleClassPathSplitterLocator)).getLocation().getX();
        dragAndDropByOffset(find(By.xpath(exampleClassPathSplitterLocator)), 10, 0);
        int hsX2 = find(By.xpath(exampleClassPathSplitterLocator)).getLocation().getX();

        return ((hsX2 - hsX1) != 0);
    }

    public void open_dashboard(String dashboardName) {
        WebElementFacade dashboard = find(By.xpath(String.format(itemInTreeLocator, dashboardName)));
        dashboard.click();
    }

    public void clickByCoordinate(WebElementFacade element, int x, int y) {
        Actions actions = new Actions(HelperManager.WebDriver.GetGlobalWebDriver());
        actions.moveToElement(element, x, y).click().build().perform();
    }

    public void click(WebElementFacade element) {
        Actions actions = new Actions(HelperManager.WebDriver.GetGlobalWebDriver());
        actions.moveToElement(element).click().build().perform();
    }

    public void doubleClick(WebElementFacade element) {
        Actions actions = new Actions(HelperManager.WebDriver.GetGlobalWebDriver());
        actions.moveToElement(element).doubleClick().build().perform();
    }

    public void moveToElement(WebElementFacade element) {
        Actions actions = new Actions(HelperManager.WebDriver.GetGlobalWebDriver());
        actions.moveToElement(element).build().perform();
    }

    public void clickWithKey(WebElementFacade element){
        Actions actions = new Actions(HelperManager.WebDriver.GetGlobalWebDriver());
        actions.moveToElement(element).keyDown(Keys.CONTROL).click(element).keyUp(Keys.CONTROL).build().perform();
    }

    public void rightClick(WebElementFacade element) {
        Actions actions = new Actions(HelperManager.WebDriver.GetGlobalWebDriver());
        actions.moveToElement(element).contextClick().build().perform();
    }

    public void controlDown(WebElementFacade element) {
        Actions actions = new Actions(HelperManager.WebDriver.GetGlobalWebDriver());
        actions.moveToElement(element).keyDown(Keys.CONTROL).build().perform();
    }

    public void dragAndDropByOffset(WebElementFacade element, int offsetX, int offsetY) {
        Actions actions = new Actions(HelperManager.WebDriver.GetGlobalWebDriver());
        actions.dragAndDropBy(element, offsetX, offsetY).build().perform();
    }

    public void moveMouseByOffset(int offsetX, int offsetY) {
        Actions actions = new Actions(HelperManager.WebDriver.GetGlobalWebDriver());
        actions.moveByOffset(offsetX, offsetY).build().perform();
    }

//_______Converter______________________________________________________________________________________________________



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
    //endregion Public Methods
}