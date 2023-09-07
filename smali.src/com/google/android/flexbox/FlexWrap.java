package com.google.android.flexbox;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.SOURCE)
public @interface FlexWrap
{
  public static final int NOWRAP = 0;
  public static final int WRAP = 1;
  public static final int WRAP_REVERSE = 2;
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.flexbox.FlexWrap
 * JD-Core Version:    0.7.0.1
 */