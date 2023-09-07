package com.google.android.flexbox;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.SOURCE)
public @interface FlexDirection
{
  public static final int COLUMN = 2;
  public static final int COLUMN_REVERSE = 3;
  public static final int ROW = 0;
  public static final int ROW_REVERSE = 1;
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.flexbox.FlexDirection
 * JD-Core Version:    0.7.0.1
 */