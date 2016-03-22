package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.By;

/**
 * Created by kfilippov on 11.02.2016.
 */
public class ComboBox extends BasePage {

    //region Private Fields

    private final WebElementFacade wrappedElement;
    private String filterSelectButtonLocator = ".//div[@class = 'v-filterselect-button']";
    private String filterSelectSuggestMenuLocator = "//td[contains(@class , 'gwt-MenuItem')]//span[text() = '%s']";

    //endregion Private Fields

    //region Constructors

    public ComboBox(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }

    //endregion Constructors

    //region Public Methods

    public void selectItem(String item) {
        openComboBox();
        select(item);
    }

    public void openComboBox() {
        WebElementFacade openChoicesButton = wrappedElement.then(By.xpath(filterSelectButtonLocator));
        openChoicesButton.click();
    }

    public void select(String item) {
        WebElementFacade choice = wrappedElement.then(By.xpath(String.format(filterSelectSuggestMenuLocator, item)));
        choice.click();
    }

    //endregion Public Methods
}
