package com.axiomsl.serenity.pages;

import ch.lambdaj.Lambda;
import ch.lambdaj.function.convert.Converter;
import net.serenitybdd.core.pages.WebElementFacade;
import net.thucydides.core.pages.PageObject;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;

import java.util.List;
import java.util.Map;

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

    public void dbCLick(WebDriver driver, WebElementFacade element){
        Actions actions = new Actions(driver);
        actions.moveToElement(element).doubleClick().build().perform();
    }

    public void moveToElement(WebDriver driver, WebElementFacade element){
        Actions actions = new Actions(driver);
        actions.moveToElement(element).build().perform();
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

    protected static final class MapConverter<K, F, T> implements Converter<Map<K, F>, Map<K, T>> {
        private final Converter<F, T> valueConverter;

        public static <F, T> Converter<Map<String, F>, Map<String, T>> toMapsConvertingEachValue(Converter<F, T> valueConverter) {
            return new MapConverter(valueConverter);
        }

        private MapConverter(Converter<F, T> valueConverter) {
            this.valueConverter = valueConverter;
        }

        public Map<K, T> convert(Map<K, F> map) {
            return Lambda.convertMap(map, this.valueConverter);
        }
    }


    protected static final class ListConverter<F, T> implements Converter<List<F>, List<T>> {
        private final Converter<F, T> itemsConverter;

        public static <F, T> Converter<List<F>, List<T>> toListsConvertingEachItem(Converter<F, T> itemsConverter) {
            return new ListConverter(itemsConverter);
        }

        private ListConverter(Converter<F, T> itemsConverter) {
            this.itemsConverter = itemsConverter;
        }

        public List<T> convert(List<F> list) {
            return Lambda.convert(list, this.itemsConverter);
        }
    }

    protected static final class WebElementToTextConverter implements Converter<WebElementFacade, String> {
        public static Converter<WebElementFacade, String> toText() {
            return new WebElementToTextConverter();
        }

        public static Converter<WebElementFacade, String> toTextValues() {
            return new WebElementToTextConverter();
        }

        private WebElementToTextConverter() {
        }

        public String convert(WebElementFacade element) {
            return element.getText();
        }
    }
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