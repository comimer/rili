package com.google.gson.annotations;

import java.lang.annotation.Annotation;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.FIELD, java.lang.annotation.ElementType.TYPE})
public @interface Since
{
  double value();
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.gson.annotations.Since
 * JD-Core Version:    0.7.0.1
 */