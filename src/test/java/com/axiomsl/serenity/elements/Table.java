package com.axiomsl.serenity.elements;

import ch.lambdaj.Lambda;
import com.axiomsl.serenity.helpers.HelperManager;
import com.axiomsl.serenity.helpers.WebDriverHelper;
import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.*;

import java.util.*;

/**
 * Created by kfilippov on 10.02.2016.
 */
public class Table extends BasePage {

    //region Private Fields

    private final WebElementFacade wrappedElement;
    private String rowLocator = ".//tr[contains(@class, 'v-table-row')]";
    private String rowByCellLocator = "./ancestor::tr[contains(@class, 'v-table-row')]";
    private String selectedRowLocator = ".//tr[contains(@class, 'v-selected v-table-row')]";
//  private String cellLocator = ".//td[contains(@class, 'table-cell-content')]//span";
    private String cellLocator = ".//td[contains(@class, 'table-cell-content')]//div[contains(@class, 'v-table-cell-wrapper')]";
    private String headingLocator = ".//td[contains(@class, 'table-header')]/div[contains(@class, 'table-caption')]";
    private String filteringLocator = ".//div[contains(@class, 'filters-wrap')]//div[contains(@class, 'filterwrapper')]";
    private String settingsLocator = ".//div[@class='v-table-column-selector']";
    private String menuVisibilityLocator = "//div[contains(@class ,'gwt-MenuBar')]//span/div[text() = '%s']";
    private String scrollLocator = ".//div[contains(@class, 'v-scrollable')]";
    private String checkBoxLocator = ".//span[contains(@class, 'v-checkbox')]";
    private String buttonLocator = ".//div[@role = 'button']//span";
    private String textInputLocator = ".//input[@type = 'text']";
    private String datePickerLocator = ".//div[contains(@class, 'v-datefield-popupcalendar')]";

    //endregion Private Fields

    //region Constructors
    public Table(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }
    //endregion Constructors

    //region Public Methods

    public List<WebElementFacade> getHeadings() {
        return wrappedElement.thenFindAll(By.xpath(headingLocator));
    }

    public List<WebElementFacade> getFilters() {
        return wrappedElement.thenFindAll(By.xpath(filteringLocator));
    }

    public List<String> getHeadingsAsString() {
        return Lambda.convert(this.getHeadings(), BasePage.WebElementToTextConverter.toTextValues());
//      return Lambda.convert(this.getHeadings(), Table.WebElementToTextConverter.toTextValues());
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
    public Map<String, WebElementFacade> getFiltersMappedToHeadings() {
        return this.getFiltersMappedToHeadings(this.getHeadingsAsString());
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

    public Map<String, WebElementFacade> getFiltersMappedToHeadings(List<String> headings) {
        List<WebElementFacade> filters = this.getFilters();
        if (headings.size() != filters.size())
            throw new IllegalArgumentException ("Headings count is not equal to filters count");
        HashMap filterToHeadingsMap = new HashMap();
        for (int i=0; i<headings.size(); i++) {
            filterToHeadingsMap.put(headings.get(i), filters.get(i));
        }
        return filterToHeadingsMap;

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
        String height = heightTemp.replaceAll("[\\D]", "");

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
        return wrappedElement.thenFindAll(By.xpath(selectedRowLocator));
    }

    public Map<String, WebElementFacade> getRowMapByCellValue(String columnName, String cellValue){
        List<Map<String, WebElementFacade>> list = this.getRowsMappedToHeadings();

        if(list.get(0).get(columnName) == null)
        {
            throw new IllegalArgumentException("Column name is not correct. Act : " + columnName);
        }

        boolean isEditableTable = false;
        if(list.get(0).get(columnName).thenFindAll(By.xpath(".//input[contains(@class, 'v-textfield')]")).size() > 0){
            isEditableTable = true;
        }

        for(Map<String, WebElementFacade> map:list){
            WebElementFacade element = map.get(columnName);

            //if we have editable table
            if(isEditableTable){
                WebElement cell = element.findElement(By.xpath(".//input"));
                if(cell.getAttribute("value").equals(cellValue)){
                    return map;
                }
            }else {
                if(element.getAttribute("textContent").equals(cellValue)){
                    return map;
                }
            }
        }
        return null;
    }

    public WebElementFacade getRowByCellValue(String columnName, String cellValue){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnName, cellValue);
        if (rowMap != null){
            return this.getRowByCell(rowMap.get(columnName));
        }
        return null;
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
            clickWithKey(map.get(columnName));
        }
    }

