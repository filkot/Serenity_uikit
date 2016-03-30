package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.helpers.WebDriverHelper;
import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;


/**
 * Created by kfilippov on 29.03.2016.
 */
public class DatePicker extends BasePage{
    //region Private Fields
    private final WebDriver driver;
    private final WebElementFacade wrappedElement;
    private String buttonLocator = ".//button[contains(@class, 'v-datefield-button')]";
    private String inputLocator = ".//button[contains(@class, 'v-datefield-button')]";
    private String dateFieldPopupLocator = "//div[contains(@class, 'v-datefield-popup')]";
    private String currentMonthYearLocator = "//span[@class = 'v-datefield-calendarpanel-month']";
    private String timeSelectsLocator = "//td[@class='v-datefield-calendarpanel-time']//select";
    private String prevyearLocator = "//td[@class='v-datefield-calendarpanel-prevyear']//button";
    private String nextyearLocator = "//td[@class='v-datefield-calendarpanel-nextyear']//button";
    private String prevmonthLocator = "//td[@class='v-datefield-calendarpanel-prevmonth']//button";
    private String nextmonthLocator = "//td[@class='v-datefield-calendarpanel-nextmonth']//button";
    private String dayLocator = "//td[@class = 'v-datefield-calendarpanel-body']//td[@role = 'gridcell']/span[not(contains(@class , 'day-offmonth')) and text() = '%s']";

    //endregion Private Fields

    //region Constructors

    public DatePicker(WebElementFacade wrappedElement) {
        this.driver = WebDriverHelper.GetGlobalWebDriver();
        this.wrappedElement = wrappedElement;
    }

    //endregion Constructors


    //region Public Methods
    public void setDate(Date date){
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        int year = calendar.get(Calendar.YEAR);
        int month = calendar.get(Calendar.MONTH);
        int day = calendar.get(Calendar.DAY_OF_MONTH);


        openDatePicker();
        Date curDate = getCurrentMonthYear();
        calendar.setTime(curDate);
        int yearCur = calendar.get(Calendar.YEAR);
        int monthCur = calendar.get(Calendar.MONTH);


        setTime(date);
        setYear(yearCur, year);
        setMonth(monthCur, month);
        setDay(day);
    }

    private Date getCurrentMonthYear() {
        String monthYear = wrappedElement.then(By.xpath(currentMonthYearLocator)).getText();
        DateFormat format = new SimpleDateFormat("MMMM yyyy", Locale.ENGLISH);
        Date date = null;
        try {
            date = format.parse(monthYear);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }

    public void setYear(int yearCur, int year) {
        int n;
        WebElementFacade button;

        if(yearCur > year){
            n = yearCur - year;
            button = wrappedElement.then(By.xpath(prevyearLocator));
        }else{
            n = year - yearCur;
            button = wrappedElement.then(By.xpath(nextyearLocator));
        }
        for(int i =0; i<n; i++){
            button.click();
        }
    }

    public void setMonth(int monthCur, int month) {
        int n;
        WebElementFacade button;

        if(monthCur > month){
            n = monthCur - month;
            button = wrappedElement.then(By.xpath(prevmonthLocator));
        }else{
            n = month - monthCur;
            button = wrappedElement.then(By.xpath(nextmonthLocator));
        }
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


    //endregion Public Methods
}
