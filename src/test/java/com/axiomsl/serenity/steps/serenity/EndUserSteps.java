package com.axiomsl.serenity.steps.serenity;

import com.axiomsl.serenity.pages.AutomatedTestsPage;
import com.axiomsl.serenity.pages.BasePage;
import com.axiomsl.serenity.pages.ExamplePage;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.hasItem;
import static org.hamcrest.Matchers.is;
import static org.hamcrest.Matchers.not;


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
    public void login() {
        basePage.login();
    }

    @Step
    public void select_item_in_tree(String item) {
        basePage.select_item_in_tree(item);
    }

    @Step
    public void open_dashboard(String dashboardName) {
        basePage.open_dashboard(dashboardName);
    }









}