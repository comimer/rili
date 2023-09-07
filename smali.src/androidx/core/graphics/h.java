package androidx.core.graphics;

import android.graphics.Typeface;
import android.util.Log;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class h
  extends l
{
  private static Class<?> b;
  private static Constructor<?> c;
  private static Method d;
  private static Method e;
  private static boolean f = false;
  
  private static boolean f(Object paramObject, String paramString, int paramInt, boolean paramBoolean)
  {
    
    try
    {
      paramBoolean = ((Boolean)d.invoke(paramObject, new Object[] { paramString, Integer.valueOf(paramInt), Boolean.valueOf(paramBoolean) })).booleanValue();
      return paramBoolean;
    }
    catch (InvocationTargetException paramObject) {}catch (IllegalAccessException paramObject) {}
    throw new RuntimeException(paramObject);
  }
  
  private static Typeface g(Object paramObject)
  {
    
    try
    {
      Object localObject = Array.newInstance(b, 1);
      Array.set(localObject, 0, paramObject);
      paramObject = (Typeface)e.invoke(null, new Object[] { localObject });
      return paramObject;
    }
    catch (InvocationTargetException paramObject) {}catch (IllegalAccessException paramObject) {}
    throw new RuntimeException(paramObject);
  }
  
  private static void h()
  {
    if (f) {
      return;
    }
    f = true;
    Object localObject1 = null;
    try
    {
      Class localClass = Class.forName("android.graphics.FontFamily");
      Constructor localConstructor = localClass.getConstructor(new Class[0]);
      localObject3 = localClass.getMethod("addFontWeightStyle", new Class[] { String.class, Integer.TYPE, Boolean.TYPE });
      localMethod = Typeface.class.getMethod("createFromFamiliesWithDefault", new Class[] { Array.newInstance(localClass, 1).getClass() });
      localObject1 = localConstructor;
    }
    catch (NoSuchMethodException localNoSuchMethodException) {}catch (ClassNotFoundException localClassNotFoundException) {}
    Log.e("TypefaceCompatApi21Impl", localClassNotFoundException.getClass().getName(), localClassNotFoundException);
    Method localMethod = null;
    Object localObject2 = localMethod;
    Object localObject3 = localObject2;
    c = localObject1;
    b = localObject2;
    d = (Method)localObject3;
    e = localMethod;
  }
  
  private static Object i()
  {
    
    try
    {
      Object localObject = c.newInstance(new Object[0]);
      return localObject;
    }
    catch (InvocationTargetException localInvocationTargetException) {}catch (InstantiationException localInstantiationException) {}catch (IllegalAccessException localIllegalAccessException) {}
    throw new RuntimeException(localIllegalAccessException);
  }
  
  /* Error */
  public Typeface a(android.content.Context paramContext, androidx.core.content.res.e.c paramc, android.content.res.Resources paramResources, int paramInt)
  {
    // Byte code:
    //   0: invokestatic 140	androidx/core/graphics/h:i	()Ljava/lang/Object;
    //   3: astore 5
    //   5: aload_2
    //   6: invokevirtual 145	androidx/core/content/res/e$c:a	()[Landroidx/core/content/res/e$d;
    //   9: astore 6
    //   11: aload 6
    //   13: arraylength
    //   14: istore 7
    //   16: iconst_0
    //   17: istore 4
    //   19: iload 4
    //   21: iload 7
    //   23: if_icmpge +105 -> 128
    //   26: aload 6
    //   28: iload 4
    //   30: aaload
    //   31: astore 8
    //   33: aload_1
    //   34: invokestatic 150	androidx/core/graphics/m:d	(Landroid/content/Context;)Ljava/io/File;
    //   37: astore_2
    //   38: aload_2
    //   39: ifnonnull +5 -> 44
    //   42: aconst_null
    //   43: areturn
    //   44: aload_2
    //   45: aload_3
    //   46: aload 8
    //   48: invokevirtual 155	androidx/core/content/res/e$d:b	()I
    //   51: invokestatic 158	androidx/core/graphics/m:b	(Ljava/io/File;Landroid/content/res/Resources;I)Z
    //   54: istore 9
    //   56: iload 9
    //   58: ifne +10 -> 68
    //   61: aload_2
    //   62: invokevirtual 163	java/io/File:delete	()Z
    //   65: pop
    //   66: aconst_null
    //   67: areturn
    //   68: aload 5
    //   70: aload_2
    //   71: invokevirtual 166	java/io/File:getPath	()Ljava/lang/String;
    //   74: aload 8
    //   76: invokevirtual 168	androidx/core/content/res/e$d:e	()I
    //   79: aload 8
    //   81: invokevirtual 170	androidx/core/content/res/e$d:f	()Z
    //   84: invokestatic 172	androidx/core/graphics/h:f	(Ljava/lang/Object;Ljava/lang/String;IZ)Z
    //   87: istore 9
    //   89: iload 9
    //   91: ifne +10 -> 101
    //   94: aload_2
    //   95: invokevirtual 163	java/io/File:delete	()Z
    //   98: pop
    //   99: aconst_null
    //   100: areturn
    //   101: aload_2
    //   102: invokevirtual 163	java/io/File:delete	()Z
    //   105: pop
    //   106: iinc 4 1
    //   109: goto -90 -> 19
    //   112: astore_1
    //   113: aload_2
    //   114: invokevirtual 163	java/io/File:delete	()Z
    //   117: pop
    //   118: aload_1
    //   119: athrow
    //   120: astore_1
    //   121: aload_2
    //   122: invokevirtual 163	java/io/File:delete	()Z
    //   125: pop
    //   126: aconst_null
    //   127: areturn
    //   128: aload 5
    //   130: invokestatic 174	androidx/core/graphics/h:g	(Ljava/lang/Object;)Landroid/graphics/Typeface;
    //   133: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	134	0	this	h
    //   0	134	1	paramContext	android.content.Context
    //   0	134	2	paramc	androidx.core.content.res.e.c
    //   0	134	3	paramResources	android.content.res.Resources
    //   0	134	4	paramInt	int
    //   3	126	5	localObject	Object
    //   9	18	6	arrayOfd	androidx.core.content.res.e.d[]
    //   14	10	7	i	int
    //   31	49	8	locald	androidx.core.content.res.e.d
    //   54	36	9	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   44	56	112	finally
    //   68	89	112	finally
    //   44	56	120	java/lang/RuntimeException
    //   68	89	120	java/lang/RuntimeException
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.graphics.h
 * JD-Core Version:    0.7.0.1
 */