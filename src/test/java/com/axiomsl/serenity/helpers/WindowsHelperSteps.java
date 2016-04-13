package com.axiomsl.serenity.helpers;

import net.serenitybdd.core.Serenity;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import java.util.Set;

import static org.junit.Assert.assertTrue;

/**
 * Working with windows
 */
public class WindowsHelperSteps extends ScenarioSteps {


    /**
     * Switch to initial window
     */
    @Step(callNestedMethods = false)
    public void switchOnOldWindow() {
        HelperManager.WebDriver.getDriver().close();
        HelperManager.WebDriver.getDriver().switchTo().window((String) Serenity.getCurrentSession().get("mainWindow"));
    }

    /**
     * Switch to new window
     */
    @Step(callNestedMethods = false)
    public void switchOnNewWindow() {
        assertTrue("There are no new windows for switching (check settings crossInstanceDashboard)", waitForNewWindow());
        Set<String> windowsList = (Set<String>) Serenity.getCurrentSession().get("allWindow");
        for (String window : windowsList) {
            if (!window.equals(Serenity.getCurrentSession().get("mainWindow"))) {
                HelperManager.WebDriver.getDriver().switchTo().window(window);
            }
        }
    }

    @Step(callNestedMethods = false)
    public boolean waitForNewWindow() {
        Set<String> windowsList = HelperManager.WebDriver.getDriver().getWindowHandles();
        long timeout = 10000;
        long finish = System.currentTimeMillis() + timeout;
        while (System.currentTimeMillis() < finish) {
            if (windowsList.size() > 1) {
                Serenity.getCurrentSession().put("allWindow", windowsList);
                return true;
            }
            waitABit(1000);
            windowsList = HelperManager.WebDriver.getDriver().getWindowHandles();
        }
        return false;
    }
}
