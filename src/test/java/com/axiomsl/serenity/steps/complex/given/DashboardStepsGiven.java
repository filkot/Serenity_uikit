package com.axiomsl.serenity.steps.complex.given;

import com.axiomsl.serenity.steps.basic.EndUserSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Given;

public class DashboardStepsGiven {

    //region @Steps

    @Steps
    EndUserSteps endUser;

    //endregion @Steps

    //region @Given

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

    @Given("the user is on main window")
    public void givenTheUserIsOnMainWindow() {
        endUser.switch_to_old_window();
    }

    //endregion @Given
}
