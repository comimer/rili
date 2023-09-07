package com.miui.calendar.view.simplifyspan.customspan;

import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextPaint;
import android.text.style.AbsoluteSizeSpan;
import android.widget.TextView;

public class CustomAbsoluteSizeSpan
  extends AbsoluteSizeSpan
{
  private int mGravity;
  private String mNormalSizeText;
  private int mOffsetBaselineShift;
  private String mText;
  private Rect mTextRect = new Rect();
  private TextView mTextView;
  private Rect mTextViewRect = new Rect();
  
  public CustomAbsoluteSizeSpan(String paramString1, String paramString2, int paramInt1, TextView paramTextView, int paramInt2)
  {
    super(paramInt1, true);
    this.mText = paramString2;
    this.mTextView = paramTextView;
    this.mGravity = paramInt2;
    this.mNormalSizeText = paramString1;
  }
  
  public void updateDrawState(TextPaint paramTextPaint)
  {
    super.updateDrawState(paramTextPaint);
    if (this.mGravity == 3) {
      return;
    }
    Object localObject = this.mTextView.getPaint();
    String str = this.mNormalSizeText;
    ((Paint)localObject).getTextBounds(str, 0, str.length(), this.mTextViewRect);
    localObject = this.mText;
    paramTextPaint.getTextBounds((String)localObject, 0, ((String)localObject).length(), this.mTextRect);
    int i = this.mTextViewRect.height();
    int j = this.mTextViewRect.bottom;
    localObject = this.mTextRect;
    j -= ((Rect)localObject).bottom;
    int k = this.mGravity;
    if (k != 1)
    {
      if (k == 2) {
        this.mOffsetBaselineShift = (i / 2 - ((Rect)localObject).height() / 2 - j);
      }
    }
    else {
      this.mOffsetBaselineShift = (i - ((Rect)localObject).height() - j);
    }
    paramTextPaint.baselineShift -= this.mOffsetBaselineShift;
  }
  
  public void updateMeasureState(TextPaint paramTextPaint)
  {
    super.updateMeasureState(paramTextPaint);
    paramTextPaint.baselineShift -= this.mOffsetBaselineShift;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.simplifyspan.customspan.CustomAbsoluteSizeSpan
 * JD-Core Version:    0.7.0.1
 */