package com.axiomsl.serenity.elements;

import ch.lambdaj.Lambda;
import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;

import java.util.*;

/**
 * Created by kfilippov on 10.02.2016.
 */
public class Table extends BasePage {
    private final WebDriver driver;
    private final WebElementFacade wrappedElement;
    private String rowLocator = ".//tr[contains(@class, 'v-table-row')]";
    private String rowByCellLocator = "./ancestor::tr[contains(@class, 'v-table-row')]";
    private String selectedRowLocator = ".//tr[contains(@class, 'v-selected v-table-row')]";
//    private String cellLocator = ".//td[contains(@class, 'table-cell-content')]//span";
    private String cellLocator = ".//td[contains(@class, 'table-cell-content')]//div[contains(@class, 'v-table-cell-wrapper')]";
    private String headingLocator = ".//td[contains(@class, 'table-header')]/div[contains(@class, 'table-caption')]";
    private String settingsLocator = ".//div[@class='v-table-column-selector']";
    private String menuVisibilityLocator = "//div[contains(@class ,'gwt-MenuBar')]//span/div[text() = '%s']";
    private String scrollLocator = ".//div[contains(@class, 'v-scrollable')]";
//    private String checkBoxLocator = ".//input[@type='checkbox']";
    private String checkBoxLocator = ".//span[contains(@class, 'v-checkbox')]";




    public Table(WebDriver driver, WebElementFacade wrappedElement) {
        this.driver = driver;
        this.wrappedElement = wrappedElement;
    }

    public List<WebElementFacade> getHeadings() {
        return wrappedElement.thenFindAll(By.xpath(headingLocator));
    }

    public List<String> getHeadingsAsString() {
        return Lambda.convert(this.getHeadings(), BasePage.WebElementToTextConverter.toTextValues());
//        return Lambda.convert(this.getHeadings(), Table.WebElementToTextConverter.toTextValues());
    }

    public List<List<WebElementFacade>> getRows() {
        List<List<WebElementFacade>> rows = new ArrayList<>();
        List<WebElementFacade> rowElements = wrappedElement.thenFindAll(By.xpath(rowLocator));
        for (WebElementFacade rowElement : rowElements) {
            rows.add(rowElement.thenFindAll(By.xpath(cellLocator)));
        }
        return rows;
    }

    public List<WebElementFacade> getCellsInRow(WebElementFacade rowElement){
        return rowElement.thenFindAll(By.xpath(cellLocator));
    }

    public List<List<String>> getRowsAsString() {
        return Lambda.convert(this.getRows(), BasePage.ListConverter.toListsConvertingEachItem(Table.WebElementToTextConverter.toTextValues()));
//        return Lambda.convert(this.getRows(), Table.ListConverter.toListsConvertingEachItem(Table.WebElementToTextConverter.toTextValues()));
    }

    public List<List<WebElementFacade>> getColumns() {
        ArrayList columns = new ArrayList();
        List rows = this.getRows();
        if (rows.isEmpty()) {
            return columns;
        } else {
            int columnsNumber = ((List) rows.get(0)).size();

            for (int i = 0; i < columnsNumber; ++i) {
                ArrayList column = new ArrayList();
                Iterator i$ = rows.iterator();

                while (i$.hasNext()) {
                    List row = (List) i$.next();
                    column.add(row.get(i));
                }

                columns.add(column);
            }
            return columns;
        }
    }

    public List<List<String>> getColumnsAsString() {
        return Lambda.convert(this.getColumns(), BasePage.ListConverter.toListsConvertingEachItem(BasePage.WebElementToTextConverter.toTextValues()));
//        return Lambda.convert(this.getColumns(), Table.ListConverter.toListsConvertingEachItem(Table.WebElementToTextConverter.toTextValues()));
    }

    public List<String> getColumnAsStringByIndex(int index) {
        return getColumnsAsString().get(index);
    }

    public WebElementFacade getCellAt(int i, int j) {
        return (WebElementFacade) ((List) this.getRows().get(i)).get(j);
    }

    public List<Map<String, WebElementFacade>> getRowsMappedToHeadings() {
        return this.getRowsMappedToHeadings(this.getHeadingsAsString());
    }

