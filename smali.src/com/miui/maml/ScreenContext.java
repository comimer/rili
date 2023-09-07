package com.miui.maml;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.miui.maml.data.ContextVariables;
import com.miui.maml.data.Variables;
import com.miui.maml.elements.ScreenElementFactory;
import com.miui.maml.util.Utils;
import java.util.HashMap;

public class ScreenContext
{
  public final Context mContext;
  public final ContextVariables mContextVariables;
  public final ScreenElementFactory mFactory;
  private final Handler mHandler;
  private HashMap<String, ObjectFactory> mObjectFactories;
  public final ResourceManager mResourceManager;
  public final Variables mVariables;
  
  public ScreenContext(Context paramContext, ResourceLoader paramResourceLoader)
  {
    this(paramContext, paramResourceLoader, new ScreenElementFactory());
  }
  
  public ScreenContext(Context paramContext, ResourceLoader paramResourceLoader, ScreenElementFactory paramScreenElementFactory)
  {
    this(paramContext, new ResourceManager(paramResourceLoader), paramScreenElementFactory);
  }
  
  public ScreenContext(Context paramContext, ResourceManager paramResourceManager)
  {
    this(paramContext, paramResourceManager, new ScreenElementFactory());
  }
  
  public ScreenContext(Context paramContext, ResourceManager paramResourceManager, ScreenElementFactory paramScreenElementFactory)
  {
    this(paramContext, paramResourceManager, paramScreenElementFactory, new Variables());
  }
  
  public ScreenContext(Context paramContext, ResourceManager paramResourceManager, ScreenElementFactory paramScreenElementFactory, Variables paramVariables)
  {
    Context localContext = paramContext.getApplicationContext();
    Utils.initContextIfNeed(localContext);
    if (localContext != null) {
      paramContext = localContext;
    }
    this.mContext = paramContext;
    this.mResourceManager = paramResourceManager;
    this.mFactory = paramScreenElementFactory;
    this.mHandler = new Handler(Looper.getMainLooper());
    this.mVariables = paramVariables;
    this.mContextVariables = new ContextVariables();
  }
  
  public Handler getHandler()
  {
    return this.mHandler;
  }
  
  /* Error */
  public final <T extends ObjectFactory> T getObjectFactory(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aconst_null
    //   3: astore_2
    //   4: aload_0
    //   5: getfield 92	com/miui/maml/ScreenContext:mObjectFactories	Ljava/util/HashMap;
    //   8: astore_3
    //   9: aload_3
    //   10: ifnonnull +8 -> 18
    //   13: aload_2
    //   14: astore_1
    //   15: goto +12 -> 27
    //   18: aload_3
    //   19: aload_1
    //   20: invokevirtual 98	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   23: checkcast 100	com/miui/maml/ObjectFactory
    //   26: astore_1
    //   27: aload_0
    //   28: monitorexit
    //   29: aload_1
    //   30: areturn
    //   31: astore_1
    //   32: aload_0
    //   33: monitorexit
    //   34: aload_1
    //   35: athrow
    //   36: astore_1
    //   37: aload_0
    //   38: monitorexit
    //   39: aconst_null
    //   40: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	41	0	this	ScreenContext
    //   0	41	1	paramString	String
    //   3	11	2	localObject	Object
    //   8	11	3	localHashMap	HashMap
    // Exception table:
    //   from	to	target	type
    //   4	9	31	finally
    //   18	27	31	finally
    //   4	9	36	java/lang/ClassCastException
    //   18	27	36	java/lang/ClassCastException
  }
  
  public boolean postDelayed(Runnable paramRunnable, long paramLong)
  {
    return this.mHandler.postDelayed(paramRunnable, paramLong);
  }
  
  public final void registerObjectFactory(String paramString, ObjectFactory paramObjectFactory)
  {
    if (paramObjectFactory == null) {}
    try
    {
      paramObjectFactory = this.mObjectFactories;
      if (paramObjectFactory != null) {
        paramObjectFactory.remove(paramString);
      }
      return;
    }
    finally {}
    if (paramString.equals(paramObjectFactory.getName()))
    {
      if (this.mObjectFactories == null)
      {
        localObject = new java/util/HashMap;
        ((HashMap)localObject).<init>();
        this.mObjectFactories = ((HashMap)localObject);
      }
      ObjectFactory localObjectFactory = (ObjectFactory)this.mObjectFactories.get(paramString);
      for (localObject = localObjectFactory; localObject != null; localObject = ((ObjectFactory)localObject).getOld()) {
        if (localObject == paramObjectFactory) {
          return;
        }
      }
      paramObjectFactory.setOld(localObjectFactory);
      this.mObjectFactories.put(paramString, paramObjectFactory);
      return;
    }
    Object localObject = new java/lang/IllegalArgumentException;
    paramObjectFactory = new java/lang/StringBuilder;
    paramObjectFactory.<init>();
    paramObjectFactory.append("ObjectFactory name mismatchs ");
    paramObjectFactory.append(paramString);
    ((IllegalArgumentException)localObject).<init>(paramObjectFactory.toString());
    throw ((Throwable)localObject);
  }
  
  public void removeCallbacks(Runnable paramRunnable)
  {
    this.mHandler.removeCallbacks(paramRunnable);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.ScreenContext
 * JD-Core Version:    0.7.0.1
 */