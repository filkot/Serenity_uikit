package com.axiomsl.serenity.elements;

import ch.lambdaj.Lambda;
import com.axiomsl.serenity.helpers.ConversionsHelper;
import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

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
    private String doubleDatePickerLocator = ".//div[contains(@class, 'v-customcomponent-datefilterpopup')]";

    //endregion Private Fields

    //region Constructors

    public Table(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }

    //endregion Constructors

    //region Public Methods

    /**
     * Get list of header as WebElement
     * @return - list of WebElementFacade
     */
    public List<WebElementFacade> getHeadings() {
        return wrappedElement.thenFindAll(By.xpath(headingLocator));
    }

    /**
     * Get list of filters as WebElement
     * @return - list of WebElementFacade
     */
    public List<WebElementFacade> getFilters() {
        return wrappedElement.thenFindAll(By.xpath(filteringLocator));
    }

    /**
     * Get list of header as string
     * @return - list of string
     */
    public List<String> getHeadingsAsString() {
        return Lambda.convert(this.getHeadings(), ConversionsHelper.WebElementToTextConverter.toTextValues());
    }

    /**
     * Get list of rows with list of cell in the row as WebElement
     * @return - list of list of WebElementFacade
     */
    public List<List<WebElementFacade>> getRows() {
        List<List<WebElementFacade>> rows = new ArrayList<>();
        List<WebElementFacade> rowElements = wrappedElement.thenFindAll(By.xpath(rowLocator));
        for (WebElementFacade rowElement : rowElements) {
            rows.add(rowElement.thenFindAll(By.xpath(cellLocator)));
        }
        return rows;
    }

    /**
     * Get list of cells in the row
     * @param rowElement - row
     * @return - list of WebElementFacade
     */
    public List<WebElementFacade> getCellsInRow(WebElementFacade rowElement){
        return rowElement.thenFindAll(By.xpath(cellLocator));
    }

    /**
     * Get list of rows with list of cell in the row as string
     * @return - list of list of string
     */
    public List<List<String>> getRowsAsString() {
        return Lambda.convert(this.getRows(), ConversionsHelper.ListConverter.toListsConvertingEachItem(ConversionsHelper.WebElementToTextConverter.toTextValues()));
    }

    /**
     * Get list of columns as WebElement
     * @return - list of list of WebElementFacade
     */
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

    /**
     * Get list of columns as string
     * @return - list of list of string
     */
    public List<List<String>> getColumnsAsString() {
        return Lambda.convert(this.getColumns(), ConversionsHelper.ListConverter.toListsConvertingEachItem(ConversionsHelper.WebElementToTextConverter.toTextValues()));
    }

    /**
     * Get column by index
     * @param index - index of column
     * @return - list of string
     */
    public List<String> getColumnAsStringByIndex(int index) {
        return getColumnsAsString().get(index);
    }

    /**
     * Get cell by coordinate
     * @param i - row number
     * @param j - column number
     * @return
     */
    public WebElementFacade getCellAt(int i, int j) {
        return (WebElementFacade) ((List) this.getRows().get(i)).get(j);
    }

    /**
     * Get list of rows where cell in the row mapping to header
     * @return
     */
    public List<Map<String, WebElementFacade>> getRowsMappedToHeadings() {
        return this.getRowsMappedToHeadings(this.getHeadingsAsString());
    }

    /**
     * Get map where filter mapping to header
     * @return
     */
    public Map<String, WebElementFacade> getFiltersMappedToHeadings() {
        return this.getFiltersMappedToHeadings(this.getHeadingsAsString());
    }

    /**
     * Get list of rows where cell in the row mapping to header
     * @param headings
     * @return
     */
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

    /**
     * Get map where filter mapping to header
     * @param headings
     * @return
     */
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

    /**
     * Get list of rows mapped on headers as string
     * @return
     */
    public List<Map<String, String>> getRowsAsStringMappedToHeadings() {
        return this.getRowsAsStringMappedToHeadings(this.getHeadingsAsString());
    }

    /**
     *
     * @param headings - list of headers
     * @return
     */
    public List<Map<String, String>> getRowsAsStringMappedToHeadings(List<String> headings) {
        return Lambda.convert(this.getRowsMappedToHeadings(headings), ConversionsHelper.MapConverter.toMapsConvertingEachValue(ConversionsHelper.WebElementToTextConverter.toText()));
    }

    /**
     * Make column visible
     * @param item
     */
    public void makeColumnVisible(String item){
        wrappedElement.then(By.xpath(settingsLocator)).click();
        String attribute = String.format(menuVisibilityLocator, item) + "/parent::span";
        if(driver.findElement(By.xpath(attribute)).getAttribute("class").contains("off")){
            driver.findElement(By.xpath(String.format(menuVisibilityLocator, item))).click();
        }else{
            System.out.println("makeColumnVisible: Column already on");
        }
    }

    /**
     * Make column invisible
     * @param item - column name
     */
    public void makeColumnNotVisible(String item){
        wrappedElement.then(By.xpath(settingsLocator)).click();
        String attribute = String.format(menuVisibilityLocator, item) + "/parent::span";
        if(driver.findElement(By.xpath(attribute)).getAttribute("class").contains("on")){
            driver.findElement(By.xpath(String.format(menuVisibilityLocator, item))).click();
        }else{
            System.out.println("makeColumnNotVisible: Column already off");
        }
    }

    /**
     * Scroll vertically table
     * @param action
     */
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

    /**
     *
     * @return
     */
    public List<WebElementFacade> getSelectedRows(){
        return wrappedElement.thenFindAll(By.xpath(selectedRowLocator));
    }

    /**
     * Get map with
     * @param columnName
     * @param cellValue
     * @return
     */
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

    /**
     * Get row by cell value
     * @param columnName
     * @param cellValue
     * @return - row
     */
    public WebElementFacade getRowByCellValue(String columnName, String cellValue){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnName, cellValue);
        if (rowMap != null){
            return this.getRowByCell(rowMap.get(columnName));
        }
        return null;
    }

    /**
     * Get row from cell
     * @param cellElement
     * @return
     */
    public WebElementFacade getRowByCell(WebElementFacade cellElement){
        return cellElement.then(By.xpath(rowByCellLocator));
    }

    /**
     * Select row in table
     * @param columnName
     * @param cellValue
     */
    public void selectRow(String columnName, String cellValue){
        Map<String, WebElementFacade> map = this.getRowMapByCellValue(columnName, cellValue);
        if(map != null){
            map.get(columnName).click();
        }
    }

    /**
     * Deselect row in table
     * @param columnName
     * @param cellValue
     */
    public void deselectRow(String columnName, String cellValue){
        Map<String, WebElementFacade> map = this.getRowMapByCellValue(columnName, cellValue);
        if(map != null){
            clickWithKey(map.get(columnName));
        }
    }

    /**
     * Verify is row selected in table
     * @param columnName
     * @param cellValue
     * @return
     */
    public boolean isRowSelected(String columnName, String cellValue){
        WebElementFacade rowElement = this.getRowByCellValue(columnName, cellValue);
        if(rowElement.hasClass("v-selected")){
            return true;
        }
        return false;
    }

    /**
     * Verify is row in focus in table
     * @param columnName
     * @param cellValue
     * @return
     */
    public boolean isRowFocused(String columnName, String cellValue){
        WebElementFacade rowElement = this.getRowByCellValue(columnName, cellValue);
        if(rowElement.hasClass("v-table-focus")){
            return true;
        }
        return false;
    }

    /**
     * Verify is row unselected in table
     * @param columnName
     * @param cellValue
     * @return
     */
    public boolean isRowDeselected(String columnName, String cellValue){
        if(!isRowSelected(columnName, cellValue) || isRowFocused(columnName, cellValue)){
            return true;
        }
        return false;
    }

    /**
     * Verify is row exist in table
     * @param columnName
     * @param cellValue
     * @return
     */
    public boolean isRowPresentInTable(String columnName, String cellValue){
        WebElementFacade rowElement = this.getRowByCellValue(columnName, cellValue);
        if(rowElement == null){
            return false;
        }
        return true;
    }

    /**
     * Verify is column is checked in setting
     * @param item - column name
     * @return - boolean
     */
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

    /**
     * Check Checkbox in first column
     * @param columnName
     * @param cellValue
     */
    public void selectCheckboxInRow(String columnName, String cellValue){
        WebElementFacade rowElement = this.getRowByCellValue(columnName, cellValue);
//        WebElementFacade checkBox = rowElement.then(By.xpath(checkBoxLocator));
//        checkBox.click();
        CheckBox checkBox = new CheckBox(rowElement.then(By.xpath(checkBoxLocator)));
        checkBox.set(true);
    }

    /**
     * Unchecked Checkbox in first column
     * @param columnName
     * @param cellValue
     */
    public void deselectCheckboxInRow(String columnName, String cellValue){
        WebElementFacade rowElement = this.getRowByCellValue(columnName, cellValue);
        CheckBox checkBox = new CheckBox(rowElement.then(By.xpath(checkBoxLocator)));
        checkBox.set(false);
    }

    /**
     * Check Checkbox in cell
     * @param columnName
     * @param cellValue
     * @param checkboxColumnName
     */
    public void selectCheckboxInColumnForRow(String columnName, String cellValue, String checkboxColumnName){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnName, cellValue);
        WebElementFacade cell = rowMap.get(checkboxColumnName);
        CheckBox checkBox = new CheckBox(cell.then(By.xpath(checkBoxLocator)));
        checkBox.set(true);
    }

    /**
     * Unchecked Checkbox in cell
     * @param columnName
     * @param cellValue
     * @param checkboxColumnName
     */
    public void deselectCheckboxInColumnForRow(String columnName, String cellValue, String checkboxColumnName){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnName, cellValue);
        WebElementFacade cell = rowMap.get(checkboxColumnName);
        CheckBox checkBox = new CheckBox(cell.then(By.xpath(checkBoxLocator)));
        checkBox.set(false);
    }

    /**
     * Verify is checkbox checked
     * @param columnName
     * @param cellValue
     * @param checkboxColumnName
     * @return
     */
    public boolean isCheckBoxIsCheckedInColumnForRow(String columnName, String cellValue, String checkboxColumnName){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnName, cellValue);
        WebElementFacade cell = rowMap.get(checkboxColumnName);
        CheckBox checkBox = new CheckBox(cell.then(By.xpath(checkBoxLocator)));
        return checkBox.isSelected();
    }

    /**
     * Select multi rows
     * @param columnName
     * @param cellValue
     */
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

    /**
     * Press button in cell
     * @param columnName
     * @param cellValue
     * @param buttonColumnName
     */
    public void pressButtonInColumnForRow(String columnName, String cellValue, String buttonColumnName){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnName, cellValue);
        WebElementFacade cell = rowMap.get(buttonColumnName);
        Button button = new Button(cell.then(By.xpath(buttonLocator)));
        button.click();
    }

    /**
     * Verify text in all column
     * @param columnName
     * @param cellValue
     * @return
     */
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

    /**
     * Input text in cell
     * @param columnKey - name of column for find needed row
     * @param cellValue - value of cell for find needed row
     * @param columnName
     * @param inputText
     */
    public void inputTextInCell(String columnKey, String cellValue, String columnName, String inputText){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnKey, cellValue);
        WebElementFacade cell = rowMap.get(columnName);
        TextInput textInput = new TextInput(cell.then(By.xpath(textInputLocator)));
        textInput.type(inputText);
    }

    /**
     * Get text from cell
     * @param columnKey - name of column for find needed row
     * @param cellValue - value of cell for find needed row
     * @param columnName
     * @return
     */
    public String getTextInCell(String columnKey, String cellValue, String columnName){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnKey, cellValue);
        if(rowMap == null){
            throw new IllegalArgumentException("No cell values are found in the selected table");
        }
        WebElementFacade cell = rowMap.get(columnName);
        TextInput textInput = new TextInput(cell.then(By.xpath(textInputLocator)));
        return textInput.getText();
    }

    /**
     * Rollback value in cell
     * @param columnKey - name of column for find needed row
     * @param cellValue - value of cell for find needed row
     * @param columnName - column name in witch needed rollback value
     */
    public void undoTextInCell(String columnKey, String cellValue, String columnName){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnKey, cellValue);
        WebElementFacade cell = rowMap.get(columnName);
        String undo = Keys.chord(Keys.CONTROL, "z");
        WebElement cellInput = cell.findElement(By.xpath(".//input"));
        for(int i =0; i<2; i++){
            cellInput.sendKeys(undo);
        }
    }

    /**
     * Input text in filter column
     * @param columnKey - filter column name
     * @param text - text for filtering
     */
    public void inputTextInFilter(String columnKey, String text){
        Map<String, WebElementFacade> filterMap = this.getFiltersMappedToHeadings();
        WebElementFacade filter = filterMap.get(columnKey);
        TextInput textInput =  new TextInput(filter.then(By.xpath(textInputLocator)));
        textInput.type(text);
        textInput.sendKeys(Keys.ENTER);
    }

    /**
     * Clear input filter
     * @param columnKey - filter column name
     */
    public void makeFilterEmpty(String columnKey){
        Map<String, WebElementFacade> filterMap = this.getFiltersMappedToHeadings();
        WebElementFacade filter = filterMap.get(columnKey);
        TextInput textInput = new TextInput(filter.then(By.xpath(textInputLocator)));
        textInput.clear();
        textInput.sendKeys(Keys.ENTER);
    }

    public void selectDateInFilter(String columnKey, String beforeAfter, String direction, int days){
        Map<String, WebElementFacade> filterMap = this.getFiltersMappedToHeadings();
        WebElementFacade filter = filterMap.get(columnKey);
        DoubleDatePicker doubleDatePicker = new DoubleDatePicker(filter.then(By.xpath(doubleDatePickerLocator)));
        doubleDatePicker.setDate(days, beforeAfter, direction);
    }

    public void clearDateFilter(String columnKey){
        Map<String, WebElementFacade> filterMap = this.getFiltersMappedToHeadings();
        WebElementFacade filter = filterMap.get(columnKey);
        DoubleDatePicker doubleDatePicker = new DoubleDatePicker(filter.then(By.xpath(doubleDatePickerLocator)));
        doubleDatePicker.clearDate();
    }

    /**
     * Click n-times in header for sorting it
     * @param columnKey - column name which header needed sorting
     * @param n - how many times needed click at header
     */
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

    /**
     * Select date in date picker in cell
     * @param columnKey - name of column for find needed row
     * @param cellValue - value of cell for find needed row
     * @param columnName - column with date picker
     * @param date - date for date piker
     */
    public void selectDateInCell(String columnKey, String cellValue, String columnName, String date){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnKey, cellValue);
        WebElementFacade cell = rowMap.get(columnName);
        DatePicker datePicker = new DatePicker(cell.find(By.xpath(datePickerLocator)));
        datePicker.setDate(date);
    }

    /**
     * Input date in input in cell
     * @param columnKey - name of column for find needed row
     * @param cellValue - value of cell for find needed row
     * @param columnName - column with date picker
     * @param date - date in string format for date picker
     */
    public void inputDateInCell(String columnKey, String cellValue, String columnName, String date){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnKey, cellValue);
        WebElementFacade cell = rowMap.get(columnName);
        DatePicker datePicker = new DatePicker(cell.find(By.xpath(datePickerLocator)));
        datePicker.inputDate(date);
    }

    /**
     * Get date from cell
     * @param columnKey - name of column for find needed row
     * @param cellValue - value of cell for find needed row
     * @param columnName - column with date picker
     * @return - date from cell
     */
    public Date getDateInCell(String columnKey, String cellValue, String columnName){
        Map<String, WebElementFacade> rowMap = this.getRowMapByCellValue(columnKey, cellValue);
        WebElementFacade cell = rowMap.get(columnName);
        DatePicker datePicker = new DatePicker(cell.find(By.xpath(datePickerLocator)));
        return datePicker.getDate();
    }

    //endregion Public Methods
}
