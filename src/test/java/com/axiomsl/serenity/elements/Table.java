package com.axiomsl.serenity.elements;

import net.serenitybdd.core.annotations.findby.By;
import net.serenitybdd.core.pages.WebElementFacade;
import net.thucydides.core.pages.PageObject;

import ch.lambdaj.Lambda;
import ch.lambdaj.function.convert.Converter;


import java.util.*;

/**
 * Created by kfilippov on 10.02.2016.
 */
public class Table extends PageObject {
    private final WebElementFacade wrappedElement;
    private String rowLocator = ".//tr[contains(@class, 'v-table-row')]";
    private String cellLocator = ".//td[contains(@class, 'table-cell-content')]//span";
    private String headingLocator = ".//td[contains(@class, 'table-header')]/div[contains(@class, 'table-caption')]";


    public Table(WebElementFacade wrappedElement) {
        this.wrappedElement = wrappedElement;
    }

    public List<WebElementFacade> getHeadings() {
        return wrappedElement.thenFindAll(By.xpath(headingLocator));
    }

    public List<String> getHeadingsAsString() {
        return Lambda.convert(this.getHeadings(), Table.WebElementToTextConverter.toTextValues());
    }

    public List<List<WebElementFacade>> getRows() {
        List<List<WebElementFacade>> rows = new ArrayList<>();
        List<WebElementFacade> rowElements = wrappedElement.thenFindAll(By.xpath(rowLocator));
        for (WebElementFacade rowElement : rowElements) {
            rows.add(rowElement.thenFindAll(By.xpath(cellLocator)));
        }
        return rows;
    }

    public List<List<String>> getRowsAsString() {
        return Lambda.convert(this.getRows(), Table.ListConverter.toListsConvertingEachItem(Table.WebElementToTextConverter.toTextValues()));
    }

    public List<List<WebElementFacade>> getColumns() {
        ArrayList columns = new ArrayList();
        List rows = this.getRows();
        if(rows.isEmpty()) {
            return columns;
        } else {
            int columnsNumber = ((List)rows.get(0)).size();

            for(int i = 0; i < columnsNumber; ++i) {
                ArrayList column = new ArrayList();
                Iterator i$ = rows.iterator();

                while(i$.hasNext()) {
                    List row = (List)i$.next();
                    column.add(row.get(i));
                }

                columns.add(column);
            }

            return columns;
        }
    }
    public List<List<String>> getColumnsAsString() {
        return Lambda.convert(this.getColumns(), Table.ListConverter.toListsConvertingEachItem(Table.WebElementToTextConverter.toTextValues()));
    }

    public List<String> getColumnAsStringByIndex(int index) {
        return getColumnsAsString().get(index);
    }

    public WebElementFacade getCellAt(int i, int j) {
        return (WebElementFacade)((List)this.getRows().get(i)).get(j);
    }

    public List<Map<String, WebElementFacade>> getRowsMappedToHeadings() {
        return this.getRowsMappedToHeadings(this.getHeadingsAsString());
    }

    public List<Map<String, WebElementFacade>> getRowsMappedToHeadings(List<String> headings) {
        ArrayList rowsMappedToHeadings = new ArrayList();
        List rows = this.getRows();
        if(rows.isEmpty()) {
            return rowsMappedToHeadings;
        } else {
            Iterator i$ = rows.iterator();

            while(i$.hasNext()) {
                List row = (List)i$.next();
                if(row.size() != headings.size()) {
                    try {
                        throw new Exception("Headings count is not equal to number of cells in row");
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }

                HashMap rowToHeadingsMap = new HashMap();
                int cellNumber = 0;

                for(Iterator i$1 = headings.iterator(); i$1.hasNext(); ++cellNumber) {
                    String heading = (String)i$1.next();
                    rowToHeadingsMap.put(heading, row.get(cellNumber));
                }

                rowsMappedToHeadings.add(rowToHeadingsMap);
            }

            return rowsMappedToHeadings;
        }
    }

    public List<Map<String, String>> getRowsAsStringMappedToHeadings() {
        return this.getRowsAsStringMappedToHeadings(this.getHeadingsAsString());
    }

    public List<Map<String, String>> getRowsAsStringMappedToHeadings(List<String> headings) {
        return Lambda.convert(this.getRowsMappedToHeadings(headings), Table.MapConverter.toMapsConvertingEachValue(Table.WebElementToTextConverter.toText()));
    }


    static final class MapConverter<K, F, T> implements Converter<Map<K, F>, Map<K, T>> {
        private final Converter<F, T> valueConverter;

        public static <F, T> Converter<Map<String, F>, Map<String, T>> toMapsConvertingEachValue(Converter<F, T> valueConverter) {
            return new Table.MapConverter(valueConverter);
        }

        private MapConverter(Converter<F, T> valueConverter) {
            this.valueConverter = valueConverter;
        }

        public Map<K, T> convert(Map<K, F> map) {
            return Lambda.convertMap(map, this.valueConverter);
        }
    }


    static final class ListConverter<F, T> implements Converter<List<F>, List<T>> {
        private final Converter<F, T> itemsConverter;

        public static <F, T> Converter<List<F>, List<T>> toListsConvertingEachItem(Converter<F, T> itemsConverter) {
            return new Table.ListConverter(itemsConverter);
        }

        private ListConverter(Converter<F, T> itemsConverter) {
            this.itemsConverter = itemsConverter;
        }

        public List<T> convert(List<F> list) {
            return Lambda.convert(list, this.itemsConverter);
        }
    }

    static final class WebElementToTextConverter implements Converter<WebElementFacade, String> {
        public static Converter<WebElementFacade, String> toText() {
            return new Table.WebElementToTextConverter();
        }

        public static Converter<WebElementFacade, String> toTextValues() {
            return new Table.WebElementToTextConverter();
        }

        private WebElementToTextConverter() {
        }

        public String convert(WebElementFacade element) {
            return element.getText();
        }
    }


}
