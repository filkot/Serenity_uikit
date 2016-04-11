package com.axiomsl.serenity.helpers;

import com.axiomsl.serenity.comparators.TableColumnComparatorManager;

import java.util.List;

/**
 * Created by mzhelezko on 11-Apr-16.
 */
final public class SortingHelper {

    public List<String> sortAscending(List<String> sortingList){
        return new TableColumnComparatorManager(sortingList).sort();
    }

    public List<String> sortDescending(List<String> sortingList){
        return new TableColumnComparatorManager(sortingList).reverse();
    }
}
