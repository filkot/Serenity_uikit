package com.axiomsl.serenity.comparators;

import java.util.Comparator;

/**
 * Created by mzhelezko on 11-Apr-16.
 */
public class TableColumnStringStraightOrderComparator implements Comparator<String> {

    //String
    @Override
    public int compare(String strObj1, String strObj2){
        return strObj1.compareTo(strObj2);
    }
}