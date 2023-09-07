package com.xiaomi.ad.entity.util;

import android.text.TextUtils;
import com.xiaomi.ad.entity.contract.IEntity;
import d6.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public final class EntityUtils
{
  private static final String DESERIALIZE_METHOD_NAME = "deserialize";
  private static final String TAG = "EntityUtils";
  private static final String TYPE = "type";
  private static final String VALUE = "value";
  
  public static <T extends IEntity> T deepClone(T paramT, String paramString)
  {
    return deserialize(serialize(paramT, getTag(paramString)), getTag(paramString));
  }
  
  /* Error */
  public static com.xiaomi.ad.entity.contract.IGsonEntity deserialize(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 53	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: new 55	org/json/JSONObject
    //   12: astore_2
    //   13: aload_2
    //   14: aload_0
    //   15: invokespecial 58	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   18: aload_2
    //   19: ldc 14
    //   21: invokevirtual 61	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   24: astore_3
    //   25: aload_3
    //   26: invokestatic 53	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   29: ifeq +15 -> 44
    //   32: ldc 11
    //   34: invokestatic 28	com/xiaomi/ad/entity/util/EntityUtils:getTag	(Ljava/lang/String;)Ljava/lang/String;
    //   37: ldc 63
    //   39: invokestatic 69	d6/d:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   42: aconst_null
    //   43: areturn
    //   44: aload_2
    //   45: ldc 17
    //   47: invokevirtual 61	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   50: astore 4
    //   52: aload 4
    //   54: invokestatic 53	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   57: ifeq +15 -> 72
    //   60: ldc 11
    //   62: invokestatic 28	com/xiaomi/ad/entity/util/EntityUtils:getTag	(Ljava/lang/String;)Ljava/lang/String;
    //   65: ldc 71
    //   67: invokestatic 69	d6/d:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   70: aconst_null
    //   71: areturn
    //   72: aload_3
    //   73: invokestatic 77	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   76: ldc 8
    //   78: iconst_1
    //   79: anewarray 73	java/lang/Class
    //   82: dup
    //   83: iconst_0
    //   84: ldc 79
    //   86: aastore
    //   87: invokevirtual 83	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   90: astore_2
    //   91: aload_2
    //   92: iconst_1
    //   93: invokevirtual 89	java/lang/reflect/AccessibleObject:setAccessible	(Z)V
    //   96: aload_2
    //   97: aconst_null
    //   98: iconst_1
    //   99: anewarray 4	java/lang/Object
    //   102: dup
    //   103: iconst_0
    //   104: aload 4
    //   106: aastore
    //   107: invokevirtual 95	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   110: checkcast 97	com/xiaomi/ad/entity/contract/IGsonEntity
    //   113: astore_2
    //   114: aload_2
    //   115: areturn
    //   116: astore_2
    //   117: goto +67 -> 184
    //   120: astore 4
    //   122: aload_3
    //   123: astore_2
    //   124: goto +99 -> 223
    //   127: astore_2
    //   128: aload_3
    //   129: astore 4
    //   131: goto +132 -> 263
    //   134: astore_2
    //   135: aload_3
    //   136: astore 4
    //   138: goto +165 -> 303
    //   141: astore_1
    //   142: ldc 11
    //   144: invokestatic 28	com/xiaomi/ad/entity/util/EntityUtils:getTag	(Ljava/lang/String;)Ljava/lang/String;
    //   147: astore_2
    //   148: new 99	java/lang/StringBuilder
    //   151: dup
    //   152: invokespecial 100	java/lang/StringBuilder:<init>	()V
    //   155: astore_3
    //   156: aload_3
    //   157: ldc 102
    //   159: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: pop
    //   163: aload_3
    //   164: aload_0
    //   165: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: pop
    //   169: aload_2
    //   170: aload_3
    //   171: invokevirtual 110	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   174: aload_1
    //   175: invokestatic 114	d6/d:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   178: goto +151 -> 329
    //   181: astore_2
    //   182: aconst_null
    //   183: astore_3
    //   184: aload_1
    //   185: invokestatic 28	com/xiaomi/ad/entity/util/EntityUtils:getTag	(Ljava/lang/String;)Ljava/lang/String;
    //   188: ldc 116
    //   190: iconst_3
    //   191: anewarray 4	java/lang/Object
    //   194: dup
    //   195: iconst_0
    //   196: aload_3
    //   197: aastore
    //   198: dup
    //   199: iconst_1
    //   200: ldc 8
    //   202: aastore
    //   203: dup
    //   204: iconst_2
    //   205: aload_0
    //   206: aastore
    //   207: invokestatic 120	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   210: aload_2
    //   211: invokestatic 114	d6/d:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   214: goto +115 -> 329
    //   217: astore_3
    //   218: aconst_null
    //   219: astore_2
    //   220: aload_3
    //   221: astore 4
    //   223: aload_1
    //   224: invokestatic 28	com/xiaomi/ad/entity/util/EntityUtils:getTag	(Ljava/lang/String;)Ljava/lang/String;
    //   227: ldc 122
    //   229: iconst_3
    //   230: anewarray 4	java/lang/Object
    //   233: dup
    //   234: iconst_0
    //   235: aload_2
    //   236: aastore
    //   237: dup
    //   238: iconst_1
    //   239: ldc 8
    //   241: aastore
    //   242: dup
    //   243: iconst_2
    //   244: aload_0
    //   245: aastore
    //   246: invokestatic 120	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   249: aload 4
    //   251: invokestatic 114	d6/d:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   254: goto +75 -> 329
    //   257: astore_3
    //   258: aconst_null
    //   259: astore 4
    //   261: aload_3
    //   262: astore_2
    //   263: aload_1
    //   264: invokestatic 28	com/xiaomi/ad/entity/util/EntityUtils:getTag	(Ljava/lang/String;)Ljava/lang/String;
    //   267: ldc 124
    //   269: iconst_3
    //   270: anewarray 4	java/lang/Object
    //   273: dup
    //   274: iconst_0
    //   275: ldc 8
    //   277: aastore
    //   278: dup
    //   279: iconst_1
    //   280: aload 4
    //   282: aastore
    //   283: dup
    //   284: iconst_2
    //   285: aload_0
    //   286: aastore
    //   287: invokestatic 120	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   290: aload_2
    //   291: invokestatic 114	d6/d:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   294: goto +35 -> 329
    //   297: astore_3
    //   298: aconst_null
    //   299: astore 4
    //   301: aload_3
    //   302: astore_2
    //   303: aload_1
    //   304: invokestatic 28	com/xiaomi/ad/entity/util/EntityUtils:getTag	(Ljava/lang/String;)Ljava/lang/String;
    //   307: ldc 126
    //   309: iconst_2
    //   310: anewarray 4	java/lang/Object
    //   313: dup
    //   314: iconst_0
    //   315: aload 4
    //   317: aastore
    //   318: dup
    //   319: iconst_1
    //   320: aload_0
    //   321: aastore
    //   322: invokestatic 120	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   325: aload_2
    //   326: invokestatic 114	d6/d:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   329: aconst_null
    //   330: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	331	0	paramString1	String
    //   0	331	1	paramString2	String
    //   12	103	2	localObject1	Object
    //   116	1	2	localIllegalAccessException1	java.lang.IllegalAccessException
    //   123	1	2	localObject2	Object
    //   127	1	2	localNoSuchMethodException1	java.lang.NoSuchMethodException
    //   134	1	2	localClassNotFoundException1	java.lang.ClassNotFoundException
    //   147	23	2	str1	String
    //   181	30	2	localIllegalAccessException2	java.lang.IllegalAccessException
    //   219	107	2	localObject3	Object
    //   24	173	3	localObject4	Object
    //   217	4	3	localInvocationTargetException1	java.lang.reflect.InvocationTargetException
    //   257	5	3	localNoSuchMethodException2	java.lang.NoSuchMethodException
    //   297	5	3	localClassNotFoundException2	java.lang.ClassNotFoundException
    //   50	55	4	str2	String
    //   120	1	4	localInvocationTargetException2	java.lang.reflect.InvocationTargetException
    //   129	187	4	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   25	42	116	java/lang/IllegalAccessException
    //   44	70	116	java/lang/IllegalAccessException
    //   72	114	116	java/lang/IllegalAccessException
    //   25	42	120	java/lang/reflect/InvocationTargetException
    //   44	70	120	java/lang/reflect/InvocationTargetException
    //   72	114	120	java/lang/reflect/InvocationTargetException
    //   25	42	127	java/lang/NoSuchMethodException
    //   44	70	127	java/lang/NoSuchMethodException
    //   72	114	127	java/lang/NoSuchMethodException
    //   25	42	134	java/lang/ClassNotFoundException
    //   44	70	134	java/lang/ClassNotFoundException
    //   72	114	134	java/lang/ClassNotFoundException
    //   9	25	141	org/json/JSONException
    //   25	42	141	org/json/JSONException
    //   44	70	141	org/json/JSONException
    //   72	114	141	org/json/JSONException
    //   9	25	181	java/lang/IllegalAccessException
    //   9	25	217	java/lang/reflect/InvocationTargetException
    //   9	25	257	java/lang/NoSuchMethodException
    //   9	25	297	java/lang/ClassNotFoundException
  }
  
  private static String getTag(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append("-");
    localStringBuilder.append("EntityUtils");
    return localStringBuilder.toString();
  }
  
  public static List<String> ignoreEmptyItem(List<String> paramList)
  {
    if ((paramList != null) && (!paramList.isEmpty()))
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        paramList = (String)localIterator.next();
        if (!TextUtils.isEmpty(paramList)) {
          localArrayList.add(paramList);
        }
      }
      return localArrayList;
    }
    return Collections.EMPTY_LIST;
  }
  
  public static String serialize(IEntity paramIEntity, String paramString)
  {
    if (paramIEntity == null) {
      return null;
    }
    paramString = new JSONObject();
    try
    {
      paramString.put("type", paramIEntity.getClass().getCanonicalName());
      paramString.put("value", paramIEntity.serialize());
    }
    catch (JSONException localJSONException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("serialize exception, entity str: ");
      localStringBuilder.append(paramIEntity.serialize());
      d.c("EntityUtils", localStringBuilder.toString());
    }
    return paramString.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.entity.util.EntityUtils
 * JD-Core Version:    0.7.0.1
 */