    public List<Map<String, WebElementFacade>> getRowsMappedToHeadings(List<String> headings) {
        ArrayList rowsMappedToHeadings = new ArrayList();
        List rows = this.getRows();
        if (rows.isEmpty()) {
            return rowsMappedToHeadings;
        } else {
            Iterator i$ = rows.iterator();

            while (i$.hasNext()) {
                List row = (List) i$.next();
                if (row.size() != headings.size()) {
                    try {
                        throw new Exception("Headings count is not equal to number of cells in row");
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }

                HashMap rowToHeadingsMap = new HashMap();
                int cellNumber = 0;

                for (Iterator i$1 = headings.iterator(); i$1.hasNext(); ++cellNumber) {
                    String heading = (String) i$1.next();
                    rowToHeadingsMap.put(heading, row.get(cellNumber));
                }

                rowsMappedToHeadings.add(rowToHeadingsMap);
            }

            return rowsMappedToHeadings;
        }
    }

    public List<Map<String, String>> getRowsAsStringMappedToHeadings() {
        return this.getRowsAsStringMappedToHeadings(this.getHeadingsAsString());
    }

    public List<Map<String, String>> getRowsAsStringMappedToHeadings(List<String> headings) {
        return Lambda.convert(this.getRowsMappedToHeadings(headings), BasePage.MapConverter.toMapsConvertingEachValue(BasePage.WebElementToTextConverter.toText()));
    }

    public void makeColumnVisible(String item){
        wrappedElement.then(By.xpath(settingsLocator)).click();
        String attribute = String.format(menuVisibilityLocator, item) + "/parent::span";
        if(driver.findElement(By.xpath(attribute)).getAttribute("class").contains("off")){
            driver.findElement(By.xpath(String.format(menuVisibilityLocator, item))).click();
        }else{
            System.out.println("makeColumnVisible: Column already on");
        }
    }

    public void makeColumnNotVisible(String item){
        wrappedElement.then(By.xpath(settingsLocator)).click();
        String attribute = String.format(menuVisibilityLocator, item) + "/parent::span";
        if(driver.findElement(By.xpath(attribute)).getAttribute("class").contains("on")){
            driver.findElement(By.xpath(String.format(menuVisibilityLocator, item))).click();
        }else{
            System.out.println("makeColumnNotVisible: Column already off");
        }
    }

    public void scrollVerticallyTable(String action){
        JavascriptExecutor js = (JavascriptExecutor) driver;
        WebElementFacade element = wrappedElement.then(By.xpath(scrollLocator));
        String heightPath = scrollLocator + "/div";
        String heightTemp =  wrappedElement.then(By.xpath(heightPath)).getAttribute("style");
        String height = "9000";
        height = heightTemp.replaceAll("[\\D]", "");

        if(action.contains("up")){
            js.executeScript("arguments[0].scrollTop = 0;",element);
        }else{
            js.executeScript("arguments[0].scrollTop = "+height+";",element);
        }
    }

//    public void scrollDown(){
//        List<List<WebElementFacade>> rows = this.getRows();
//        WebElementFacade element = rows.get(rows.size()-1).get(0);
//        ((Locatable) element).getCoordinates().inViewPort();
//
//        String scrollPositionAfter =  wrappedElement.then(By.xpath(scrollPositionLocator)).getAttribute("textContent");
//
//    }

    public List<WebElementFacade> getSelectedRows(){
        List<WebElementFacade> row = wrappedElement.thenFindAll(By.xpath(selectedRowLocator));
        return row;
    }

    public Map<String, WebElementFacade> getRowMapByCellValue(String columnName, String cellValue){
        List<Map<String, WebElementFacade>> list = this.getRowsMappedToHeadings();
        for(Map<String, WebElementFacade> map:list){
            WebElementFacade element = map.get(columnName);
            if(element == null)
            {
                throw new IllegalArgumentException("Column name is not correct. Act : " + columnName);
            }
            if(element.getAttribute("textContent").equals(cellValue)){
                return map;
            }
        }
        return null;
    }

    public WebElementFacade getRowByCellValue(String columnName, String cellValue){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnName, cellValue);
        WebElementFacade rowElement = this.getRowByCell(rowMap.get(columnName));
        return rowElement;
    }

    public WebElementFacade getRowByCell(WebElementFacade cellElement){
        return cellElement.then(By.xpath(rowByCellLocator));
    }

    public void selectRow(String columnName, String cellValue){
        Map<String, WebElementFacade> map = this.getRowMapByCellValue(columnName, cellValue);
        if(map != null){
            map.get(columnName).click();
        }
    }

