package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.steps.serenity.EndUserSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Given;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;



public class DashboardSteps {

    @Steps
    EndUserSteps endUser;

    @Given("the user is on the Automated Tests page")
    public void givenTheUserIsOnTheAutomatedTestsPage() {
        endUser.is_the_automated_tests_page();
    }

    @Given("the user is on the Example page")
    public void givenTheUserIsOnTheExamplePage() {
        endUser.is_the_example_page();
    }

    @Given("the user refresh the Example page")
    public void givenTheUserIRefreshTheExamplePage() {
        endUser.refresh_example_page();
    }

    @When("the user login in system")
    public void login() {
        endUser.login();
    }

    //WHEN
    @When("the user open dashboard with name '$dashboardName'")
    public void whenTheUserOpenTheDashboard(String dashboardName) {
        endUser.open_dashboard(dashboardName);
    }






}
