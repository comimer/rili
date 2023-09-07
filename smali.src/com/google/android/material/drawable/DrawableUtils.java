package com.google.android.material.drawable;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class DrawableUtils
{
  public static AttributeSet parseDrawableXml(Context paramContext, int paramInt, CharSequence paramCharSequence)
  {
    try
    {
      paramContext = paramContext.getResources().getXml(paramInt);
      int i;
      do
      {
        i = paramContext.next();
      } while ((i != 2) && (i != 1));
      if (i == 2)
      {
        if (TextUtils.equals(paramContext.getName(), paramCharSequence)) {
          return Xml.asAttributeSet(paramContext);
        }
        paramContext = new org/xmlpull/v1/XmlPullParserException;
        StringBuilder localStringBuilder = new java/lang/StringBuilder;
        localStringBuilder.<init>();
        localStringBuilder.append("Must have a <");
        localStringBuilder.append(paramCharSequence);
        localStringBuilder.append("> start tag");
        paramContext.<init>(localStringBuilder.toString());
        throw paramContext;
      }
      paramContext = new org/xmlpull/v1/XmlPullParserException;
      paramContext.<init>("No start tag found");
      throw paramContext;
    }
    catch (IOException paramContext) {}catch (XmlPullParserException paramContext) {}
    paramCharSequence = new StringBuilder();
    paramCharSequence.append("Can't load badge resource ID #0x");
    paramCharSequence.append(Integer.toHexString(paramInt));
    paramCharSequence = new Resources.NotFoundException(paramCharSequence.toString());
    paramCharSequence.initCause(paramContext);
    throw paramCharSequence;
  }
  
  @TargetApi(21)
  public static void setRippleDrawableRadius(RippleDrawable paramRippleDrawable, int paramInt)
  {
    paramRippleDrawable.setRadius(paramInt);
  }
  
  public static PorterDuffColorFilter updateTintFilter(Drawable paramDrawable, ColorStateList paramColorStateList, PorterDuff.Mode paramMode)
  {
    if ((paramColorStateList != null) && (paramMode != null)) {
      return new PorterDuffColorFilter(paramColorStateList.getColorForState(paramDrawable.getState(), 0), paramMode);
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.drawable.DrawableUtils
 * JD-Core Version:    0.7.0.1
 */