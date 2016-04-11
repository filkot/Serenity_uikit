package com.axiomsl.serenity.helpers;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by mzhelezko on 11-Apr-16.
 */
final public class UtilsHelper {

    //region Public Methods

    public List<String> removeTripleDots(List<String> currentList) {
        List<String> modifiedList = new ArrayList<>();
        for(int i=0; i < currentList.size(); i++)
        {
            modifiedList.add(currentList.get(i).replace("...",""));
        }
        return modifiedList;
    }

    //endregion Public Methods

}