package com.axiomsl.serenity.actions;

import com.axiomsl.serenity.data.SplitPanelPaths;
import com.axiomsl.serenity.elements.SplitPanel;
import com.axiomsl.serenity.pages.BasePage;
import org.openqa.selenium.By;


/**
 * Created by dbudranov on 11.04.2016.
 */
public class SplitPanelAction extends BasePage {

    public SplitPanel get_split_panel(String path) {
        SplitPanel splitPanel = new SplitPanel(find(By.xpath(SplitPanelPaths.valueOf(path).getPath())));
        return splitPanel;
    }
}
