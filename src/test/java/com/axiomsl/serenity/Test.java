package com.axiomsl.serenity;

import net.serenitybdd.jbehave.SerenityStories;
import org.jbehave.core.io.CodeLocations;
import org.jbehave.core.io.StoryFinder;

import java.net.URL;
import java.util.ArrayList;
import java.util.List;


public class Test extends SerenityStories {

    @Override
    public List<String> storyPaths() {
        List<String> storiesToRun = new ArrayList<String>();
        String storyProperty = System.getProperty("story");
        System.out.println(storyProperty);

        if (storyProperty == null || storyProperty.isEmpty()) {
            throw new RuntimeException("Please specify which stories to run");
        }

        String[] storyNames = storyProperty.split(",");
        StoryFinder sf = new StoryFinder();
        URL baseUrl = CodeLocations.codeLocationFromClass(this.getClass());

        for (String storyName : storyNames) {
            storiesToRun.addAll(sf.findPaths(baseUrl, storyName, ""));
        }

        return storiesToRun;
    }
}
