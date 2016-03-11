package com.axiomsl.serenity.pages;

import ch.lambdaj.Lambda;
import ch.lambdaj.function.convert.Converter;
import net.serenitybdd.core.pages.WebElementFacade;
import net.thucydides.core.pages.PageObject;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.internal.Locatable;

import java.util.List;
import java.util.Map;

//@DefaultUrl("http://192.168.11.176:8080/axiom/tests")
public class BasePage extends PageObject {

    private String itemInTreeLocator = "//div[contains (@class, 'v-tree')]//span[text() = '%s']";
    private String buttonLocator = "//div[@role = 'button']//span";
    private String textFieldLocator = "//input[@type = 'text']";
    private String treeNodeLocator = "//div[@class = 'v-tree-node-caption']//span[text() = '%s']";
    private String treeLocator = "//div[@role='tree']";
    private String passwordLocator = "//input[@type = 'password']";

    public final String stickyToolbar = ".b-sticky:not([style*='hidden'])";
    public final int stickyToolbarHeight = 60;


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

    public void move_cursor_on_tree(){
        moveToElement(getDriver(), find(By.xpath(treeLocator)));
    }

    public void clickByCoordinate(WebDriver driver,WebElementFacade element, int x, int y) {
        Actions actions = new Actions(driver);
        actions.moveToElement(element, x, y).click().build().perform();
    }

    public void dbCLick(WebDriver driver, WebElementFacade element) {
        Actions actions = new Actions(driver);
        actions.moveToElement(element).doubleClick().build().perform();
    }

    public void moveToElement(WebDriver driver, WebElementFacade element) {
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

    /**
     * Прокручиваем скролл вниз страницы
     */
//    public void scrollPageDown() {
//        int y = element(footer).getLocation().getY();
//        evaluateJavascript("window.scrollTo(0," + y + ")");
//    }

    /**
     * Прокручиваем страницу до элемента , если элемент вне видимости пользователя
     *
     * @param webElement элемент, до которого необходимо скроллить
     */
    public void scrollPageToElement(WebElementFacade webElement) {
        if (!elementIsIntoView(webElement)) {
            int y = ((Locatable) webElement).getCoordinates().inViewPort().getY();
            evaluateJavascript("window.scrollBy(0," + y + ")");
        }
    }

    /**
     * Прокручиваем страницу до элемента, если элемент вне видимости пользователя
     *
     * @param field элемент, до которого необходимо скроллить
     */
    public void scrollPageToElementWithToolbar(WebElementFacade field) {
        if (!elementIsIntoView(field)) {
            int elementYLocation = ((Locatable) field).getCoordinates().inViewPort().getY();
            int y = elementYLocation - stickyToolbarHeight;
            evaluateJavascript("window.scrollBy(0," + y + ")");
            waitABit(300);
        }
    }

    /**
     * Проверяет что элемент виден пользователю в данный момент
     *
     * @param element
     * @return
     */
    private boolean elementIsIntoView(WebElementFacade element) {
        int docViewTop;
        if (isToolbarSticked()) {
            docViewTop = ((Number) evaluateJavascript("return $(window).scrollTop();")).intValue() + stickyToolbarHeight;
        } else {
            docViewTop = ((Number) evaluateJavascript("return $(window).scrollTop();")).intValue();
        }
        int docViewBottom = docViewTop + ((Number) evaluateJavascript("return $(window).height();")).intValue();
        int elemTop = ((Number) evaluateJavascript("return $(arguments[0]).offset().top;", element)).intValue();
        int elemBottom = elemTop + ((Number) evaluateJavascript("return $(arguments[0]).height();", element)).intValue();
        return (((docViewTop < elemTop) && (docViewBottom > elemBottom)));
    }

    /**
     * Проверяет что есть тулбар прилипший
     *
     * @return
     */
    private boolean isToolbarSticked() {
        return element(stickyToolbar).getAttribute("class").contains("yes");
    }



//______________________________________________________________________________________________________________________
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


    public static boolean VisibilityOfElement(WebElementFacade element) {
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