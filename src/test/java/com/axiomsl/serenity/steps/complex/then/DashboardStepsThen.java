package com.axiomsl.serenity.steps.complex.then;

import com.axiomsl.serenity.steps.basic.EndUserSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;

public class DashboardStepsThen {

    //region @Steps

    @Steps
    EndUserSteps endUser;

    //endregion @Steps

    //region @Then

    @Then("the user should not be able to click on class path area")
    public void thenTheUserCannotClickOnClassPath() {
        endUser.is_class_path_available();
    }


    @Then("the user should see '$currentPageURL' the current page URL")
    public void thenTheUserShouldSeeTheCurrentPageURL(String currentPageURL) {
        endUser.check_current_page_url(currentPageURL);
    }

    @Then("the user should see '$loginInvitation' text on a page")
    public void thenTheUserShouldSeeLoginPage(String loginInvitation) {
        endUser.check_login_page(loginInvitation);
    }

    //endregion @Then
}
