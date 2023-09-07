package c4;

public class a
{
  /* Error */
  public static com.android.calendar.common.event.schema.ThirdPartyEvent a(android.net.Uri paramUri)
    throws com.miui.calendar.insertevent.IllegalArgumentException
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +352 -> 353
    //   4: new 12	com/android/calendar/common/event/schema/ThirdPartyEvent
    //   7: dup
    //   8: invokespecial 16	com/android/calendar/common/event/schema/ThirdPartyEvent:<init>	()V
    //   11: astore_1
    //   12: aload_1
    //   13: aload_0
    //   14: ldc 18
    //   16: invokevirtual 24	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   19: invokevirtual 30	com/android/calendar/common/event/schema/Event:setTitle	(Ljava/lang/String;)V
    //   22: aload_1
    //   23: invokevirtual 34	com/android/calendar/common/event/schema/Event:getTitle	()Ljava/lang/String;
    //   26: invokestatic 40	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   29: ifne +314 -> 343
    //   32: aload_1
    //   33: aload_0
    //   34: ldc 42
    //   36: invokevirtual 24	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   39: invokevirtual 45	com/android/calendar/common/event/schema/Event:setLocation	(Ljava/lang/String;)V
    //   42: aload_1
    //   43: aload_0
    //   44: ldc 47
    //   46: invokevirtual 24	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   49: invokevirtual 50	com/android/calendar/common/event/schema/Event:setDescription	(Ljava/lang/String;)V
    //   52: aload_0
    //   53: ldc 52
    //   55: invokevirtual 24	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   58: astore_2
    //   59: aload_2
    //   60: invokestatic 40	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   63: ifne +14 -> 77
    //   66: aload_1
    //   67: invokevirtual 56	com/android/calendar/common/event/schema/Event:getEx	()Lcom/android/calendar/common/event/schema/EventEx;
    //   70: aload_2
    //   71: invokestatic 62	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   74: invokevirtual 68	com/android/calendar/common/event/schema/EventEx:setStart	(J)V
    //   77: aload_1
    //   78: invokevirtual 56	com/android/calendar/common/event/schema/Event:getEx	()Lcom/android/calendar/common/event/schema/EventEx;
    //   81: aload_0
    //   82: ldc 70
    //   84: invokevirtual 24	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   87: invokestatic 62	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   90: invokevirtual 73	com/android/calendar/common/event/schema/EventEx:setEnd	(J)V
    //   93: aload_0
    //   94: ldc 75
    //   96: invokevirtual 24	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   99: invokestatic 81	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   102: ifle +8 -> 110
    //   105: iconst_1
    //   106: istore_3
    //   107: goto +5 -> 112
    //   110: iconst_0
    //   111: istore_3
    //   112: aload_1
    //   113: iload_3
    //   114: invokevirtual 85	com/android/calendar/common/event/schema/Event:setAllDay	(Z)V
    //   117: aload_0
    //   118: ldc 87
    //   120: invokevirtual 24	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   123: astore_2
    //   124: aload_1
    //   125: invokevirtual 91	com/android/calendar/common/event/schema/Event:isAllDay	()Z
    //   128: ifeq +75 -> 203
    //   131: new 93	java/text/SimpleDateFormat
    //   134: astore 4
    //   136: aload 4
    //   138: ldc 95
    //   140: invokespecial 97	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   143: aload 4
    //   145: ldc 99
    //   147: invokestatic 105	java/util/TimeZone:getTimeZone	(Ljava/lang/String;)Ljava/util/TimeZone;
    //   150: invokevirtual 111	java/text/DateFormat:setTimeZone	(Ljava/util/TimeZone;)V
    //   153: aload 4
    //   155: aload_2
    //   156: invokevirtual 115	java/text/DateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   159: astore_2
    //   160: aload_1
    //   161: invokevirtual 56	com/android/calendar/common/event/schema/Event:getEx	()Lcom/android/calendar/common/event/schema/EventEx;
    //   164: aload_2
    //   165: invokevirtual 121	java/util/Date:getTime	()J
    //   168: invokevirtual 68	com/android/calendar/common/event/schema/EventEx:setStart	(J)V
    //   171: aload_1
    //   172: invokevirtual 56	com/android/calendar/common/event/schema/Event:getEx	()Lcom/android/calendar/common/event/schema/EventEx;
    //   175: aload_1
    //   176: invokevirtual 56	com/android/calendar/common/event/schema/Event:getEx	()Lcom/android/calendar/common/event/schema/EventEx;
    //   179: invokevirtual 124	com/android/calendar/common/event/schema/EventEx:getStart	()J
    //   182: ldc2_w 125
    //   185: ladd
    //   186: invokevirtual 73	com/android/calendar/common/event/schema/EventEx:setEnd	(J)V
    //   189: goto +58 -> 247
    //   192: astore_0
    //   193: new 8	com/miui/calendar/insertevent/IllegalArgumentException
    //   196: dup
    //   197: ldc 128
    //   199: invokespecial 129	com/miui/calendar/insertevent/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   202: athrow
    //   203: aload_1
    //   204: invokevirtual 56	com/android/calendar/common/event/schema/Event:getEx	()Lcom/android/calendar/common/event/schema/EventEx;
    //   207: invokevirtual 124	com/android/calendar/common/event/schema/EventEx:getStart	()J
    //   210: lconst_0
    //   211: lcmp
    //   212: ifle +110 -> 322
    //   215: aload_1
    //   216: invokevirtual 56	com/android/calendar/common/event/schema/Event:getEx	()Lcom/android/calendar/common/event/schema/EventEx;
    //   219: invokevirtual 132	com/android/calendar/common/event/schema/EventEx:getEnd	()J
    //   222: aload_1
    //   223: invokevirtual 56	com/android/calendar/common/event/schema/Event:getEx	()Lcom/android/calendar/common/event/schema/EventEx;
    //   226: invokevirtual 124	com/android/calendar/common/event/schema/EventEx:getStart	()J
    //   229: lcmp
    //   230: ifge +17 -> 247
    //   233: aload_1
    //   234: invokevirtual 56	com/android/calendar/common/event/schema/Event:getEx	()Lcom/android/calendar/common/event/schema/EventEx;
    //   237: aload_1
    //   238: invokevirtual 56	com/android/calendar/common/event/schema/Event:getEx	()Lcom/android/calendar/common/event/schema/EventEx;
    //   241: invokevirtual 124	com/android/calendar/common/event/schema/EventEx:getStart	()J
    //   244: invokevirtual 73	com/android/calendar/common/event/schema/EventEx:setEnd	(J)V
    //   247: aload_1
    //   248: aload_0
    //   249: ldc 134
    //   251: invokevirtual 24	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   254: invokevirtual 137	com/android/calendar/common/event/schema/ThirdPartyEvent:setUrl	(Ljava/lang/String;)V
    //   257: aload_1
    //   258: aload_0
    //   259: ldc 139
    //   261: invokevirtual 24	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   264: invokevirtual 142	com/android/calendar/common/event/schema/ThirdPartyEvent:setUrlText	(Ljava/lang/String;)V
    //   267: aload_1
    //   268: aload_0
    //   269: ldc 144
    //   271: invokevirtual 24	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   274: invokevirtual 147	com/android/calendar/common/event/schema/ThirdPartyEvent:setPackageName	(Ljava/lang/String;)V
    //   277: aload_1
    //   278: invokevirtual 150	com/android/calendar/common/event/schema/ThirdPartyEvent:getUrl	()Ljava/lang/String;
    //   281: invokestatic 40	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   284: ifne +26 -> 310
    //   287: aload_1
    //   288: invokevirtual 153	com/android/calendar/common/event/schema/ThirdPartyEvent:getUrlText	()Ljava/lang/String;
    //   291: invokestatic 40	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   294: ifne +6 -> 300
    //   297: goto +13 -> 310
    //   300: new 8	com/miui/calendar/insertevent/IllegalArgumentException
    //   303: dup
    //   304: ldc 155
    //   306: invokespecial 129	com/miui/calendar/insertevent/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   309: athrow
    //   310: aload_1
    //   311: aload_0
    //   312: ldc 157
    //   314: invokevirtual 24	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   317: invokevirtual 160	com/android/calendar/common/event/schema/ThirdPartyEvent:setExtend	(Ljava/lang/String;)V
    //   320: aload_1
    //   321: areturn
    //   322: new 8	com/miui/calendar/insertevent/IllegalArgumentException
    //   325: dup
    //   326: ldc 162
    //   328: invokespecial 129	com/miui/calendar/insertevent/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   331: athrow
    //   332: astore_0
    //   333: new 8	com/miui/calendar/insertevent/IllegalArgumentException
    //   336: dup
    //   337: ldc 164
    //   339: invokespecial 129	com/miui/calendar/insertevent/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   342: athrow
    //   343: new 8	com/miui/calendar/insertevent/IllegalArgumentException
    //   346: dup
    //   347: ldc 166
    //   349: invokespecial 129	com/miui/calendar/insertevent/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   352: athrow
    //   353: new 8	com/miui/calendar/insertevent/IllegalArgumentException
    //   356: dup
    //   357: ldc 168
    //   359: invokespecial 129	com/miui/calendar/insertevent/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   362: athrow
    //   363: astore_2
    //   364: goto -271 -> 93
    //   367: astore_2
    //   368: goto -251 -> 117
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	371	0	paramUri	android.net.Uri
    //   11	310	1	localThirdPartyEvent	com.android.calendar.common.event.schema.ThirdPartyEvent
    //   58	107	2	localObject	Object
    //   363	1	2	localException1	java.lang.Exception
    //   367	1	2	localException2	java.lang.Exception
    //   106	8	3	bool	boolean
    //   134	20	4	localSimpleDateFormat	java.text.SimpleDateFormat
    // Exception table:
    //   from	to	target	type
    //   131	160	192	java/lang/Exception
    //   52	77	332	java/lang/Exception
    //   77	93	363	java/lang/Exception
    //   93	105	367	java/lang/Exception
    //   112	117	367	java/lang/Exception
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c4.a
 * JD-Core Version:    0.7.0.1
 */