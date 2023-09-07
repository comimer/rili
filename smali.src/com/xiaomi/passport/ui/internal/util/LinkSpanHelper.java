package com.xiaomi.passport.ui.internal.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Paint;
import android.text.Html;
import android.text.Spannable;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.View;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import n5.b;

public class LinkSpanHelper
{
  public static Spannable a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean, a parama)
  {
    paramString1 = (Spannable)Html.fromHtml(paramString1);
    int i;
    if (TextUtils.isEmpty(paramString2)) {
      i = paramContext.getResources().getColor(b.c);
    } else {
      i = Color.parseColor(paramString2);
    }
    int j = paramString1.length();
    int k = 0;
    paramContext = (URLSpan[])paramString1.getSpans(0, j, URLSpan.class);
    j = paramContext.length;
    while (k < j)
    {
      paramString2 = paramContext[k];
      int m = paramString1.getSpanStart(paramString2);
      int n = paramString1.getSpanEnd(paramString2);
      paramString1.removeSpan(paramString2);
      String str = paramString2.getURL();
      int i1 = paramString1.getSpanFlags(paramString2);
      paramString1.setSpan(new UrlSpanWithUnderline(str, parama, i, paramBoolean), m, n, i1);
      k++;
    }
    return paramString1;
  }
  
  public static class UrlSpanWithUnderline
    extends URLSpan
  {
    private final boolean isShowClinkLineUnderLine;
    private WeakReference<LinkSpanHelper.a> linkClickListener;
    private final int linkColor;
    
    public UrlSpanWithUnderline(String paramString, LinkSpanHelper.a parama, int paramInt, boolean paramBoolean)
    {
      super();
      this.linkClickListener = new WeakReference(parama);
      this.linkColor = paramInt;
      this.isShowClinkLineUnderLine = paramBoolean;
    }
    
    public void onClick(View paramView)
    {
      LinkSpanHelper.a locala = (LinkSpanHelper.a)this.linkClickListener.get();
      if (locala != null) {
        locala.a(paramView, getURL());
      }
    }
    
    public void updateDrawState(TextPaint paramTextPaint)
    {
      super.updateDrawState(paramTextPaint);
      paramTextPaint.setUnderlineText(this.isShowClinkLineUnderLine);
      paramTextPaint.setColor(this.linkColor);
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(View paramView, String paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.internal.util.LinkSpanHelper
 * JD-Core Version:    0.7.0.1
 */