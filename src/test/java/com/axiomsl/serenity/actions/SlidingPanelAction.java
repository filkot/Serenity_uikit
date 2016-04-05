package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.elements.SlidingPanel;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;

/**
 * Created by dbudranov on 05.04.2016.
 */
public class SlidingPanelAction extends BasePage {
    private final static String SLIDE_PANEL_XPATH = "//div[contains(@class, 'sliding-out-panel')]";


    public SlidingPanel get_slide_panel() {
        SlidingPanel slidePanel = new SlidingPanel(find(By.xpath(SLIDE_PANEL_XPATH)));
        return slidePanel;
    }



}
