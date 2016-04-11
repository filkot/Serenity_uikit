package com.axiomsl.serenity.comparators;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * Created by mzhelezko on 11-Apr-16.
 */
public class TableColumnComparatorManager {

    //region Private Fields

    private final List<String> actualList;
    private Comparator<Integer> integerReverseOrder;
    private Comparator<Integer> integerStraightOrder;
    private Comparator<String> stringReverseOrder;
    private Comparator<String> stringStraightOrder;
    private List<Integer> integerList = new ArrayList<>();
    private List<String> expectedList = new ArrayList<>();
    private boolean targetListHasLetters = false;
    private boolean primitiveSorting= true;

    //endregion Private Fields

    //region Private Methods

    private List<String> sort(Comparator<Integer> comparatorInteger, Comparator<String> comparatorString){
        if(!targetListHasLetters && !primitiveSorting)
        {
            for(String strValue : actualList) integerList.add(Integer.valueOf(strValue));
            Collections.sort(integerList, comparatorInteger);
            for(Integer intValue : integerList) expectedList.add(String.valueOf(intValue));
        }
        else
        {
            for(String strValue : actualList) expectedList.add(strValue);
            Collections.sort(expectedList, comparatorString);
        }
        return expectedList;
    }

    //endregion Private Methods

    //region Public Methods

    public TableColumnComparatorManager(List<String> actualList)
    {
        this.actualList = actualList;
        stringReverseOrder = new TableColumnStringReverseOrderComparator();
        stringStraightOrder = new TableColumnStringStraightOrderComparator();
        integerReverseOrder = new TableColumnIntegerReverseOrderComparator();
        integerStraightOrder = new TableColumnIntegerStraightOrderComparator();

        for(String item : this.actualList)
        {
            if (!item.matches("\\d+")) {
                this.targetListHasLetters = true;
                break;
            }
        }
    }

    public List<String> sort(){
        return sort(integerStraightOrder, stringStraightOrder);
    }

    public List<String> reverse(){
        return sort(integerReverseOrder, stringReverseOrder);
    }

    //endregion Public Methods
}