package com.miui.maml.elements;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.PorterDuff.Mode;
import android.os.Handler;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.Log;
import com.miui.maml.ResourceManager;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import com.miui.maml.util.Utils;
import java.text.DecimalFormatSymbols;
import java.util.Calendar;
import java.util.TimeZone;
import org.w3c.dom.Element;

public class TimepanelScreenElement
  extends ImageScreenElement
{
  private static final String LOG_TAG = "TimepanelScreenElement";
  private static final String M12 = "hh:mm";
  private static final String M24 = "kk:mm";
  public static final String TAG_NAME = "Time";
  private int mBmpHeight;
  private int mBmpWidth;
  protected Calendar mCalendar = Calendar.getInstance();
  private boolean mForceUpdate;
  private String mFormat;
  private Expression mFormatExp = Expression.build(getVariables(), getAttr(paramElement, "formatExp"));
  private String mFormatRaw = getAttr(paramElement, "format");
  private boolean mLoadResourceFailed;
  private char mLocalizedZero = DecimalFormatSymbols.getInstance().getZeroDigit();
  private String mOldFormat;
  private String mOldSrc;
  private long mPreMinute;
  private CharSequence mPreTime;
  private int mSpace = (int)scale(getAttrAsInt(paramElement, "space", 0));
  private Expression mTimeZoneExp = Expression.build(getVariables(), getAttr(paramElement, "timeZoneId"));
  private Runnable mUpdateTimeRunnable = new Runnable()
  {
    public void run()
    {
      if (TimepanelScreenElement.this.mLoadResourceFailed) {
        return;
      }
      Object localObject1 = TimepanelScreenElement.this.mBitmap.getBitmap();
      if (localObject1 == null) {
        return;
      }
      long l = System.currentTimeMillis();
      TimepanelScreenElement.this.mCalendar.setTimeInMillis(l);
      if (TimepanelScreenElement.this.mTimeZoneExp != null)
      {
        localObject2 = TimepanelScreenElement.this.mTimeZoneExp.evaluateStr();
        if (!TextUtils.isEmpty((CharSequence)localObject2)) {
          TimepanelScreenElement.this.mCalendar.setTimeZone(TimeZone.getTimeZone((String)localObject2));
        }
      }
      Object localObject2 = DateFormat.format(TimepanelScreenElement.this.getFormat(), TimepanelScreenElement.this.mCalendar);
      if ((!TimepanelScreenElement.this.mForceUpdate) && (localObject2.equals(TimepanelScreenElement.this.mPreTime))) {
        return;
      }
      TimepanelScreenElement.access$402(TimepanelScreenElement.this, (CharSequence)localObject2);
      localObject1 = new Canvas((Bitmap)localObject1);
      Object localObject3 = PorterDuff.Mode.CLEAR;
      int i = 0;
      ((Canvas)localObject1).drawColor(0, (PorterDuff.Mode)localObject3);
      int k;
      for (int j = 0; i < ((CharSequence)localObject2).length(); j = k)
      {
        char c = ((CharSequence)localObject2).charAt(i);
        localObject3 = TimepanelScreenElement.this.getDigitBmp(c);
        k = j;
        if (localObject3 != null)
        {
          ((Canvas)localObject1).drawBitmap((Bitmap)localObject3, j, 0.0F, null);
          k = j + ((Bitmap)localObject3).getWidth() + TimepanelScreenElement.this.mSpace;
        }
        i++;
      }
      TimepanelScreenElement.this.mBitmap.updateVersion();
      localObject2 = TimepanelScreenElement.this;
      TimepanelScreenElement.access$702((TimepanelScreenElement)localObject2, j - ((TimepanelScreenElement)localObject2).mSpace);
      localObject2 = TimepanelScreenElement.this;
      ((ScreenElement)localObject2).setActualWidth(((ScreenElement)localObject2).descale(((TimepanelScreenElement)localObject2).mBmpWidth));
      TimepanelScreenElement.this.requestUpdate();
    }
  };
  
  public TimepanelScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
  }
  
  private void createBitmap()
  {
    int i = 0;
    int j = 0;
    int n;
    for (int k = j; i < 11; k = n)
    {
      localObject = getDigitBmp("0123456789:".charAt(i));
      if (localObject == null)
      {
        this.mLoadResourceFailed = true;
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Failed to load digit bitmap: ");
        ((StringBuilder)localObject).append("0123456789:".charAt(i));
        Log.e("TimepanelScreenElement", ((StringBuilder)localObject).toString());
        return;
      }
      int m = j;
      if (j < ((Bitmap)localObject).getWidth()) {
        m = ((Bitmap)localObject).getWidth();
      }
      if (this.mBmpHeight < ((Bitmap)localObject).getHeight()) {
        this.mBmpHeight = ((Bitmap)localObject).getHeight();
      }
      n = k;
      if (k == 0) {
        n = ((Bitmap)localObject).getDensity();
      }
      i++;
      j = m;
    }
    Object localObject = Bitmap.createBitmap(j * 5 + this.mSpace * 4, this.mBmpHeight, Bitmap.Config.ARGB_8888);
    ((Bitmap)localObject).setDensity(k);
    this.mBitmap.setBitmap((Bitmap)localObject);
    setActualHeight(descale(this.mBmpHeight));
  }
  
  private Bitmap getDigitBmp(char paramChar)
  {
    String str1 = getSrc();
    String str2 = str1;
    if (TextUtils.isEmpty(str1)) {
      str2 = "time.png";
    }
    if (paramChar == ':')
    {
      str1 = "dot";
    }
    else
    {
      char c1 = this.mLocalizedZero;
      char c2 = paramChar;
      if (paramChar >= c1)
      {
        c2 = paramChar;
        if (paramChar <= c1 + '\t')
        {
          paramChar = (char)(paramChar - c1 + 48);
          c2 = paramChar;
        }
      }
      str1 = String.valueOf(c2);
    }
    return getContext().mResourceManager.getBitmap(Utils.addFileNameSuffix(str2, str1));
  }
  
  private String getFormat()
  {
    Expression localExpression = this.mFormatExp;
    if (localExpression != null) {
      return localExpression.evaluateStr();
    }
    return this.mFormat;
  }
  
  private void setDateFormat()
  {
    if ((TextUtils.isEmpty(this.mFormatRaw)) && (this.mFormatExp == null))
    {
      String str;
      if (DateFormat.is24HourFormat(getContext().mContext)) {
        str = "kk:mm";
      } else {
        str = "hh:mm";
      }
      this.mFormat = str;
    }
    else
    {
      this.mFormat = this.mFormatRaw;
    }
  }
  
  private void updateTime(boolean paramBoolean)
  {
    getContext().getHandler().removeCallbacks(this.mUpdateTimeRunnable);
    this.mForceUpdate = paramBoolean;
    postInMainThread(this.mUpdateTimeRunnable);
  }
  
  protected void doTick(long paramLong)
  {
    super.doTick(paramLong);
    paramLong = System.currentTimeMillis() / 60000L;
    String str1 = getSrc();
    String str2 = getFormat();
    if ((paramLong != this.mPreMinute) || (!TextUtils.equals(str1, this.mOldSrc)) || (!TextUtils.equals(str2, this.mOldFormat)))
    {
      updateTime(true);
      this.mPreMinute = paramLong;
      this.mOldSrc = str1;
      this.mOldFormat = str2;
    }
  }
  
  public void finish()
  {
    this.mPreTime = null;
    this.mLoadResourceFailed = false;
    getContext().getHandler().removeCallbacks(this.mUpdateTimeRunnable);
    super.finish();
  }
  
  protected int getBitmapWidth()
  {
    return this.mBmpWidth;
  }
  
  public void init()
  {
    super.init();
    setDateFormat();
    this.mPreTime = null;
    createBitmap();
    updateTime(true);
  }
  
  public void pause() {}
  
  public void resume()
  {
    this.mCalendar = Calendar.getInstance();
    this.mLocalizedZero = DecimalFormatSymbols.getInstance().getZeroDigit();
    setDateFormat();
    updateTime(true);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.TimepanelScreenElement
 * JD-Core Version:    0.7.0.1
 */