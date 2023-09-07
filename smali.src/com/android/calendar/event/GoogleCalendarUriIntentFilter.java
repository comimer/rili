package com.android.calendar.event;

import android.app.Activity;
import android.net.Uri;
import android.util.Base64;
import android.util.Log;

public class GoogleCalendarUriIntentFilter
  extends Activity
{
  private static final String[] a = { "_id", "dtstart", "dtend", "duration" };
  
  private String[] a(Uri paramUri)
  {
    try
    {
      Object localObject1 = paramUri.getQueryParameter("eid");
      if (localObject1 == null) {
        return null;
      }
      Object localObject2 = Base64.decode((String)localObject1, 0);
      for (int i = 0; i < localObject2.length; i++) {
        if (localObject2[i] == 32)
        {
          int j = localObject2.length - i - 1;
          if ((i == 0) || (j < 3)) {
            break;
          }
          if (localObject2[(localObject2.length - 2)] == 64)
          {
            j--;
            int k = localObject2[(localObject2.length - 1)];
            if (k != 109)
            {
              if (k != 118) {
                switch (k)
                {
                default: 
                  localObject1 = new java/lang/StringBuilder;
                  ((StringBuilder)localObject1).<init>();
                  ((StringBuilder)localObject1).append("Unexpected one letter domain: ");
                  ((StringBuilder)localObject1).append(localObject2[(localObject2.length - 1)]);
                  Log.wtf("GoogleCalendarUriIntentFilter", ((StringBuilder)localObject1).toString());
                  localObject1 = "%";
                  break;
                case 105: 
                  localObject1 = "import.calendar.google.com";
                  break;
                case 104: 
                  localObject1 = "holiday.calendar.google.com";
                  break;
                case 103: 
                  localObject1 = "group.calendar.google.com";
                  break;
                }
              } else {
                localObject1 = "group.v.calendar.google.com";
              }
            }
            else {
              localObject1 = "gmail.com";
            }
          }
          else
          {
            localObject1 = null;
          }
          String str1 = new java/lang/String;
          str1.<init>((byte[])localObject2, 0, i);
          String str2 = new java/lang/String;
          str2.<init>((byte[])localObject2, i + 1, j);
          localObject2 = str2;
          if (localObject1 != null)
          {
            localObject2 = new java/lang/StringBuilder;
            ((StringBuilder)localObject2).<init>();
            ((StringBuilder)localObject2).append(str2);
            ((StringBuilder)localObject2).append((String)localObject1);
            localObject2 = ((StringBuilder)localObject2).toString();
          }
          return new String[] { str1, localObject2 };
        }
      }
      StringBuilder localStringBuilder;
      return null;
    }
    catch (RuntimeException localRuntimeException)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("Punting malformed URI ");
      localStringBuilder.append(paramUri);
      Log.w("GoogleCalendarUriIntentFilter", localStringBuilder.toString());
    }
  }
  
  /* Error */
  protected void onCreate(android.os.Bundle paramBundle)
  {
    // Byte code:
    //   0: getstatic 102	android/os/Build$VERSION:SDK_INT	I
    //   3: istore_2
    //   4: iconst_1
    //   5: istore_3
    //   6: iload_2
    //   7: bipush 26
    //   9: if_icmpeq +8 -> 17
    //   12: aload_0
    //   13: iconst_1
    //   14: invokevirtual 106	android/app/Activity:setRequestedOrientation	(I)V
    //   17: aload_0
    //   18: aload_1
    //   19: invokespecial 108	android/app/Activity:onCreate	(Landroid/os/Bundle;)V
    //   22: aload_0
    //   23: invokevirtual 112	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   26: astore 4
    //   28: aload 4
    //   30: ifnull +487 -> 517
    //   33: aload 4
    //   35: invokevirtual 118	android/content/Intent:getData	()Landroid/net/Uri;
    //   38: astore_1
    //   39: aload_1
    //   40: ifnull +470 -> 510
    //   43: aload_0
    //   44: aload_1
    //   45: invokespecial 120	com/android/calendar/event/GoogleCalendarUriIntentFilter:a	(Landroid/net/Uri;)[Ljava/lang/String;
    //   48: astore 5
    //   50: aload 5
    //   52: ifnull +458 -> 510
    //   55: new 43	java/lang/StringBuilder
    //   58: dup
    //   59: invokespecial 44	java/lang/StringBuilder:<init>	()V
    //   62: astore 6
    //   64: aload 6
    //   66: ldc 122
    //   68: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: pop
    //   72: iconst_0
    //   73: istore 7
    //   75: aload 6
    //   77: aload 5
    //   79: iconst_0
    //   80: aaload
    //   81: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: pop
    //   85: aload 6
    //   87: ldc 124
    //   89: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: pop
    //   93: aload 6
    //   95: ldc 126
    //   97: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: pop
    //   101: aload 6
    //   103: ldc 128
    //   105: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: pop
    //   109: aload 6
    //   111: aload 5
    //   113: iconst_1
    //   114: aaload
    //   115: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   118: pop
    //   119: aload 6
    //   121: ldc 130
    //   123: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: pop
    //   127: aload 6
    //   129: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   132: astore 6
    //   134: aload_0
    //   135: invokevirtual 136	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   138: getstatic 142	android/provider/CalendarContract$Events:CONTENT_URI	Landroid/net/Uri;
    //   141: getstatic 20	com/android/calendar/event/GoogleCalendarUriIntentFilter:a	[Ljava/lang/String;
    //   144: aload 6
    //   146: aconst_null
    //   147: ldc 144
    //   149: invokevirtual 150	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   152: astore 6
    //   154: aload 6
    //   156: ifnull +342 -> 498
    //   159: aload 6
    //   161: invokeinterface 156 1 0
    //   166: ifle +332 -> 498
    //   169: aload 6
    //   171: invokeinterface 156 1 0
    //   176: iconst_1
    //   177: if_icmple +70 -> 247
    //   180: new 43	java/lang/StringBuilder
    //   183: dup
    //   184: invokespecial 44	java/lang/StringBuilder:<init>	()V
    //   187: astore 8
    //   189: aload 8
    //   191: ldc 158
    //   193: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: pop
    //   197: aload 8
    //   199: aload 6
    //   201: invokeinterface 156 1 0
    //   206: invokevirtual 53	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   209: pop
    //   210: aload 8
    //   212: ldc 160
    //   214: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   217: pop
    //   218: aload 8
    //   220: aload 5
    //   222: iconst_0
    //   223: aaload
    //   224: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   227: pop
    //   228: aload 8
    //   230: ldc 162
    //   232: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   235: pop
    //   236: ldc 55
    //   238: aload 8
    //   240: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   243: invokestatic 165	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   246: pop
    //   247: aload 6
    //   249: invokeinterface 169 1 0
    //   254: ifeq +244 -> 498
    //   257: aload 6
    //   259: iconst_0
    //   260: invokeinterface 173 2 0
    //   265: lstore 9
    //   267: aload 6
    //   269: iconst_1
    //   270: invokeinterface 173 2 0
    //   275: lstore 11
    //   277: aload 6
    //   279: iconst_2
    //   280: invokeinterface 173 2 0
    //   285: lstore 13
    //   287: lload 13
    //   289: lstore 15
    //   291: lload 13
    //   293: lconst_0
    //   294: lcmp
    //   295: ifne +70 -> 365
    //   298: aload 6
    //   300: iconst_3
    //   301: invokeinterface 177 2 0
    //   306: astore 5
    //   308: aload 5
    //   310: invokestatic 183	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   313: ifeq +6 -> 319
    //   316: goto -69 -> 247
    //   319: new 185	com/miui/calendar/util/calendarcommon2/a
    //   322: astore 8
    //   324: aload 8
    //   326: invokespecial 186	com/miui/calendar/util/calendarcommon2/a:<init>	()V
    //   329: aload 8
    //   331: aload 5
    //   333: invokevirtual 190	com/miui/calendar/util/calendarcommon2/a:b	(Ljava/lang/String;)V
    //   336: aload 8
    //   338: invokevirtual 193	com/miui/calendar/util/calendarcommon2/a:a	()J
    //   341: lstore 15
    //   343: lload 15
    //   345: lload 11
    //   347: ladd
    //   348: lstore 13
    //   350: lload 13
    //   352: lstore 15
    //   354: lload 13
    //   356: lload 11
    //   358: lcmp
    //   359: ifge +6 -> 365
    //   362: goto -115 -> 247
    //   365: aload 6
    //   367: invokeinterface 196 1 0
    //   372: iload 7
    //   374: istore_2
    //   375: ldc 198
    //   377: aload_1
    //   378: ldc 200
    //   380: invokevirtual 35	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   383: invokevirtual 204	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   386: ifeq +46 -> 432
    //   389: aload_1
    //   390: ldc 206
    //   392: invokevirtual 35	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   395: invokestatic 212	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   398: istore 17
    //   400: iload_3
    //   401: istore_2
    //   402: iload 17
    //   404: iconst_1
    //   405: if_icmpeq +27 -> 432
    //   408: iload 17
    //   410: iconst_2
    //   411: if_icmpeq +19 -> 430
    //   414: iload 17
    //   416: iconst_3
    //   417: if_icmpeq +8 -> 425
    //   420: iconst_0
    //   421: istore_2
    //   422: goto +10 -> 432
    //   425: iconst_4
    //   426: istore_2
    //   427: goto +5 -> 432
    //   430: iconst_2
    //   431: istore_2
    //   432: new 114	android/content/Intent
    //   435: dup
    //   436: ldc 214
    //   438: getstatic 142	android/provider/CalendarContract$Events:CONTENT_URI	Landroid/net/Uri;
    //   441: lload 9
    //   443: invokestatic 220	android/content/ContentUris:withAppendedId	(Landroid/net/Uri;J)Landroid/net/Uri;
    //   446: invokespecial 223	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   449: astore_1
    //   450: aload_1
    //   451: aload_0
    //   452: ldc 225
    //   454: invokevirtual 229	android/content/Intent:setClass	(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    //   457: pop
    //   458: aload_1
    //   459: ldc 231
    //   461: lload 11
    //   463: invokevirtual 235	android/content/Intent:putExtra	(Ljava/lang/String;J)Landroid/content/Intent;
    //   466: pop
    //   467: aload_1
    //   468: ldc 237
    //   470: lload 15
    //   472: invokevirtual 235	android/content/Intent:putExtra	(Ljava/lang/String;J)Landroid/content/Intent;
    //   475: pop
    //   476: iload_2
    //   477: ifeq +11 -> 488
    //   480: aload_1
    //   481: ldc 239
    //   483: iload_2
    //   484: invokevirtual 242	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   487: pop
    //   488: aload_0
    //   489: aload_1
    //   490: invokevirtual 246	android/content/Context:startActivity	(Landroid/content/Intent;)V
    //   493: aload_0
    //   494: invokevirtual 249	android/app/Activity:finish	()V
    //   497: return
    //   498: aload 6
    //   500: ifnull +10 -> 510
    //   503: aload 6
    //   505: invokeinterface 196 1 0
    //   510: aload_0
    //   511: aload 4
    //   513: invokevirtual 253	android/app/Activity:startNextMatchingActivity	(Landroid/content/Intent;)Z
    //   516: pop
    //   517: aload_0
    //   518: invokevirtual 249	android/app/Activity:finish	()V
    //   521: return
    //   522: astore 5
    //   524: goto -277 -> 247
    //   527: astore_1
    //   528: iload 7
    //   530: istore_2
    //   531: goto -99 -> 432
    //   534: astore_1
    //   535: goto -18 -> 517
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	538	0	this	GoogleCalendarUriIntentFilter
    //   0	538	1	paramBundle	android.os.Bundle
    //   3	528	2	i	int
    //   5	396	3	j	int
    //   26	486	4	localIntent	android.content.Intent
    //   48	284	5	localObject1	Object
    //   522	1	5	localDateException	com.miui.calendar.util.calendarcommon2.DateException
    //   62	442	6	localObject2	Object
    //   73	456	7	k	int
    //   187	150	8	localObject3	Object
    //   265	177	9	l1	long
    //   275	187	11	l2	long
    //   285	70	13	l3	long
    //   289	182	15	l4	long
    //   398	20	17	m	int
    // Exception table:
    //   from	to	target	type
    //   319	343	522	com/miui/calendar/util/calendarcommon2/DateException
    //   389	400	527	java/lang/NumberFormatException
    //   510	517	534	android/content/ActivityNotFoundException
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.GoogleCalendarUriIntentFilter
 * JD-Core Version:    0.7.0.1
 */