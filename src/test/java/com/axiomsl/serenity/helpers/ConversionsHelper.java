package com.axiomsl.serenity.helpers;

import ch.lambdaj.Lambda;
import ch.lambdaj.function.convert.Converter;
import com.axiomsl.serenity.comparators.TableColumnIntegerReverseOrderComparator;
import com.axiomsl.serenity.comparators.TableColumnIntegerStraightOrderComparator;
import com.axiomsl.serenity.comparators.TableColumnStringReverseOrderComparator;
import com.axiomsl.serenity.comparators.TableColumnStringStraightOrderComparator;
import net.serenitybdd.core.pages.WebElementFacade;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by mzhelezko on 05-Apr-16.
 */
final public class ConversionsHelper {

    //region Protected Static Inner Classes

    public static final class MapConverter<K, F, T> implements Converter<Map<K, F>, Map<K, T>> {
        private final Converter<F, T> valueConverter;

        public MapConverter(Converter<F, T> valueConverter) {
            this.valueConverter = valueConverter;
        }

        public static <F, T> Converter<Map<String, F>, Map<String, T>> toMapsConvertingEachValue(Converter<F, T> valueConverter) {
            return new MapConverter(valueConverter);
        }

        public Map<K, T> convert(Map<K, F> map) {
            return Lambda.convertMap(map, this.valueConverter);
        }
    }

    public static final class ListConverter<F, T> implements Converter<List<F>, List<T>> {
        private final Converter<F, T> itemsConverter;

        private ListConverter(Converter<F, T> itemsConverter) {
            this.itemsConverter = itemsConverter;
        }

        public static <F, T> Converter<List<F>, List<T>> toListsConvertingEachItem(Converter<F, T> itemsConverter) {
            return new ListConverter(itemsConverter);
        }

        public List<T> convert(List<F> list) {
            return Lambda.convert(list, this.itemsConverter);
        }
    }

    public static final class WebElementToTextConverter implements Converter<WebElementFacade, String> {
        private WebElementToTextConverter() {
        }

        public static Converter<WebElementFacade, String> toText() {
            return new WebElementToTextConverter();
        }

        public static Converter<WebElementFacade, String> toTextValues() {
            return new WebElementToTextConverter();
        }

        public String convert(WebElementFacade element) {
            // return element.getText();
            return element.getAttribute("textContent");
        }
    }

    //endregion Protected Static Inner Classes

    //region Public Methods

    public Date convertStringToDate(String inputDate, String formatOfDate){
        DateFormat format = new SimpleDateFormat(formatOfDate, Locale.ENGLISH);
        Date parsedDate = null;
        try {
            parsedDate = format.parse(inputDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return parsedDate;
    }

    public String[] convertListToStringArray(List<String> currentList) {
        String[] convertedListToArray = new String[currentList.size()];
        int i = 0;
        for (String s : currentList) {
            convertedListToArray[i++] = s;
        }
        return convertedListToArray;
    }

    //endregion Public Methods

}