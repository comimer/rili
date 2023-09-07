package com.xiaomi.accountsdk.account.serverpassthrougherror.data;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.View;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import u5.a;
import u5.c;

public class ErrorHandleInfo
{
  public final HandleType a;
  public final String b;
  public final String c;
  public final CharSequence d;
  public final ButtonInfo e;
  public final ButtonInfo f;
  public final ButtonInfo g;
  
  public ErrorHandleInfo(Activity paramActivity, PassThroughErrorInfo paramPassThroughErrorInfo1, PassThroughErrorInfo paramPassThroughErrorInfo2)
  {
    Object localObject1 = null;
    Object localObject2;
    if (paramPassThroughErrorInfo1 != null) {
      localObject2 = paramPassThroughErrorInfo1.getTitle();
    } else {
      localObject2 = null;
    }
    Object localObject3;
    if (paramPassThroughErrorInfo2 != null) {
      localObject3 = paramPassThroughErrorInfo2.getTitle();
    } else {
      localObject3 = null;
    }
    if (!TextUtils.isEmpty((CharSequence)localObject2)) {
      localObject4 = localObject2;
    } else {
      localObject4 = localObject3;
    }
    this.b = ((String)localObject4);
    if (paramPassThroughErrorInfo1 != null) {
      localObject2 = paramPassThroughErrorInfo1.getTips();
    } else {
      localObject2 = null;
    }
    if (paramPassThroughErrorInfo2 != null) {
      localObject3 = paramPassThroughErrorInfo2.getTips();
    } else {
      localObject3 = null;
    }
    Object localObject5;
    if (!TextUtils.isEmpty((CharSequence)localObject2)) {
      localObject5 = localObject2;
    } else {
      localObject5 = localObject3;
    }
    this.c = localObject5;
    if ((!TextUtils.isEmpty((CharSequence)localObject4)) && (!TextUtils.isEmpty(localObject5))) {
      this.a = HandleType.DIALOG;
    } else if (!TextUtils.isEmpty((CharSequence)localObject2)) {
      this.a = HandleType.DIALOG;
    } else if (!TextUtils.isEmpty((CharSequence)localObject3)) {
      this.a = HandleType.TOAST;
    } else {
      this.a = HandleType.NONE;
    }
    if (!TextUtils.isEmpty(localObject5)) {
      localObject2 = b(paramActivity, localObject5);
    } else {
      localObject2 = "";
    }
    this.d = ((CharSequence)localObject2);
    if (paramPassThroughErrorInfo1 != null) {
      localObject2 = paramPassThroughErrorInfo1.getNeutralButtonInfo();
    } else {
      localObject2 = null;
    }
    this.f = ((ButtonInfo)localObject2);
    if ((localObject2 != null) && (paramPassThroughErrorInfo2 != null)) {
      ((ButtonInfo)localObject2).coverEmptyValueByLocalInfo(paramPassThroughErrorInfo2.getNeutralButtonInfo());
    }
    if (paramPassThroughErrorInfo1 != null) {
      localObject3 = paramPassThroughErrorInfo1.getPositiveButtonInfo();
    } else {
      localObject3 = null;
    }
    this.g = ((ButtonInfo)localObject3);
    if ((localObject3 != null) && (paramPassThroughErrorInfo2 != null)) {
      ((ButtonInfo)localObject3).coverEmptyValueByLocalInfo(paramPassThroughErrorInfo2.getPositiveButtonInfo());
    }
    Object localObject4 = localObject1;
    if (paramPassThroughErrorInfo1 != null) {
      localObject4 = paramPassThroughErrorInfo1.getNegativeButtonInfo();
    }
    if ((this.a == HandleType.DIALOG) && (localObject4 == null) && (localObject2 == null) && (localObject3 == null)) {
      this.e = new ButtonInfo(paramActivity.getString(17039370), null, null, null, null);
    } else {
      this.e = ((ButtonInfo)localObject4);
    }
    paramActivity = this.e;
    if ((paramActivity != null) && (paramPassThroughErrorInfo2 != null)) {
      paramActivity.coverEmptyValueByLocalInfo(paramPassThroughErrorInfo2.getNegativeButtonInfo());
    }
  }
  
  private CharSequence b(final Activity paramActivity, String paramString)
  {
    final Spanned localSpanned = Html.fromHtml(paramString);
    paramString = new SpannableStringBuilder(localSpanned);
    int i = localSpanned.length();
    int j = 0;
    URLSpan[] arrayOfURLSpan = (URLSpan[])paramString.getSpans(0, i, URLSpan.class);
    i = arrayOfURLSpan.length;
    while (j < i)
    {
      localSpanned = arrayOfURLSpan[j];
      paramString.setSpan(new a(paramActivity, localSpanned), paramString.getSpanStart(localSpanned), paramString.getSpanEnd(localSpanned), paramString.getSpanFlags(localSpanned));
      paramString.removeSpan(localSpanned);
      j++;
    }
    return paramString;
  }
  
  private ButtonInfo c(String paramString)
  {
    boolean bool = TextUtils.isEmpty(paramString);
    String str1 = "";
    Object localObject;
    if (bool) {
      localObject = "";
    } else {
      localObject = paramString;
    }
    HashMap localHashMap = new HashMap();
    Uri localUri = Uri.parse(paramString);
    paramString = str1;
    if ("native.jump".equals(localUri.getHost()))
    {
      String str2 = localUri.getQueryParameter("extra_web_url");
      str1 = localUri.getQueryParameter("native_page");
      Iterator localIterator = localUri.getQueryParameterNames().iterator();
      for (;;)
      {
        localObject = str2;
        paramString = str1;
        if (!localIterator.hasNext()) {
          break;
        }
        paramString = (String)localIterator.next();
        localHashMap.put(paramString, localUri.getQueryParameter(paramString));
      }
    }
    return new ButtonInfo.b().d(paramString).b((String)localObject).e(localHashMap).a();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ErrorHandleInfo{handleType=");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", title='");
    localStringBuilder.append(this.b);
    localStringBuilder.append('\'');
    localStringBuilder.append(", msgContent='");
    localStringBuilder.append(this.c);
    localStringBuilder.append('\'');
    localStringBuilder.append(", negativeButtonInfo=");
    localStringBuilder.append(this.e);
    localStringBuilder.append(", neutralButtonInfo=");
    localStringBuilder.append(this.f);
    localStringBuilder.append(", positiveButtonInfo=");
    localStringBuilder.append(this.g);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public static enum HandleType
  {
    static
    {
      HandleType localHandleType1 = new HandleType("TOAST", 0);
      TOAST = localHandleType1;
      HandleType localHandleType2 = new HandleType("DIALOG", 1);
      DIALOG = localHandleType2;
      HandleType localHandleType3 = new HandleType("NONE", 2);
      NONE = localHandleType3;
      $VALUES = new HandleType[] { localHandleType1, localHandleType2, localHandleType3 };
    }
    
    private HandleType() {}
  }
  
  class a
    extends ClickableSpan
  {
    a(Activity paramActivity, URLSpan paramURLSpan) {}
    
    public void onClick(View paramView)
    {
      c.a().a(paramActivity, ErrorHandleInfo.a(ErrorHandleInfo.this, localSpanned.getURL()));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.serverpassthrougherror.data.ErrorHandleInfo
 * JD-Core Version:    0.7.0.1
 */