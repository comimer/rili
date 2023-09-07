package com.miui.calendar.util.logger;

public enum LogLevel
{
  static
  {
    LogLevel localLogLevel1 = new LogLevel("FULL", 0);
    FULL = localLogLevel1;
    LogLevel localLogLevel2 = new LogLevel("NONE", 1);
    NONE = localLogLevel2;
    $VALUES = new LogLevel[] { localLogLevel1, localLogLevel2 };
  }
  
  private LogLevel() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.logger.LogLevel
 * JD-Core Version:    0.7.0.1
 */