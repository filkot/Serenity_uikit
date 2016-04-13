package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.helpers.HelperManager;
import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.By;

import java.util.Calendar;
import java.util.Date;
import java.util.List;


/**
 * Created by kfilippov on 29.03.2016.
 */
public class DatePicker extends BasePage{

    //region Private Fields

    private final WebElementFacade wrappedElement;
    private String buttonLocator = ".//button[contains(@class, 'v-datefield-button')]";
    private String inputLocator = ".//input";
    private String dateFieldPopupLocator = "//div[contains(@class, 'v-datefield-popup')]";
    private String currentMonthYearLocator = "//span[@class = 'v-datefield-calendarpanel-month']";
    private String timeSelectsLocator = "//td[@class='v-datefield-calendarpanel-time']//select";
    private String prevYearLocator = "//td[@class='v-datefield-calendarpanel-prevyear']//button";
    private String nextYearLocator = "//td[@class='v-datefield-calendarpanel-nextyear']//button";
    private String prevMonthLocator = "//td[@class='v-datefield-calendarpanel-prevmonth']//button";
    private String nextMonthLocator = "//td[@class='v-datefield-calendarpanel-nextmonth']//button";
    private String dayLocator = "//td[@class = 'v-datefield-calendarpanel-body']//td[@role = 'gridcell']/span[not(contains(@class , 'day-offmonth')) and text() = '%s']";

    //endregion Private Fields

    //region Constructors

    public DatePicker(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }

    //endregion Constructors

    //region Private Methods
    private Date getCurrentMonthYear() {
        String monthYear = wrappedElement.then(By.xpath(currentMonthYearLocator)).getText();
        return HelperManager.Conversions.convertStringToDate(monthYear, HelperManager.Conversions.DefaultMonthYearFormat);
    }

    //endregion Private Methods

    //region Public Methods
    public void setMonthYear(int actItem, int expItem, String monthYear) {
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

        switch (prevNext+monthYear) {
            case "prevmonth":
                locator = prevMonthLocator;
                break;
            case "nextmonth":
                locator = nextMonthLocator;
                break;
            case "prevyear":
                locator = prevYearLocator;
                break;
            case "nextyear":
                locator = nextYearLocator;
                break;
        }
        button = wrappedElement.then(By.xpath(locator));
        for(int i =0; i<n; i++){
            button.click();
        }
    }

    public void setDay(int day) {
        wrappedElement.then(By.xpath(String.format(dayLocator, day))).click();
    }

    public void setTime(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);

        String hours = calendar.get(Calendar.HOUR) < 10 ? "0" + calendar.get(Calendar.HOUR) : "" + calendar.get(Calendar.HOUR);
        String minutes = calendar.get(Calendar.MINUTE) < 10 ? "0" + calendar.get(Calendar.MINUTE) : "" + calendar.get(Calendar.MINUTE);
        String seconds = calendar.get(Calendar.SECOND) < 10 ? "0" + calendar.get(Calendar.SECOND) : "" + calendar.get(Calendar.SECOND);

        List<WebElementFacade> selects = wrappedElement.thenFindAll(By.xpath(timeSelectsLocator));

        if(hours.equals("00")){
            hours = "12";
        }
        selects.get(0).selectByVisibleText(hours);
        selects.get(1).selectByVisibleText(minutes);
        selects.get(2).selectByVisibleText(seconds);
        selects.get(3).selectByVisibleText(calendar.get(Calendar.AM_PM) == 0 ? "AM" : "PM");
    }

    public void openDatePicker() {
        wrappedElement.then(By.xpath(buttonLocator)).click();
    }

    public Date getDate() {
        String string = wrappedElement.then(By.xpath(inputLocator)).getValue();
        return HelperManager.Conversions.convertStringToDate(string, HelperManager.Conversions.DefaultDateFormatLocale);
    }

    public void setDate(String date){
        Date currentDate = HelperManager.Conversions.convertStringToDate(date, HelperManager.Conversions.DefaultDateFormatLocale);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(currentDate);
        int year = calendar.get(Calendar.YEAR);
        int month = calendar.get(Calendar.MONTH)+1;
        int day = calendar.get(Calendar.DAY_OF_MONTH);

        openDatePicker();
        Date curDate = getCurrentMonthYear();
        calendar.setTime(curDate);
        int yearCur = calendar.get(Calendar.YEAR);
        int monthCur = calendar.get(Calendar.MONTH)+1;

        setTime(currentDate);
        setMonthYear(yearCur, year, "year");
        setMonthYear(monthCur, month, "month");
        setDay(day);
    }

    public void inputDate(String date){
        wrappedElement.then(By.xpath(inputLocator)).type(date);
    }

    public void clearInput(){
        wrappedElement.then(By.xpath(inputLocator)).clear();
    }

    //endregion Public Methods
}
