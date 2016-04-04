package com.axiomsl.serenity.elements;

import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.annotations.findby.By;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.NoSuchElementException;

/**
 * Created by kfilippov on 11.02.2016.
 */
public class CheckBox extends BasePage {

    //region Private Fields

    private final WebElementFacade wrappedElement;
    private String checkboxLocator = ".//input[@type = 'checkbox']";
    private String captionLocator = "./div/span";

    //endregion Private Fields

    //region Constructors

    public CheckBox(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }

    //endregion Constructors

    //region Public Methods

    public WebElementFacade getCaption() {
        try {
            return this.wrappedElement.then(By.xpath(captionLocator));
        } catch (NoSuchElementException var2) {
            return null;
        }
    }

    public WebElementFacade getCheckBox() {
        return wrappedElement;
//        try {
//            return this.wrappedElement.then(By.xpath(checkboxLocator));
//        } catch (NoSuchElementException var2) {
//            return null;
//        }
    }

    public String getCaptionText() {
        WebElementFacade caption = this.getCaption();
        return caption == null ? null : caption.getText();
    }

    public String getText() {
        return this.getCaptionText();
    }

    public void select() {
        WebElementFacade checkbox = this.getCheckBox();
        if (!checkbox.then(By.xpath(checkboxLocator)).isSelected()) {
            click(checkbox);
        }
    }

    public void deselect() {
        WebElementFacade checkbox = this.getCheckBox();
        if (checkbox.then(By.xpath(checkboxLocator)).isSelected()) {
            click(checkbox);
        }
    }

    public boolean isSelected() {
        WebElementFacade checkbox = this.getCheckBox();
        return checkbox.then(By.xpath(checkboxLocator)).isSelected();
    }

    public void set(boolean value) {
        if (value) {
            this.select();
        } else {
            this.deselect();
        }
    }

    //endregion Public Methods
}
