package com.axiomsl.serenity.steps.serenity;

import com.axiomsl.serenity.pages.AutomatedTestsPage;
import com.axiomsl.serenity.pages.BasePage;
import com.axiomsl.serenity.pages.ExamplePage;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;


public class EndUserSteps extends ScenarioSteps {

    BasePage basePage;
    AutomatedTestsPage automatedTestsPage;
    ExamplePage examplePage;

    @Step
    public void is_the_automated_tests_page() {
        automatedTestsPage.open();
    }

    @Step
    public void is_the_example_page() {
        examplePage.open();
    }

    @Step
    public void refresh_example_page() {
        examplePage.getDriver().navigate().refresh();
        examplePage.getDriver().switchTo().alert().accept();
    }

    @Step
    public void login() {
        basePage.login();
    }

    @Step
    public void move_cursor_on_example_class_path_area() {
        basePage.move_cursor_on_example_class_path_area();
    }

    @Step
    public void click_on_example_class_path_area() {
        basePage.click_on_example_class_path_area();
    }

    @Step
    public void open_dashboard(String dashboardName) {
        basePage.open_dashboard(dashboardName);
    }


}