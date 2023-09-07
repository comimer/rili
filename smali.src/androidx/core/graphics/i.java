package androidx.core.graphics;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.util.Log;
import androidx.core.content.res.e.c;
import androidx.core.content.res.e.d;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;

public class i
  extends h
{
  protected final Class<?> g;
  protected final Constructor<?> h;
  protected final Method i;
  protected final Method j;
  protected final Method k;
  protected final Method l;
  protected final Method m;
  
  public i()
  {
    Object localObject1 = null;
    try
    {
      Class localClass = s();
      localObject3 = t(localClass);
      localObject4 = p(localClass);
      localObject5 = q(localClass);
      localObject6 = u(localClass);
      localObject7 = o(localClass);
      localObject8 = r(localClass);
    }
    catch (NoSuchMethodException localNoSuchMethodException) {}catch (ClassNotFoundException localClassNotFoundException) {}
    Object localObject8 = new StringBuilder();
    ((StringBuilder)localObject8).append("Unable to collect necessary methods for class ");
    ((StringBuilder)localObject8).append(localClassNotFoundException.getClass().getName());
    Log.e("TypefaceCompatApi26Impl", ((StringBuilder)localObject8).toString(), localClassNotFoundException);
    Object localObject9 = null;
    Object localObject2 = localObject9;
    localObject8 = localObject2;
    Object localObject5 = localObject8;
    Object localObject6 = localObject5;
    Object localObject7 = localObject6;
    Object localObject4 = localObject8;
    Object localObject3 = localObject2;
    localObject8 = localObject9;
    localObject2 = localObject1;
    this.g = localObject2;
    this.h = ((Constructor)localObject3);
    this.i = ((Method)localObject4);
    this.j = ((Method)localObject5);
    this.k = ((Method)localObject6);
    this.l = ((Method)localObject7);
    this.m = ((Method)localObject8);
  }
  
  private Object i()
  {
    try
    {
      Object localObject = this.h.newInstance(new Object[0]);
      return localObject;
    }
    catch (IllegalAccessException|InstantiationException|InvocationTargetException localIllegalAccessException) {}
    return null;
  }
  
  private void j(Object paramObject)
  {
    try
    {
      this.l.invoke(paramObject, new Object[0]);
      label13:
      return;
    }
    catch (IllegalAccessException|InvocationTargetException paramObject)
    {
      break label13;
    }
  }
  
  private boolean k(Context paramContext, Object paramObject, String paramString, int paramInt1, int paramInt2, int paramInt3, FontVariationAxis[] paramArrayOfFontVariationAxis)
  {
    try
    {
      boolean bool = ((Boolean)this.i.invoke(paramObject, new Object[] { paramContext.getAssets(), paramString, Integer.valueOf(0), Boolean.FALSE, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), Integer.valueOf(paramInt3), paramArrayOfFontVariationAxis })).booleanValue();
      return bool;
    }
    catch (IllegalAccessException|InvocationTargetException paramContext) {}
    return false;
  }
  
  private boolean l(Object paramObject, ByteBuffer paramByteBuffer, int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      boolean bool = ((Boolean)this.j.invoke(paramObject, new Object[] { paramByteBuffer, Integer.valueOf(paramInt1), null, Integer.valueOf(paramInt2), Integer.valueOf(paramInt3) })).booleanValue();
      return bool;
    }
    catch (IllegalAccessException|InvocationTargetException paramObject) {}
    return false;
  }
  
  private boolean m(Object paramObject)
  {
    try
    {
      boolean bool = ((Boolean)this.k.invoke(paramObject, new Object[0])).booleanValue();
      return bool;
    }
    catch (IllegalAccessException|InvocationTargetException paramObject) {}
    return false;
  }
  
  private boolean n()
  {
    if (this.i == null) {
      Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
    }
    boolean bool;
    if (this.i != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public Typeface a(Context paramContext, e.c paramc, Resources paramResources, int paramInt)
  {
    if (!n()) {
      return super.a(paramContext, paramc, paramResources, paramInt);
    }
    paramResources = i();
    if (paramResources == null) {
      return null;
    }
    for (Object localObject : paramc.a()) {
      if (!k(paramContext, paramResources, localObject.a(), localObject.c(), localObject.e(), localObject.f(), FontVariationAxis.fromFontVariationSettings(localObject.d())))
      {
        j(paramResources);
        return null;
      }
    }
    if (!m(paramResources)) {
      return null;
    }
    return g(paramResources);
  }
  
  /* Error */
  public Typeface b(Context paramContext, android.os.CancellationSignal paramCancellationSignal, androidx.core.provider.g.b[] paramArrayOfb, int paramInt)
  {
    // Byte code:
    //   0: aload_3
    //   1: arraylength
    //   2: iconst_1
    //   3: if_icmpge +5 -> 8
    //   6: aconst_null
    //   7: areturn
    //   8: aload_0
    //   9: invokespecial 150	androidx/core/graphics/i:n	()Z
    //   12: ifne +98 -> 110
    //   15: aload_0
    //   16: aload_3
    //   17: iload 4
    //   19: invokevirtual 199	androidx/core/graphics/l:e	([Landroidx/core/provider/g$b;I)Landroidx/core/provider/g$b;
    //   22: astore_3
    //   23: aload_1
    //   24: invokevirtual 203	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   27: astore_1
    //   28: aload_1
    //   29: aload_3
    //   30: invokevirtual 208	androidx/core/provider/g$b:d	()Landroid/net/Uri;
    //   33: ldc 209
    //   35: aload_2
    //   36: invokevirtual 215	android/content/ContentResolver:openFileDescriptor	(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    //   39: astore_1
    //   40: aload_1
    //   41: ifnonnull +13 -> 54
    //   44: aload_1
    //   45: ifnull +7 -> 52
    //   48: aload_1
    //   49: invokevirtual 220	android/os/ParcelFileDescriptor:close	()V
    //   52: aconst_null
    //   53: areturn
    //   54: new 222	android/graphics/Typeface$Builder
    //   57: astore_2
    //   58: aload_2
    //   59: aload_1
    //   60: invokevirtual 226	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
    //   63: invokespecial 229	android/graphics/Typeface$Builder:<init>	(Ljava/io/FileDescriptor;)V
    //   66: aload_2
    //   67: aload_3
    //   68: invokevirtual 230	androidx/core/provider/g$b:e	()I
    //   71: invokevirtual 234	android/graphics/Typeface$Builder:setWeight	(I)Landroid/graphics/Typeface$Builder;
    //   74: aload_3
    //   75: invokevirtual 235	androidx/core/provider/g$b:f	()Z
    //   78: invokevirtual 239	android/graphics/Typeface$Builder:setItalic	(Z)Landroid/graphics/Typeface$Builder;
    //   81: invokevirtual 243	android/graphics/Typeface$Builder:build	()Landroid/graphics/Typeface;
    //   84: astore_2
    //   85: aload_1
    //   86: invokevirtual 220	android/os/ParcelFileDescriptor:close	()V
    //   89: aload_2
    //   90: areturn
    //   91: astore_2
    //   92: aload_1
    //   93: invokevirtual 220	android/os/ParcelFileDescriptor:close	()V
    //   96: goto +9 -> 105
    //   99: astore_1
    //   100: aload_2
    //   101: aload_1
    //   102: invokevirtual 249	java/lang/Throwable:addSuppressed	(Ljava/lang/Throwable;)V
    //   105: aload_2
    //   106: athrow
    //   107: astore_1
    //   108: aconst_null
    //   109: areturn
    //   110: aload_1
    //   111: aload_3
    //   112: aload_2
    //   113: invokestatic 254	androidx/core/graphics/m:f	(Landroid/content/Context;[Landroidx/core/provider/g$b;Landroid/os/CancellationSignal;)Ljava/util/Map;
    //   116: astore 5
    //   118: aload_0
    //   119: invokespecial 154	androidx/core/graphics/i:i	()Ljava/lang/Object;
    //   122: astore 6
    //   124: aload 6
    //   126: ifnonnull +5 -> 131
    //   129: aconst_null
    //   130: areturn
    //   131: aload_3
    //   132: arraylength
    //   133: istore 7
    //   135: iconst_0
    //   136: istore 8
    //   138: iconst_0
    //   139: istore 9
    //   141: iload 9
    //   143: iload 7
    //   145: if_icmpge +69 -> 214
    //   148: aload_3
    //   149: iload 9
    //   151: aaload
    //   152: astore_1
    //   153: aload 5
    //   155: aload_1
    //   156: invokevirtual 208	androidx/core/provider/g$b:d	()Landroid/net/Uri;
    //   159: invokeinterface 260 2 0
    //   164: checkcast 262	java/nio/ByteBuffer
    //   167: astore_2
    //   168: aload_2
    //   169: ifnonnull +6 -> 175
    //   172: goto +36 -> 208
    //   175: aload_0
    //   176: aload 6
    //   178: aload_2
    //   179: aload_1
    //   180: invokevirtual 263	androidx/core/provider/g$b:c	()I
    //   183: aload_1
    //   184: invokevirtual 230	androidx/core/provider/g$b:e	()I
    //   187: aload_1
    //   188: invokevirtual 235	androidx/core/provider/g$b:f	()Z
    //   191: invokespecial 265	androidx/core/graphics/i:l	(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z
    //   194: ifne +11 -> 205
    //   197: aload_0
    //   198: aload 6
    //   200: invokespecial 185	androidx/core/graphics/i:j	(Ljava/lang/Object;)V
    //   203: aconst_null
    //   204: areturn
    //   205: iconst_1
    //   206: istore 8
    //   208: iinc 9 1
    //   211: goto -70 -> 141
    //   214: iload 8
    //   216: ifne +11 -> 227
    //   219: aload_0
    //   220: aload 6
    //   222: invokespecial 185	androidx/core/graphics/i:j	(Ljava/lang/Object;)V
    //   225: aconst_null
    //   226: areturn
    //   227: aload_0
    //   228: aload 6
    //   230: invokespecial 187	androidx/core/graphics/i:m	(Ljava/lang/Object;)Z
    //   233: ifne +5 -> 238
    //   236: aconst_null
    //   237: areturn
    //   238: aload_0
    //   239: aload 6
    //   241: invokevirtual 190	androidx/core/graphics/i:g	(Ljava/lang/Object;)Landroid/graphics/Typeface;
    //   244: astore_1
    //   245: aload_1
    //   246: ifnonnull +5 -> 251
    //   249: aconst_null
    //   250: areturn
    //   251: aload_1
    //   252: iload 4
    //   254: invokestatic 271	android/graphics/Typeface:create	(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    //   257: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	258	0	this	i
    //   0	258	1	paramContext	Context
    //   0	258	2	paramCancellationSignal	android.os.CancellationSignal
    //   0	258	3	paramArrayOfb	androidx.core.provider.g.b[]
    //   0	258	4	paramInt	int
    //   116	38	5	localMap	java.util.Map
    //   122	118	6	localObject	Object
    //   133	13	7	n	int
    //   136	79	8	i1	int
    //   139	70	9	i2	int
    // Exception table:
    //   from	to	target	type
    //   54	85	91	finally
    //   92	96	99	finally
    //   28	40	107	java/io/IOException
    //   48	52	107	java/io/IOException
    //   85	89	107	java/io/IOException
    //   100	105	107	java/io/IOException
    //   105	107	107	java/io/IOException
  }
  
  public Typeface c(Context paramContext, Resources paramResources, int paramInt1, String paramString, int paramInt2)
  {
    if (!n()) {
      return super.c(paramContext, paramResources, paramInt1, paramString, paramInt2);
    }
    paramResources = i();
    if (paramResources == null) {
      return null;
    }
    if (!k(paramContext, paramResources, paramString, 0, -1, -1, null))
    {
      j(paramResources);
      return null;
    }
    if (!m(paramResources)) {
      return null;
    }
    return g(paramResources);
  }
  
  protected Typeface g(Object paramObject)
  {
    try
    {
      Object localObject = Array.newInstance(this.g, 1);
      Array.set(localObject, 0, paramObject);
      paramObject = (Typeface)this.m.invoke(null, new Object[] { localObject, Integer.valueOf(-1), Integer.valueOf(-1) });
      return paramObject;
    }
    catch (IllegalAccessException|InvocationTargetException paramObject) {}
    return null;
  }
  
  protected Method o(Class<?> paramClass)
    throws NoSuchMethodException
  {
    return paramClass.getMethod("abortCreation", new Class[0]);
  }
  
  protected Method p(Class<?> paramClass)
    throws NoSuchMethodException
  {
    Class localClass = Integer.TYPE;
    return paramClass.getMethod("addFontFromAssetManager", new Class[] { AssetManager.class, String.class, localClass, Boolean.TYPE, localClass, localClass, localClass, [Landroid.graphics.fonts.FontVariationAxis.class });
  }
  
  protected Method q(Class<?> paramClass)
    throws NoSuchMethodException
  {
    Class localClass = Integer.TYPE;
    return paramClass.getMethod("addFontFromBuffer", new Class[] { ByteBuffer.class, localClass, [Landroid.graphics.fonts.FontVariationAxis.class, localClass, localClass });
  }
  
  protected Method r(Class<?> paramClass)
    throws NoSuchMethodException
  {
    Class localClass = Array.newInstance(paramClass, 1).getClass();
    paramClass = Integer.TYPE;
    paramClass = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", new Class[] { localClass, paramClass, paramClass });
    paramClass.setAccessible(true);
    return paramClass;
  }
  
  protected Class<?> s()
    throws ClassNotFoundException
  {
    return Class.forName("android.graphics.FontFamily");
  }
  
  protected Constructor<?> t(Class<?> paramClass)
    throws NoSuchMethodException
  {
    return paramClass.getConstructor(new Class[0]);
  }
  
  protected Method u(Class<?> paramClass)
    throws NoSuchMethodException
  {
    return paramClass.getMethod("freeze", new Class[0]);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.graphics.i
 * JD-Core Version:    0.7.0.1
 */