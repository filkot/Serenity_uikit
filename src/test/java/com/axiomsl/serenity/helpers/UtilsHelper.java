package com.axiomsl.serenity.helpers;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by mzhelezko on 11-Apr-16.
 */
final public class UtilsHelper {

    //region Public Fields

    public String DefaultDateFormatLocale = "MM/dd/yy hh:mm:ss aa";
    public String DefaultDatePickerFormat = "E MMM dd HH:mm:ss z yyyy";

    //region Public Fields

    //region Public Methods

    public List<String> removeTripleDots(List<String> currentList) {
        List<String> modifiedList = new ArrayList<>();
        for (String aCurrentList : currentList) {
            modifiedList.add(aCurrentList.replace("...", ""));
        }
        return modifiedList;
    }

    //endregion Public Methods

}