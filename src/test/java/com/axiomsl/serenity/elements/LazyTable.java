package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.data.TimerThread;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.By;

/**
 * Created by mzhelezko on 14-Apr-16.
 */
public class LazyTable extends Table {

    //region Private Fields

    private final WebElementFacade wrappedElement;

    //endregion Private Fields

    //region Constructors

    public LazyTable(WebElementFacade wrappedElement) {
        super(wrappedElement);
        this.wrappedElement = wrappedElement;
    }

    //endregion Constructors

    //region Public Methods

    /**
     * Wait until progress bar is disappeared
     * @return - Returns true if progress bar is disappeared
     */
    public boolean waitUntilProgressBarIsHidden()
    {
        ProgressBar progressBar = new ProgressBar(find(By.xpath("./div/div[contains(concat(' ', normalize-space(@class), ' '), concat(' ', 'v-progressbar', ' '))]")));
        while(progressBar.isDisplayed())
        {
            if(!progressBar.isDisplayed())
                return true;
        }
        return false;
    }

    /**
     * Wait until table is loaded for specified number of rows
     * @return - Returns true if specified rows number is displayed in a table
     */
    public boolean waitUntilRowsAreLoaded(Integer numberOfRows)
    {
        Integer current, prev = -1;
        boolean isSlept = false;
        while(getRowsList().size() <= numberOfRows)
        {
            current = getRowsList().size();
            if(getRowsList().size() >= numberOfRows) {
                return true;
            }
            else {
                    if(prev == current && !isSlept)
                    {
                        TimerThread timer = new TimerThread();
                        timer.run();
                        isSlept = true;
                    }
                    else
                    {
                        if(isSlept)
                        {
                            break;
                        }
                        else
                        {
                            prev = current;
                            isSlept = false;
                        }
                    }
            }
        }
        return false;
    }

    //endregion Public Methods

}
