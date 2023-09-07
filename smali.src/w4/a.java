package w4;

import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;

public class a
  extends LinkMovementMethod
{
  private static a b;
  private v4.a a;
  
  public static a a()
  {
    if (b == null) {
      b = new a();
    }
    return b;
  }
  
  private v4.a b(TextView paramTextView, Spannable paramSpannable, MotionEvent paramMotionEvent)
  {
    int i = (int)paramMotionEvent.getX();
    int j = (int)paramMotionEvent.getY();
    int k = paramTextView.getTotalPaddingLeft();
    int m = paramTextView.getTotalPaddingTop();
    int n = paramTextView.getScrollX();
    int i1 = paramTextView.getScrollY();
    paramTextView = paramTextView.getLayout();
    i1 = paramTextView.getOffsetForHorizontal(paramTextView.getLineForVertical(j - m + i1), i - k + n);
    paramTextView = (v4.a[])paramSpannable.getSpans(i1, i1, v4.a.class);
    if (paramTextView.length > 0) {
      paramTextView = paramTextView[0];
    } else {
      paramTextView = null;
    }
    return paramTextView;
  }
  
  public boolean onTouchEvent(TextView paramTextView, Spannable paramSpannable, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
    {
      paramTextView = b(paramTextView, paramSpannable, paramMotionEvent);
      this.a = paramTextView;
      if (paramTextView != null)
      {
        paramTextView.a(true);
        Selection.setSelection(paramSpannable, paramSpannable.getSpanStart(this.a), paramSpannable.getSpanEnd(this.a));
      }
    }
    else if (paramMotionEvent.getAction() == 2)
    {
      paramTextView = b(paramTextView, paramSpannable, paramMotionEvent);
      paramMotionEvent = this.a;
      if ((paramMotionEvent != null) && (paramTextView != paramMotionEvent))
      {
        paramMotionEvent.a(false);
        this.a = null;
        Selection.removeSelection(paramSpannable);
      }
    }
    else
    {
      v4.a locala = this.a;
      if (locala != null)
      {
        locala.a(false);
        super.onTouchEvent(paramTextView, paramSpannable, paramMotionEvent);
      }
      this.a = null;
      Selection.removeSelection(paramSpannable);
    }
    return true;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     w4.a
 * JD-Core Version:    0.7.0.1
 */