    public boolean isRowSelected(String columnName, String cellValue){
        WebElementFacade rowElement = this.getRowByCellValue(columnName, cellValue);
        if(rowElement.hasClass("v-selected")){
            return true;
        }
        return false;
    }

    public boolean isRowFocused(String columnName, String cellValue){
        WebElementFacade rowElement = this.getRowByCellValue(columnName, cellValue);
        if(rowElement.hasClass("v-table-focus")){
            return true;
        }
        return false;
    }

    public boolean isRowDeselected(String columnName, String cellValue){
        if(!isRowSelected(columnName, cellValue) || isRowFocused(columnName, cellValue)){
            return true;
        }
        return false;
    }

    public boolean isRowPresentInTable(String columnName, String cellValue){
        WebElementFacade rowElement = this.getRowByCellValue(columnName, cellValue);
        if(rowElement == null){
            return false;
        }
        return true;
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
        throw new IllegalArgumentException("Table's settings wheel panel or selected item is changed.");
    }

    public void selectCheckboxInRow(String columnName, String cellValue){
        WebElementFacade rowElement = this.getRowByCellValue(columnName, cellValue);
//        WebElementFacade checkBox = rowElement.then(By.xpath(checkBoxLocator));
//        checkBox.click();
        CheckBox checkBox = new CheckBox(rowElement.then(By.xpath(checkBoxLocator)));
        checkBox.set(true);
    }

    public void deselectCheckboxInRow(String columnName, String cellValue){
        WebElementFacade rowElement = this.getRowByCellValue(columnName, cellValue);
        CheckBox checkBox = new CheckBox(rowElement.then(By.xpath(checkBoxLocator)));
        checkBox.set(false);
    }

