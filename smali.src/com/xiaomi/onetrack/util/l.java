package com.xiaomi.onetrack.util;

import android.text.TextUtils;
import android.util.LruCache;

final class l
  extends LruCache<String, k.a>
{
  l(int paramInt)
  {
    super(paramInt);
  }
  
  protected int a(String paramString, k.a parama)
  {
    int i;
    if ((parama != null) && (!TextUtils.isEmpty(parama.a))) {
      i = parama.a.length();
    } else {
      i = 0;
    }
    return i;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.l
 * JD-Core Version:    0.7.0.1
 */