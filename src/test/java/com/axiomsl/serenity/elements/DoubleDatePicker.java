package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.helpers.HelperManager;
import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.By;

import java.util.Calendar;
import java.util.Date;


/**
 * Created by kfilippov on 29.03.2016.
 */
public class DoubleDatePicker extends BasePage{
    private static final String FROM_CALENDAR = "//div[@class='popupContent']//div[@class='v-slot'][1]";
    private static final String TO_CALENDAR = "//div[@class='popupContent']//div[@class='v-slot'][2]";
    //region Private Fields
    private final WebElementFacade wrappedElement;
    private String buttonLocator = ".//div[contains(@class, 'v-popupbutton')]";
    private String inputLocator = ".//input";
    private String currentMonthYearFromLocator = FROM_CALENDAR + "//span[@class = 'v-inline-datefield-calendarpanel-month']";
    private String currentMonthYearToLocator = TO_CALENDAR + "//span[@class = 'v-inline-datefield-calendarpanel-month']";
    private String prevYearFromLocator = FROM_CALENDAR + "//button[@class = 'v-button-prevyear']";
    private String nextYearFromLocator = FROM_CALENDAR + "//button[@class = 'v-button-nextyear']";
    private String prevMonthFromLocator = FROM_CALENDAR + "//button[@class = 'v-button-prevmonth']";
    private String nextMonthFromLocator = FROM_CALENDAR + "//button[@class = 'v-button-nextmonth']";
    private String prevYearToLocator = TO_CALENDAR + "//button[@class = 'v-button-prevyear']";
    private String nextYearToLocator = TO_CALENDAR + "//button[@class = 'v-button-nextyear']";
    private String prevMonthToLocator = TO_CALENDAR + "//button[@class = 'v-button-prevmonth']";
    private String nextMonthToLocator = TO_CALENDAR + "//button[@class = 'v-button-nextmonth']";
    private String dayFromLocator = FROM_CALENDAR + "//td[@class = 'v-inline-datefield-calendarpanel-body']//td[@role = 'gridcell']/span[not(contains(@class , 'day-offmonth')) and text() = '%s']";
    private String dayToLocator = TO_CALENDAR + "//td[@class = 'v-inline-datefield-calendarpanel-body']//td[@role = 'gridcell']/span[not(contains(@class , 'day-offmonth')) and text() = '%s']";
    private String setButtonLocator = "//span[text() = 'Set']";
    private String clearButtonLocator = "//span[text() = 'Clear']";



    //endregion Private Fields

    //region Constructors

    public DoubleDatePicker(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }

    //endregion Constructors

    //region Private Methods

    private Date getCurrentMonthYearFrom() {
        String monthYear = wrappedElement.then(By.xpath(currentMonthYearFromLocator)).getText();
        return HelperManager.Conversions.convertStringToDate(monthYear, "MMMM yyyy");
    }
    private Date getCurrentMonthYearTo() {
        String monthYear = wrappedElement.then(By.xpath(currentMonthYearToLocator)).getText();
        return HelperManager.Conversions.convertStringToDate(monthYear, "MMMM yyyy");
    }

    //endregion Private Methods

    //region Public Methods

    public void openDatePicker() {
        wrappedElement.then(By.xpath(buttonLocator)).click();
    }

    public Date getDate() {
        String string = wrappedElement.then(By.xpath(inputLocator)).getValue();
        return HelperManager.Conversions.convertStringToDate(string, "MM/dd/yy hh:mm:ss aa");
    }

    /**
     * Set date in double data picker
     * @param days - count days before or after
     * @param beforeAfter - before or after
     * @param direction - from or to
     */
    public void setDate(int days, String beforeAfter, String direction){
        direction = direction.toLowerCase();
        Date today = new Date();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(today);

        switch (beforeAfter.toLowerCase()) {
            case "before":
                calendar.add(Calendar.DATE, -days);
                break;
            case "after":
                calendar.add(Calendar.DATE, days);
                break;
        }

        int expYear = calendar.get(Calendar.YEAR);
        int expMonth = calendar.get(Calendar.MONTH);
        int day = calendar.get(Calendar.DAY_OF_MONTH);

        openDatePicker();
        Date curDate = getCurrentMonthYearFrom();
        calendar.setTime(curDate);
        int actYear = calendar.get(Calendar.YEAR);
        int actMonth = calendar.get(Calendar.MONTH);

        setMonthYearFromTo(actYear, expYear, "year", direction);
        setMonthYearFromTo(actMonth, expMonth, "month", direction);
        setDayFromTo(day, direction);
        clickSetButton();

    }

    public void clearDate(){
        openDatePicker();
        clickClearButton();
    }

    /**
     * Set month or year in from or to calendar
     * @param actItem - current month or year
     * @param expItem - expected month or year
     * @param monthYear - flag month or year
     * @param fromTo - flag from or to
     */
    public void setMonthYearFromTo(int actItem, int expItem, String monthYear, String fromTo) {
        int n;
        WebElementFacade button;
        String locator = null;
        String prevNext;

        if(actItem > expItem){
            n = actItem - expItem;
            prevNext = "prev";
        }else{
            n = expItem - actItem;
            prevNext = "next";
        }

        switch (prevNext+monthYear+fromTo) {
            case "prevmonthfrom":
                locator = prevMonthFromLocator;
                break;
            case "nextmonthfrom":
                locator = nextMonthFromLocator;
                break;
            case "prevyearfrom":
                locator = prevYearFromLocator;
                break;
            case "nextyearfrom":
                locator = nextYearFromLocator;
                break;
            case "prevmonthto":
                locator = prevMonthToLocator;
                break;
            case "nextmonthto":
                locator = nextMonthToLocator;
                break;
            case "prevyearto":
                locator = prevYearToLocator;
                break;
            case "nextyearto":
                locator = nextYearToLocator;
                break;

        }
        button = wrappedElement.then(By.xpath(locator));
        for(int i =0; i<n; i++){
            button.click();
        }
    }

    public void setDayFromTo(int day, String fromTo) {
        if(fromTo.equals("from")){wrappedElement.then(By.xpath(String.format(dayFromLocator, day))).click();}
        if(fromTo.equals("to")){wrappedElement.then(By.xpath(String.format(dayToLocator, day))).click();}
    }

    public void clickSetButton(){
        wrappedElement.then(By.xpath(setButtonLocator)).click();
    }
    public void clickClearButton(){
        wrappedElement.then(By.xpath(clearButtonLocator)).click();
    }

    //endregion Public Methods
}
