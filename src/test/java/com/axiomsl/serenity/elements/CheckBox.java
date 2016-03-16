package com.axiomsl.serenity.elements;


import com.axiomsl.serenity.pages.BasePage;
import net.serenitybdd.core.annotations.findby.By;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;

/**
 * Created by kfilippov on 11.02.2016.
 */
public class CheckBox extends BasePage {
    private final WebDriver driver;
    private final WebElementFacade wrappedElement;
    private String checkboxLocator = ".//input[@type = 'checkbox']";
    private String captionLocator = "./div/span";


    public CheckBox(WebDriver driver, WebElementFacade wrappedElement) {
        this.driver = driver;
        this.wrappedElement = wrappedElement;
    }

    public WebElementFacade getCaption() {
        try {
            return this.wrappedElement.then(By.xpath(captionLocator));
        } catch (NoSuchElementException var2) {
            return null;
        }
    }

    public WebElementFacade getCheckBox() {
        try {
            return this.wrappedElement.then(By.xpath(checkboxLocator));
        } catch (NoSuchElementException var2) {
            return null;
        }
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
        if (!checkbox.isSelected()) {
            checkbox.click();
        }

    }

    public void deselect() {
        WebElementFacade checkbox = this.getCheckBox();
        if (checkbox.isSelected()) {
            checkbox.click();
        }

    }

    public void set(boolean value) {
        if (value) {
            this.select();
        } else {
            this.deselect();
        }
    }

    public boolean isSelected() {
        WebElementFacade checkbox = this.getCheckBox();
        checkbox.getAttribute("checked");
//        if(){
//
//        }
        return checkbox.isSelected();
    }
}
