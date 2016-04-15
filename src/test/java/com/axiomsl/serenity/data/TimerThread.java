package com.axiomsl.serenity.data;

/**
 * Created by mzhelezko on 14-Apr-16.
 */
public class TimerThread implements Runnable{

    //region Private Fields

    Thread thread;
    private long milliSeconds = 5000;
    private boolean isDone = false;

    //endregion Private Fields

    //region Constructors

    public TimerThread()
    {
        thread = new Thread(this);
        thread.start();
    }

    //endregion Constructors

    //region Public Fields

    public void run(long inputMilliseconds) {
        milliSeconds = inputMilliseconds;
        run();
    }

    @Override
    public void run() {
        try {
            Thread.sleep(milliSeconds);
            isDone = true;
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public boolean isCounted()
    {
        return isDone;
    }

    //endregion Public Fields

}