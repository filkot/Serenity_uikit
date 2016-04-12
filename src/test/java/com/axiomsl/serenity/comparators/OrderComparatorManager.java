package com.axiomsl.serenity.comparators;

import com.axiomsl.serenity.helpers.HelperManager;
import java.util.*;

/**
 * Created by mzhelezko on 11-Apr-16.
 */
public class OrderComparatorManager {

    //region Private Fields

    private final List<String> actualList;
    private Comparator<Integer> integerStraightOrder;
    private Comparator<Integer> integerReverseOrder;
    private Comparator<String> stringReverseOrder;
    private Comparator<String> stringStraightOrder;
    private Comparator<Date> dateStraightOrder;
    private Comparator<Date> dateReverseOrder;
    private List<Integer> integerList = new ArrayList<>();
    private List<Date> dateList = new ArrayList<>();
    private List<String> expectedList = new ArrayList<>();
    private boolean targetListHasLetters = false;
    private boolean targetListHasDate = false;
    private boolean primitiveSorting= true;

    //endregion Private Fields

    //region Private Methods

    private List<String> sort(Comparator<Integer> comparatorInteger, Comparator<String> comparatorString, Comparator<Date> comparatorDate){
        if(!targetListHasLetters && !primitiveSorting)
        {
            for(String strValue : actualList) integerList.add(Integer.valueOf(strValue));
            Collections.sort(integerList, comparatorInteger);
            for(Integer intValue : integerList) expectedList.add(String.valueOf(intValue));
        }
        if(targetListHasDate)
        {
            for(String strValue : actualList) dateList.add(HelperManager.Conversions.convertStringToDate(strValue));
            Collections.sort(dateList, comparatorDate);
            for(Date dateValue : dateList) expectedList.add(HelperManager.Conversions.convertDateToString(dateValue));
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

    public OrderComparatorManager(List<String> actualList)
    {
        this.actualList = actualList;
        stringReverseOrder = new StringReverseOrderComparator();
        stringStraightOrder = new StringStraightOrderComparator();
        integerReverseOrder = new IntegerReverseOrderComparator();
        integerStraightOrder = new IntegerStraightOrderComparator();
        dateStraightOrder = new DateStraightOrderComparator();
        dateReverseOrder = new DateReverseOrderComparator();

        for(String item : this.actualList)
        {
            if (HelperManager.Conversions.isStringDate(item)) {
                this.targetListHasDate = true;
                break;
            }
            if (!item.matches("\\d+")) {
                this.targetListHasLetters = true;
                break;
            }
        }
    }

    public List<String> sort(){
        return sort(integerStraightOrder, stringStraightOrder, dateStraightOrder);
    }

    public List<String> reverse(){
        return sort(integerReverseOrder, stringReverseOrder, dateReverseOrder);
    }

    //endregion Protected Inner Classes

    public class DateReverseOrderComparator implements Comparator<Date> {

        //Date
        public int compare(Date dateObj1, Date dateObj2){
            return dateObj2.compareTo(dateObj1);
        }
    }

    public class DateStraightOrderComparator implements Comparator<Date> {

        //Date
        public int compare(Date dateObj1, Date dateObj2){
            return dateObj1.compareTo(dateObj2);
        }
    }

    public class IntegerReverseOrderComparator implements Comparator<Integer> {

        //Integer
        public int compare(Integer intObj1, Integer intObj2){
            return Integer.valueOf(intObj2).compareTo(Integer.valueOf(intObj1));
        }
    }

    public class IntegerStraightOrderComparator implements Comparator<Integer> {

        //Integer
        public int compare(Integer intObj1, Integer intObj2){
            return Integer.valueOf(intObj1).compareTo(Integer.valueOf(intObj2));
        }
    }

    public class StringReverseOrderComparator implements Comparator<String> {

        //String
        @Override
        public int compare(String strObj1, String strObj2){
            return strObj2.compareTo(strObj1);
        }
    }

    public class StringStraightOrderComparator implements Comparator<String> {

        //String
        @Override
        public int compare(String strObj1, String strObj2){
            return strObj1.compareTo(strObj2);
        }
    }

    //region Protected Inner Classes
}