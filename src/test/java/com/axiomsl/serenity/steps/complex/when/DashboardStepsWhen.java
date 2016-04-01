package com.axiomsl.serenity.steps.complex.when;

import com.axiomsl.serenity.steps.basic.EndUserSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.When;

public class DashboardStepsWhen {

    //region @Steps

    @Steps
    EndUserSteps endUser;

    //endregion @Steps

    //region @When

    @When("the user login in system")
    public void login() {
        endUser.login();
    }

    @When("the user moves cursor on example class path area")
    public void moveCursorOnExampleClassPathArea() {
        endUser.move_cursor_on_example_class_path_area();
    }

    @When("the user clicks on example class path area")
    public void clickOnExampleClassPathArea() {
        endUser.click_on_example_class_path_area();
    }

    @When("the user open dashboard with name '$dashboardName'")
    public void whenTheUserOpenTheDashboard(String dashboardName) {
        endUser.open_dashboard(dashboardName);
    }

    //endregion @When
}
