package com.axiomsl.serenity.comparators;

import java.util.Comparator;

/**
 * Created by mzhelezko on 11-Apr-16.
 */
public class TableColumnIntegerStraightOrderComparator implements Comparator<Integer> {

    //Integer
    public int compare(Integer intObj1, Integer intObj2){
        return Integer.valueOf(intObj1).compareTo(Integer.valueOf(intObj2));
    }
}