    public void selectCheckboxInColumnForRow(String columnName, String cellValue, String checkboxColumnName){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnName, cellValue);
        WebElementFacade cell = rowMap.get(checkboxColumnName);
        CheckBox checkBox = new CheckBox(cell.then(By.xpath(checkBoxLocator)));
        checkBox.set(true);
    }

    public void deselectCheckboxInColumnForRow(String columnName, String cellValue, String checkboxColumnName){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnName, cellValue);
        WebElementFacade cell = rowMap.get(checkboxColumnName);
        CheckBox checkBox = new CheckBox(cell.then(By.xpath(checkBoxLocator)));
        checkBox.set(false);
    }

    public boolean isCheckBoxIsCheckedInColumnForRow(String columnName, String cellValue, String checkboxColumnName){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnName, cellValue);
        WebElementFacade cell = rowMap.get(checkboxColumnName);
        CheckBox checkBox = new CheckBox(cell.then(By.xpath(checkBoxLocator)));
        return checkBox.isSelected();
    }

    public void multiSelectRows(String columnName, String cellValue) {
        List<Map<String, WebElementFacade>> list = this.getRowsMappedToHeadings();
        WebElementFacade firsRow = list.get(0).get(columnName);
        if(firsRow == null)
        {
            throw new IllegalArgumentException("Column name is not correct. Act : " + columnName);
        }
        controlDown(firsRow);

        for(Map<String, WebElementFacade> map:list){
            WebElementFacade element = map.get(columnName);
            if(element.getAttribute("textContent").contains(cellValue)){
                element.click();
            }
        }
    }

    public void pressButtonInColumnForRow(String columnName, String cellValue, String buttonColumnName){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnName, cellValue);
        WebElementFacade cell = rowMap.get(buttonColumnName);
        Button button = new Button(cell.then(By.xpath(buttonLocator)));
        button.click();
    }

    public boolean isTextEqualsInColumn(String columnName, String cellValue) {
        if(cellValue.equals("EMPTY_STRING")){
            cellValue = "";
        }
        List<String> headerList = getHeadingsAsString();
        List<String> column = null;
        for(int i = 0; i<headerList.size(); i++){
            if(headerList.get(i).equals(columnName)){
                column = getColumnAsStringByIndex(i);
                break;
            }
        }
        if(column == null){
            throw new IllegalArgumentException("Column name is not correct. Act : " + columnName);
        }
        for(String item: column){
            if(!item.equals(cellValue)){
                return false;
            }
        }
        return true;
    }

    public void inputTextInCell(String columnKey, String cellValue, String columnName, String inputText){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnKey, cellValue);
        WebElementFacade cell = rowMap.get(columnName);
        TextInput textInput = new TextInput(cell.then(By.xpath(textInputLocator)));
        textInput.type(inputText);
    }

    public String getTextInCell(String columnKey, String cellValue, String columnName){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnKey, cellValue);
        WebElementFacade cell = rowMap.get(columnName);
        TextInput textInput = new TextInput(cell.then(By.xpath(textInputLocator)));
        return textInput.getText();
    }

    public void undoTextInCell(String columnKey, String cellValue, String columnName){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnKey, cellValue);
        WebElementFacade cell = rowMap.get(columnName);
        String undo = Keys.chord(Keys.CONTROL, "z");
        WebElement cellInput = cell.findElement(By.xpath(".//input"));
        for(int i =0; i<2; i++){
            cellInput.sendKeys(undo);
        }
    }

    public void inputTextInFilter(String columnKey, String text){
        Map<String, WebElementFacade> filterMap = this.getFiltersMappedToHeadings();
        WebElementFacade filter = filterMap.get(columnKey);
        TextInput textInput =  new TextInput(filter.then(By.xpath(textInputLocator)));
        textInput.type(text);
        textInput.sendKeys(Keys.ENTER);
    }

    public void makeFilterEmpty(String columnKey){
        Map<String, WebElementFacade> filterMap = this.getFiltersMappedToHeadings();
        WebElementFacade filter = filterMap.get(columnKey);
        TextInput textInput = new TextInput(filter.then(By.xpath(textInputLocator)));
        textInput.clear();
        textInput.sendKeys(Keys.ENTER);
    }

    public void clickAtHeader(String columnKey, int n){
        List<WebElementFacade> headers = this.getHeadings();
        for (WebElementFacade header: headers){
            if(header.getAttribute("textContent").equals(columnKey)){
                for(int i=0; i<n; i++){
                    header.click();
                }
                break;
            }
        }
    }

    public void selectDateInCell(String columnKey, String cellValue, String columnName, Date date){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnKey, cellValue);
        WebElementFacade cell = rowMap.get(columnName);
        DatePicker datePicker = new DatePicker(cell.find(By.xpath(datePickerLocator)));
        datePicker.setDate(date);
    }

    public void inputDateInCell(String columnKey, String cellValue, String columnName, String date){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnKey, cellValue);
        WebElementFacade cell = rowMap.get(columnName);
        DatePicker datePicker = new DatePicker(cell.find(By.xpath(datePickerLocator)));
        datePicker.inputDate(date);
    }

    public Date getDateInCell(String columnKey, String cellValue, String columnName){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnKey, cellValue);
        WebElementFacade cell = rowMap.get(columnName);
        DatePicker datePicker = new DatePicker(cell.find(By.xpath(datePickerLocator)));
        return datePicker.getDate();
    }



    //endregion Public Methods


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
