package com.miui.calendar.holiday;

import android.view.View;
import com.android.calendar.common.b;
import java.util.Map;
import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/holiday/HolidayDetailActivity;", "Lcom/android/calendar/common/b;", "Landroid/os/Bundle;", "savedInstanceState", "Lkotlin/u;", "onCreate", "<init>", "()V", "c", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class HolidayDetailActivity
  extends b
{
  public static final a c = new a(null);
  public Map<Integer, View> b;
  
  /* Error */
  protected void onCreate(android.os.Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 49	com/android/calendar/common/b:onCreate	(Landroid/os/Bundle;)V
    //   5: aload_0
    //   6: invokestatic 55	com/miui/calendar/util/y:l	(Landroid/content/Context;)Z
    //   9: ifeq +197 -> 206
    //   12: aload_0
    //   13: invokevirtual 61	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   16: astore_1
    //   17: aload_1
    //   18: ifnull +159 -> 177
    //   21: aload_1
    //   22: invokevirtual 67	android/content/Intent:getData	()Landroid/net/Uri;
    //   25: astore_2
    //   26: aload_2
    //   27: ifnull +150 -> 177
    //   30: aload_2
    //   31: ldc 69
    //   33: invokevirtual 75	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   36: astore_1
    //   37: aload_2
    //   38: ldc 77
    //   40: invokevirtual 75	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   43: astore_3
    //   44: aload_2
    //   45: ldc 79
    //   47: invokevirtual 75	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   50: astore 4
    //   52: aload_2
    //   53: ldc 81
    //   55: invokevirtual 75	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   58: astore_2
    //   59: aload_0
    //   60: aload_0
    //   61: aload_3
    //   62: invokestatic 85	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   65: invokevirtual 89	android/net/Uri:buildUpon	()Landroid/net/Uri$Builder;
    //   68: ldc 79
    //   70: aload 4
    //   72: invokevirtual 95	android/net/Uri$Builder:appendQueryParameter	(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    //   75: ldc 97
    //   77: ldc 99
    //   79: invokevirtual 95	android/net/Uri$Builder:appendQueryParameter	(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    //   82: ldc 101
    //   84: ldc 99
    //   86: invokevirtual 95	android/net/Uri$Builder:appendQueryParameter	(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    //   89: ldc 103
    //   91: aload_1
    //   92: invokevirtual 95	android/net/Uri$Builder:appendQueryParameter	(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    //   95: ldc 81
    //   97: aload_2
    //   98: invokevirtual 95	android/net/Uri$Builder:appendQueryParameter	(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    //   101: ldc 105
    //   103: ldc 99
    //   105: invokevirtual 95	android/net/Uri$Builder:appendQueryParameter	(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    //   108: invokevirtual 108	android/net/Uri$Builder:build	()Landroid/net/Uri;
    //   111: invokevirtual 112	android/net/Uri:toString	()Ljava/lang/String;
    //   114: invokestatic 118	com/miui/calendar/web/d:d	(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    //   117: invokevirtual 124	android/content/Context:startActivity	(Landroid/content/Intent;)V
    //   120: new 126	java/lang/StringBuilder
    //   123: astore_2
    //   124: aload_2
    //   125: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   128: aload_2
    //   129: ldc 129
    //   131: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: pop
    //   135: aload_2
    //   136: aload_3
    //   137: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: pop
    //   141: aload_2
    //   142: ldc 135
    //   144: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: pop
    //   148: aload_2
    //   149: aload_1
    //   150: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   153: pop
    //   154: aload_2
    //   155: ldc 137
    //   157: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   160: pop
    //   161: aload_2
    //   162: aload 4
    //   164: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: pop
    //   168: ldc 139
    //   170: aload_2
    //   171: invokevirtual 140	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   174: invokestatic 145	com/miui/calendar/util/z:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   177: aload_0
    //   178: invokevirtual 150	miuix/appcompat/app/m:finish	()V
    //   181: goto +25 -> 206
    //   184: astore_1
    //   185: goto +15 -> 200
    //   188: astore_1
    //   189: ldc 139
    //   191: ldc 152
    //   193: aload_1
    //   194: invokestatic 155	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   197: goto -20 -> 177
    //   200: aload_0
    //   201: invokevirtual 150	miuix/appcompat/app/m:finish	()V
    //   204: aload_1
    //   205: athrow
    //   206: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	207	0	this	HolidayDetailActivity
    //   0	207	1	paramBundle	android.os.Bundle
    //   25	146	2	localObject	Object
    //   43	94	3	str1	java.lang.String
    //   50	113	4	str2	java.lang.String
    // Exception table:
    //   from	to	target	type
    //   12	17	184	finally
    //   21	26	184	finally
    //   30	177	184	finally
    //   189	197	184	finally
    //   12	17	188	java/lang/Exception
    //   21	26	188	java/lang/Exception
    //   30	177	188	java/lang/Exception
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/holiday/HolidayDetailActivity$a;", "", "", "PARAM_HOLIDAY_ID", "Ljava/lang/String;", "PARAM_MILLIS", "PARAM_NAME", "PARAM_URL", "TAG", "URL", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.holiday.HolidayDetailActivity
 * JD-Core Version:    0.7.0.1
 */