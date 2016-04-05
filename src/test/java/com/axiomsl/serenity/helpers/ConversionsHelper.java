package com.axiomsl.serenity.helpers;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * Created by mzhelezko on 05-Apr-16.
 */
final public class ConversionsHelper {

    //region Public Methods

    public Date convertStringToDate(String inputDate)
    {
        DateFormat format = new SimpleDateFormat("MM/dd/yy HH:mm:ss", Locale.ENGLISH);
        Date parsedDate = null;
        try {
            parsedDate = format.parse(inputDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return parsedDate;
    }

    //endregion Public Methods
}