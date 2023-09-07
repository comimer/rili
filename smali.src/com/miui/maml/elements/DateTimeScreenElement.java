package com.miui.maml.elements;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import com.miui.maml.util.TextFormatter;
import java.util.TimeZone;
import miuix.pickerwidget.date.Calendar;
import org.w3c.dom.Element;

public class DateTimeScreenElement
  extends TextScreenElement
{
  public static final String TAG_NAME = "DateTime";
  private DateFormatter mDateFormatter;
  private DateFormatter mDescriptionDateFormatter;
  
  public DateTimeScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    paramScreenElementRoot = Expression.build(getVariables(), paramElement.getAttribute("value"));
    Expression localExpression = Expression.build(getVariables(), paramElement.getAttribute("timeZoneId"));
    this.mDateFormatter = new DateFormatter(this.mFormatter, paramScreenElementRoot, localExpression);
    if (!TextUtils.isEmpty(paramElement.getAttribute("contentDescriptionFormat")))
    {
      this.mHasContentDescription = true;
      this.mDescriptionDateFormatter = new DateFormatter(TextFormatter.fromElement(getVariables(), paramElement, null, "contentDescriptionFormat", null, null, null), paramScreenElementRoot, localExpression);
    }
    else if (!TextUtils.isEmpty(paramElement.getAttribute("contentDescriptionFormatExp")))
    {
      this.mHasContentDescription = true;
      this.mDescriptionDateFormatter = new DateFormatter(TextFormatter.fromElement(getVariables(), paramElement, null, null, null, null, "contentDescriptionFormatExp"), paramScreenElementRoot, localExpression);
    }
    if (this.mHasContentDescription) {
      this.mRoot.addAccessibleElements(this);
    }
  }
  
  public String getContentDescription()
  {
    Object localObject = this.mDescriptionDateFormatter;
    if (localObject != null) {
      localObject = ((DateFormatter)localObject).getText();
    } else {
      localObject = super.getContentDescription();
    }
    return localObject;
  }
  
  protected String getText()
  {
    return this.mDateFormatter.getText();
  }
  
  public void resume()
  {
    super.resume();
    this.mDateFormatter.resetCalendar();
    DateFormatter localDateFormatter = this.mDescriptionDateFormatter;
    if (localDateFormatter != null) {
      localDateFormatter.resetCalendar();
    }
  }
  
  class DateFormatter
  {
    private Calendar mCalendar = new Calendar();
    private int mCurDay = -1;
    private String mLunarDate;
    private String mOldFormat;
    private long mPreValue;
    private String mText;
    private TextFormatter mTextFormatter;
    private Expression mTimeZoneExp;
    private Expression mValueExp;
    
    public DateFormatter(TextFormatter paramTextFormatter, Expression paramExpression)
    {
      this(paramTextFormatter, paramExpression, null);
    }
    
    public DateFormatter(TextFormatter paramTextFormatter, Expression paramExpression1, Expression paramExpression2)
    {
      this.mTextFormatter = paramTextFormatter;
      this.mValueExp = paramExpression1;
      this.mTimeZoneExp = paramExpression2;
    }
    
    public String getText()
    {
      Object localObject1 = this.mTextFormatter;
      String str1 = "";
      if (localObject1 == null) {
        return "";
      }
      Object localObject2 = ((TextFormatter)localObject1).getFormat();
      if (localObject2 == null) {
        return "";
      }
      localObject1 = this.mValueExp;
      long l;
      if (localObject1 != null) {
        l = DateTimeScreenElement.this.evaluate((Expression)localObject1);
      } else {
        l = System.currentTimeMillis();
      }
      if ((TextUtils.equals(this.mOldFormat, (CharSequence)localObject2)) && (Math.abs(l - this.mPreValue) < 200L)) {
        return this.mText;
      }
      this.mOldFormat = ((String)localObject2);
      this.mCalendar.setTimeInMillis(l);
      localObject1 = this.mTimeZoneExp;
      if (localObject1 != null)
      {
        localObject1 = ((Expression)localObject1).evaluateStr();
        if (!TextUtils.isEmpty((CharSequence)localObject1)) {
          this.mCalendar.setTimeZone(TimeZone.getTimeZone((String)localObject1));
        }
      }
      Context localContext = DateTimeScreenElement.this.getContext().mContext;
      int i = ((String)localObject2).indexOf("NNNN");
      if (i > -1)
      {
        if (this.mCalendar.get(9) != this.mCurDay)
        {
          this.mLunarDate = this.mCalendar.format(localContext, "N月e");
          String str2 = this.mCalendar.format(localContext, "t");
          if (str2 != null)
          {
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append(this.mLunarDate);
            ((StringBuilder)localObject1).append(" ");
            ((StringBuilder)localObject1).append(str2);
            this.mLunarDate = ((StringBuilder)localObject1).toString();
          }
          this.mCurDay = this.mCalendar.get(9);
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append("get lunar date:");
          ((StringBuilder)localObject1).append(this.mLunarDate);
          Log.i("DateTimeScreenElement", ((StringBuilder)localObject1).toString());
        }
        if (i > 0) {
          localObject1 = this.mCalendar.format(localContext, ((String)localObject2).substring(0, i));
        } else {
          localObject1 = "";
        }
        if (!((String)localObject2).endsWith("NNNN")) {
          str1 = this.mCalendar.format(localContext, ((String)localObject2).substring(i + 4));
        }
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append((String)localObject1);
        ((StringBuilder)localObject2).append(this.mLunarDate);
        ((StringBuilder)localObject2).append(str1);
        this.mText = ((StringBuilder)localObject2).toString();
      }
      else
      {
        this.mText = this.mCalendar.format(localContext, (CharSequence)localObject2);
      }
      this.mPreValue = l;
      return this.mText;
    }
    
    public void resetCalendar()
    {
      this.mCalendar = new Calendar();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.DateTimeScreenElement
 * JD-Core Version:    0.7.0.1
 */