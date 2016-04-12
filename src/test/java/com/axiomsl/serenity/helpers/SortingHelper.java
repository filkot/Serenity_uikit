package com.axiomsl.serenity.helpers;

import com.axiomsl.serenity.comparators.OrderComparatorManager;

import java.util.List;

/**
 * Created by mzhelezko on 11-Apr-16.
 */
final public class SortingHelper {

    public List<String> sortAscending(List<String> sortingList){
        return new OrderComparatorManager(sortingList).sort();
    }

    public List<String> sortDescending(List<String> sortingList){
        return new OrderComparatorManager(sortingList).reverse();
    }
}