    public void deselectRow(String columnName, String cellValue){
        Map<String, WebElementFacade> map = this.getRowMapByCellValue(columnName, cellValue);
        if(map != null){
            clickWithKey(driver, map.get(columnName));
        }
    }

    public boolean isRowSelected(String columnName, String cellValue){
        WebElementFacade rowElement = this.getRowByCellValue(columnName, cellValue);
        if(rowElement.getAttribute("class").contains("selected")){
            return true;
        }
        return false;
    }

    public boolean isSettingsItemIsChecked(String item){
        wrappedElement.then(By.xpath(settingsLocator)).click();
        String attributePath = String.format(menuVisibilityLocator, item) + "/parent::span";
        String attributeValue = driver.findElement(By.xpath(attributePath)).getAttribute("class");
        if(attributeValue.contains("on")){
            return true;
        }
        if(attributeValue.contains("off")){
            return false;
        }
        throw new IllegalArgumentException("Table's setting wheel menu or item is changed.");
    }

    public void selectCheckboxInRow(String columnName, String cellValue){
        WebElementFacade rowElement = this.getRowByCellValue(columnName, cellValue);
        CheckBox checkBox = new CheckBox(driver, rowElement.then(By.xpath(checkBoxLocator)));
        checkBox.set(true);
    }

    public void deselectCheckboxInRow(String columnName, String cellValue){
        WebElementFacade rowElement = this.getRowByCellValue(columnName, cellValue);
        CheckBox checkBox = new CheckBox(driver, rowElement.then(By.xpath(checkBoxLocator)));
        checkBox.set(false);
    }


    public void selectCheckboxInColumnForRow(String columnName, String cellValue, String checkboxColumnName){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnName, cellValue);
        WebElementFacade cell = rowMap.get(checkboxColumnName);
        CheckBox checkBox = new CheckBox(driver, cell.then(By.xpath(checkBoxLocator)));
        checkBox.set(true);
    }

    public void deselectCheckboxInColumnForRow(String columnName, String cellValue, String checkboxColumnName){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnName, cellValue);
        WebElementFacade cell = rowMap.get(checkboxColumnName);
        CheckBox checkBox = new CheckBox(driver, cell.then(By.xpath(checkBoxLocator)));
        checkBox.set(false);
    }


    public boolean isCheckBoxIsCheckedInColumnForRow(String columnName, String cellValue, String checkboxColumnName){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnName, cellValue);
        WebElementFacade cell = rowMap.get(checkboxColumnName);
        CheckBox checkBox = new CheckBox(driver, cell.then(By.xpath(checkBoxLocator)));
        return checkBox.isSelected();
    }






//    static final class MapConverter<K, F, T> implements Converter<Map<K, F>, Map<K, T>> {
//        private final Converter<F, T> valueConverter;
//
//        public static <F, T> Converter<Map<String, F>, Map<String, T>> toMapsConvertingEachValue(Converter<F, T> valueConverter) {
//            return new Table.MapConverter(valueConverter);
//        }
//
//        private MapConverter(Converter<F, T> valueConverter) {
//            this.valueConverter = valueConverter;
//        }
//
//        public Map<K, T> convert(Map<K, F> map) {
//            return Lambda.convertMap(map, this.valueConverter);
//        }
//    }
//
//
//    static final class ListConverter<F, T> implements Converter<List<F>, List<T>> {
//        private final Converter<F, T> itemsConverter;
//
//        public static <F, T> Converter<List<F>, List<T>> toListsConvertingEachItem(Converter<F, T> itemsConverter) {
//            return new Table.ListConverter(itemsConverter);
//        }
//
//        private ListConverter(Converter<F, T> itemsConverter) {
//            this.itemsConverter = itemsConverter;
//        }
//
//        public List<T> convert(List<F> list) {
//            return Lambda.convert(list, this.itemsConverter);
//        }
//    }
//
//    static final class WebElementToTextConverter implements Converter<WebElementFacade, String> {
//        public static Converter<WebElementFacade, String> toText() {
//            return new Table.WebElementToTextConverter();
//        }
//
//        public static Converter<WebElementFacade, String> toTextValues() {
//            return new Table.WebElementToTextConverter();
//        }
//
//        private WebElementToTextConverter() {
//        }
//
//        public String convert(WebElementFacade element) {
//            return element.getText();
//        }
//    }


}
