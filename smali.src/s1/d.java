package s1;

import android.content.Context;
import android.provider.CalendarContract.ExtendedProperties;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
import t1.c;
import t1.c.a;
import t1.c.b;

public class d
{
  public static String a(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("(");
    for (int i = 0; i < paramInt; i++)
    {
      if (i != 0) {
        localStringBuilder.append(",");
      }
      localStringBuilder.append("?");
    }
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  public static String b(int paramInt)
  {
    String str;
    switch (paramInt)
    {
    case 4: 
    case 5: 
    case 6: 
    case 10: 
    default: 
      str = "agenda_info";
      break;
    case 17: 
      str = "movie_info";
      break;
    case 16: 
      str = "loan_info";
      break;
    case 15: 
      str = "hotel_info";
      break;
    case 14: 
      str = "gas_bill_info";
      break;
    case 13: 
      str = "electricity_bill_info";
      break;
    case 9: 
      str = "key_countdown_info";
      break;
    case 8: 
      str = "key_anniversary_info";
      break;
    case 7: 
      str = "key_birthday_info";
      break;
    case 3: 
      str = "credit_info";
      break;
    case 2: 
    case 11: 
    case 12: 
      str = "travel_info";
    }
    return str;
  }
  
  public static HashMap<Long, String> c(Context paramContext, List<Long> paramList, String paramString)
  {
    HashMap localHashMap = new HashMap();
    if (paramContext == null) {
      return localHashMap;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("event_id IN ");
    ((StringBuilder)localObject).append(a(paramList.size()));
    ((StringBuilder)localObject).append(" AND ");
    ((StringBuilder)localObject).append("name");
    ((StringBuilder)localObject).append("=?");
    localObject = ((StringBuilder)localObject).toString();
    String[] arrayOfString = new String[paramList.size() + 1];
    for (int i = 0; i < paramList.size(); i++) {
      arrayOfString[i] = String.valueOf(paramList.get(i));
    }
    arrayOfString[paramList.size()] = paramString;
    paramList = c.b(paramContext.getApplicationContext()).m(CalendarContract.ExtendedProperties.CONTENT_URI).k((String)localObject).i(arrayOfString).j(new String[] { "event_id", "value" }).l(new Class[] { Long.class, String.class }).f().iterator();
    while (paramList.hasNext())
    {
      paramContext = (c.b)paramList.next();
      localHashMap.put(paramContext.d(0), paramContext.b(1));
    }
    return localHashMap;
  }
  
  public static HashMap<Long, String> d(Context paramContext, List<Long> paramList, String[] paramArrayOfString)
  {
    HashMap localHashMap = new HashMap();
    if (paramContext == null) {
      return localHashMap;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("event_id IN ");
    ((StringBuilder)localObject).append(a(paramList.size()));
    ((StringBuilder)localObject).append(" AND ");
    ((StringBuilder)localObject).append("name");
    ((StringBuilder)localObject).append(" IN ");
    ((StringBuilder)localObject).append(a(paramArrayOfString.length));
    String str = ((StringBuilder)localObject).toString();
    localObject = new String[paramList.size() + paramArrayOfString.length];
    for (int i = 0; i < paramList.size(); i++) {
      localObject[i] = String.valueOf(paramList.get(i));
    }
    for (i = 0; i < paramArrayOfString.length; i++) {
      localObject[(paramList.size() + i)] = paramArrayOfString[i];
    }
    paramList = c.b(paramContext.getApplicationContext()).m(CalendarContract.ExtendedProperties.CONTENT_URI).k(str).i((String[])localObject).j(new String[] { "event_id", "value" }).l(new Class[] { Long.class, String.class }).f().iterator();
    while (paramList.hasNext())
    {
      paramContext = (c.b)paramList.next();
      localHashMap.put(paramContext.d(0), paramContext.b(1));
    }
    return localHashMap;
  }
  
  /* Error */
  public static JSONObject e(Context paramContext, long paramLong, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 173	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore 4
    //   6: getstatic 100	android/provider/CalendarContract$ExtendedProperties:CONTENT_URI	Landroid/net/Uri;
    //   9: astore_0
    //   10: iconst_0
    //   11: istore 5
    //   13: aload 4
    //   15: aload_0
    //   16: iconst_4
    //   17: anewarray 75	java/lang/String
    //   20: dup
    //   21: iconst_0
    //   22: ldc 175
    //   24: aastore
    //   25: dup
    //   26: iconst_1
    //   27: ldc 114
    //   29: aastore
    //   30: dup
    //   31: iconst_2
    //   32: ldc 71
    //   34: aastore
    //   35: dup
    //   36: iconst_3
    //   37: ldc 116
    //   39: aastore
    //   40: ldc 177
    //   42: iconst_2
    //   43: anewarray 75	java/lang/String
    //   46: dup
    //   47: iconst_0
    //   48: lload_1
    //   49: invokestatic 180	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   52: aastore
    //   53: dup
    //   54: iconst_1
    //   55: aload_3
    //   56: aastore
    //   57: aconst_null
    //   58: invokevirtual 186	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   61: astore_0
    //   62: aload_0
    //   63: ifnull +186 -> 249
    //   66: aload_0
    //   67: invokeinterface 191 1 0
    //   72: ifeq +114 -> 186
    //   75: aload_0
    //   76: invokeinterface 194 1 0
    //   81: iconst_1
    //   82: if_icmpeq +38 -> 120
    //   85: new 8	java/lang/StringBuilder
    //   88: astore_3
    //   89: aload_3
    //   90: invokespecial 12	java/lang/StringBuilder:<init>	()V
    //   93: aload_3
    //   94: ldc 196
    //   96: invokevirtual 18	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: pop
    //   100: aload_3
    //   101: aload_0
    //   102: invokeinterface 194 1 0
    //   107: invokevirtual 199	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   110: pop
    //   111: ldc 201
    //   113: aload_3
    //   114: invokevirtual 28	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   117: invokestatic 206	t1/b:f	(Ljava/lang/String;Ljava/lang/String;)V
    //   120: new 208	org/json/JSONObject
    //   123: astore_3
    //   124: aload_3
    //   125: invokespecial 209	org/json/JSONObject:<init>	()V
    //   128: iload 5
    //   130: aload_0
    //   131: invokeinterface 212 1 0
    //   136: if_icmpge +30 -> 166
    //   139: aload_3
    //   140: aload_0
    //   141: iload 5
    //   143: invokeinterface 215 2 0
    //   148: aload_0
    //   149: iload 5
    //   151: invokeinterface 218 2 0
    //   156: invokevirtual 221	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   159: pop
    //   160: iinc 5 1
    //   163: goto -35 -> 128
    //   166: aload_0
    //   167: invokeinterface 224 1 0
    //   172: goto +12 -> 184
    //   175: astore_0
    //   176: ldc 201
    //   178: ldc 226
    //   180: aload_0
    //   181: invokestatic 229	t1/b:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   184: aload_3
    //   185: areturn
    //   186: aload_0
    //   187: invokeinterface 224 1 0
    //   192: goto +57 -> 249
    //   195: astore_0
    //   196: ldc 201
    //   198: ldc 226
    //   200: aload_0
    //   201: invokestatic 229	t1/b:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   204: goto +45 -> 249
    //   207: astore_3
    //   208: goto +21 -> 229
    //   211: astore_3
    //   212: ldc 201
    //   214: ldc 226
    //   216: aload_3
    //   217: invokestatic 229	t1/b:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   220: aload_0
    //   221: invokeinterface 224 1 0
    //   226: goto +23 -> 249
    //   229: aload_0
    //   230: invokeinterface 224 1 0
    //   235: goto +12 -> 247
    //   238: astore_0
    //   239: ldc 201
    //   241: ldc 226
    //   243: aload_0
    //   244: invokestatic 229	t1/b:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   247: aload_3
    //   248: athrow
    //   249: ldc 201
    //   251: ldc 231
    //   253: invokestatic 233	t1/b:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   256: aconst_null
    //   257: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	258	0	paramContext	Context
    //   0	258	1	paramLong	long
    //   0	258	3	paramString	String
    //   4	10	4	localContentResolver	android.content.ContentResolver
    //   11	150	5	i	int
    // Exception table:
    //   from	to	target	type
    //   166	172	175	java/lang/Exception
    //   186	192	195	java/lang/Exception
    //   220	226	195	java/lang/Exception
    //   66	120	207	finally
    //   120	128	207	finally
    //   128	160	207	finally
    //   212	220	207	finally
    //   66	120	211	java/lang/Exception
    //   120	128	211	java/lang/Exception
    //   128	160	211	java/lang/Exception
    //   229	235	238	java/lang/Exception
  }
  
  public static String f(Context paramContext, long paramLong, String paramString)
  {
    JSONObject localJSONObject = e(paramContext.getApplicationContext(), paramLong, paramString);
    paramString = null;
    if (localJSONObject != null) {
      try
      {
        paramContext = new org/json/JSONObject;
        paramContext.<init>(localJSONObject.optString("value"));
      }
      catch (Exception paramContext)
      {
        paramContext.printStackTrace();
      }
    } else {
      paramContext = null;
    }
    if (paramContext != null) {
      paramString = paramContext.toString();
    }
    return paramString;
  }
  
  public static HashMap<String, String> g(Context paramContext, long paramLong)
  {
    HashMap localHashMap = new HashMap();
    if (paramContext == null) {
      return localHashMap;
    }
    paramContext = c.b(paramContext.getApplicationContext()).m(CalendarContract.ExtendedProperties.CONTENT_URI).j(new String[] { "name", "value" }).l(new Class[] { String.class, String.class }).k("event_id=?").i(new String[] { String.valueOf(paramLong) }).f();
    if ((paramContext != null) && (!paramContext.isEmpty()))
    {
      Iterator localIterator = paramContext.iterator();
      while (localIterator.hasNext())
      {
        paramContext = (c.b)localIterator.next();
        localHashMap.put(paramContext.b(0), paramContext.b(1));
      }
    }
    return localHashMap;
  }
  
  public static String h(Context paramContext, long paramLong, String paramString)
  {
    paramString = e(paramContext.getApplicationContext(), paramLong, paramString);
    paramContext = null;
    if (paramString != null) {
      paramContext = paramString.optString("value", null);
    }
    return paramContext;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s1.d
 * JD-Core Version:    0.7.0.1
 */