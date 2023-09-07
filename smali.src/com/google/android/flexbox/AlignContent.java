package com.google.android.flexbox;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.SOURCE)
public @interface AlignContent
{
  public static final int CENTER = 2;
  public static final int FLEX_END = 1;
  public static final int FLEX_START = 0;
  public static final int SPACE_AROUND = 4;
  public static final int SPACE_BETWEEN = 3;
  public static final int STRETCH = 5;
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.flexbox.AlignContent
 * JD-Core Version:    0.7.0.1
 */