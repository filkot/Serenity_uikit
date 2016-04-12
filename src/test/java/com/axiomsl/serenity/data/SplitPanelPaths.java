package com.axiomsl.serenity.data;

/**
 * Created by dbudranov on 12.04.2016.
 */

public enum SplitPanelPaths {

    whole("//div[@class = 'v-splitpanel-horizontal v-widget v-has-width']"),
    first("//span[text() = 'first']/ancestor::div[contains(@class, 'splitpanel-first-container')]/following-sibling::div[contains(@class, 'hsplitter')]"),
    second("//span[text() = 'first']/ancestor::div[contains(@class, 'splitpanel-first-container')]/following-sibling::div[contains(@class, 'vsplitter')]");

    private String path;

    private SplitPanelPaths(String path) {
        this.path = path;
    }

    public String getPath() {
        return path;
    }
}