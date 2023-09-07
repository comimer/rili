package com.miui.calendar.view;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.os.Parcel;
import android.text.Layout;
import android.text.ParcelableSpan;
import android.text.Spanned;
import android.text.style.LeadingMarginSpan;

public class CustomBulletSpan
  implements LeadingMarginSpan, ParcelableSpan
{
  private static final int STANDARD_BULLET_RADIUS = 4;
  private static final int STANDARD_COLOR = 0;
  public static final int STANDARD_GAP_WIDTH = 2;
  private Path mBulletPath = null;
  private final int mBulletRadius;
  private final int mColor;
  private final int mGapWidth;
  private final boolean mWantColor;
  
  public CustomBulletSpan()
  {
    this(2, 0, false, 4);
  }
  
  public CustomBulletSpan(int paramInt)
  {
    this(paramInt, 0, false, 4);
  }
  
  public CustomBulletSpan(int paramInt1, int paramInt2)
  {
    this(paramInt1, paramInt2, true, 4);
  }
  
  public CustomBulletSpan(int paramInt1, int paramInt2, int paramInt3)
  {
    this(paramInt1, paramInt2, true, paramInt3);
  }
  
  private CustomBulletSpan(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    this.mGapWidth = paramInt1;
    this.mBulletRadius = paramInt3;
    this.mColor = paramInt2;
    this.mWantColor = paramBoolean;
  }
  
  public CustomBulletSpan(Parcel paramParcel)
  {
    this.mGapWidth = paramParcel.readInt();
    boolean bool;
    if (paramParcel.readInt() != 0) {
      bool = true;
    } else {
      bool = false;
    }
    this.mWantColor = bool;
    this.mColor = paramParcel.readInt();
    this.mBulletRadius = paramParcel.readInt();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void drawLeadingMargin(Canvas paramCanvas, Paint paramPaint, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, CharSequence paramCharSequence, int paramInt6, int paramInt7, boolean paramBoolean, Layout paramLayout)
  {
    if (((Spanned)paramCharSequence).getSpanStart(this) == paramInt6)
    {
      paramCharSequence = paramPaint.getStyle();
      paramInt4 = 0;
      if (this.mWantColor)
      {
        paramInt4 = paramPaint.getColor();
        paramPaint.setColor(this.mColor);
      }
      paramPaint.setStyle(Paint.Style.FILL);
      if (paramLayout != null) {
        paramLayout.getLineForOffset(paramInt6);
      }
      float f1 = (paramInt3 + paramInt5) / 2.0F;
      float f2 = paramInt1 + paramInt2 * this.mBulletRadius;
      if (paramCanvas.isHardwareAccelerated())
      {
        if (this.mBulletPath == null)
        {
          paramLayout = new Path();
          this.mBulletPath = paramLayout;
          paramLayout.addCircle(0.0F, 0.0F, this.mBulletRadius, Path.Direction.CW);
        }
        paramCanvas.save();
        paramCanvas.translate(f2, f1);
        paramCanvas.drawPath(this.mBulletPath, paramPaint);
        paramCanvas.restore();
      }
      else
      {
        paramCanvas.drawCircle(f2, f1, this.mBulletRadius, paramPaint);
      }
      if (this.mWantColor) {
        paramPaint.setColor(paramInt4);
      }
      paramPaint.setStyle(paramCharSequence);
    }
  }
  
  public int getBulletRadius()
  {
    return this.mBulletRadius;
  }
  
  public int getColor()
  {
    return this.mColor;
  }
  
  public int getGapWidth()
  {
    return this.mGapWidth;
  }
  
  public int getLeadingMargin(boolean paramBoolean)
  {
    return this.mBulletRadius * 2 + this.mGapWidth;
  }
  
  public int getSpanTypeId()
  {
    return getSpanTypeIdInternal();
  }
  
  public int getSpanTypeIdInternal()
  {
    return 8;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    writeToParcelInternal(paramParcel, paramInt);
  }
  
  public void writeToParcelInternal(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.mGapWidth);
    paramParcel.writeInt(this.mWantColor);
    paramParcel.writeInt(this.mColor);
    paramParcel.writeInt(this.mBulletRadius);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.CustomBulletSpan
 * JD-Core Version:    0.7.0.1
 */