package com.miui.maml.data;

import android.util.Log;
import com.miui.maml.util.Utils;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;

public class Variables
{
  private static boolean DBG = false;
  private static final String LOG_TAG = "Variables";
  public static final int MAX_ARRAY_SIZE = 10000;
  public static final int VARIABLE_TYPE_HIGH_PRIORITY = 1;
  public static final int VARIABLE_TYPE_NORMAL = 0;
  private DoubleBucket mDoubleBucket = new DoubleBucket(null);
  private VarBucket<Object> mObjectBucket = new VarBucket(null);
  
  private static void dbglog(String paramString)
  {
    if (DBG) {
      Log.d("Variables", paramString);
    }
  }
  
  private <T> T getArrInner(int paramInt1, int paramInt2)
  {
    try
    {
      Object localObject = (Object[])get(paramInt1);
      if (localObject == null)
      {
        localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        ((StringBuilder)localObject).append("getArrInner: designated object is not an array. index:");
        ((StringBuilder)localObject).append(paramInt1);
        dbglog(((StringBuilder)localObject).toString());
      }
      else if (!isIndexValid(localObject, paramInt2))
      {
        localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        ((StringBuilder)localObject).append("getArrInner: designated array index is invalid. index:");
        ((StringBuilder)localObject).append(paramInt1);
        ((StringBuilder)localObject).append(" arrIndex:");
        ((StringBuilder)localObject).append(paramInt2);
        dbglog(((StringBuilder)localObject).toString());
      }
      else
      {
        localObject = localObject[paramInt2];
        return localObject;
      }
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
    {
      StringBuilder localStringBuilder1 = new StringBuilder();
      localStringBuilder1.append("getArrInner: designated index is invalid. index:");
      localStringBuilder1.append(paramInt1);
      localStringBuilder1.append(" arrIndex:");
      localStringBuilder1.append(paramInt2);
      dbglog(localStringBuilder1.toString());
    }
    catch (ClassCastException localClassCastException)
    {
      StringBuilder localStringBuilder2 = new StringBuilder();
      localStringBuilder2.append("getArrInner: designated object type is not correct. index:");
      localStringBuilder2.append(paramInt1);
      dbglog(localStringBuilder2.toString());
    }
    return null;
  }
  
  private static boolean isIndexValid(Object paramObject, int paramInt)
  {
    if (paramInt >= 0) {}
    try
    {
      int i = Array.getLength(paramObject);
      if (paramInt < i) {
        return true;
      }
    }
    catch (Exception paramObject)
    {
      label19:
      break label19;
    }
    return false;
  }
  
  public static boolean putValueToArr(Object paramObject, int paramInt, double paramDouble)
  {
    boolean bool = isIndexValid(paramObject, paramInt);
    int i = 0;
    if (!bool)
    {
      paramObject = new StringBuilder();
      paramObject.append(" designated array index is invalid. arrIndex:");
      paramObject.append(paramInt);
      dbglog(paramObject.toString());
      return false;
    }
    if ((paramObject instanceof double[]))
    {
      ((double[])paramObject)[paramInt] = paramDouble;
    }
    else if ((paramObject instanceof byte[]))
    {
      ((byte[])paramObject)[paramInt] = ((byte)(byte)(int)paramDouble);
    }
    else if ((paramObject instanceof char[]))
    {
      ((char[])paramObject)[paramInt] = ((char)(char)(int)paramDouble);
    }
    else if ((paramObject instanceof float[]))
    {
      ((float[])paramObject)[paramInt] = ((float)paramDouble);
    }
    else if ((paramObject instanceof int[]))
    {
      ((int[])paramObject)[paramInt] = ((int)paramDouble);
    }
    else if ((paramObject instanceof long[]))
    {
      ((long[])paramObject)[paramInt] = (paramDouble);
    }
    else if ((paramObject instanceof short[]))
    {
      ((short[])paramObject)[paramInt] = ((short)(short)(int)paramDouble);
    }
    else if ((paramObject instanceof boolean[]))
    {
      paramObject = (boolean[])paramObject;
      if (paramDouble > 0.0D) {
        i = 1;
      }
      paramObject[paramInt] = i;
    }
    return true;
  }
  
  public boolean createArray(String paramString, int paramInt, Class<?> paramClass)
  {
    int i;
    if ((paramClass != null) && (paramInt > 0) && (paramInt <= 10000))
    {
      i = registerVariable(paramString);
      if (get(i) != null) {}
    }
    try
    {
      paramString = Array.newInstance(paramClass, paramInt);
      put(i, paramString);
      return true;
    }
    catch (Exception paramString)
    {
      label49:
      break label49;
    }
    return false;
    paramClass = new StringBuilder();
    paramClass.append("createArray failed: name= ");
    paramClass.append(paramString);
    paramClass.append("  size=");
    paramClass.append(paramInt);
    Log.e("Variables", paramClass.toString());
    return false;
  }
  
  public boolean existsArrItem(int paramInt1, int paramInt2)
  {
    Object localObject = get(paramInt1);
    bool1 = false;
    if (localObject == null) {
      return false;
    }
    bool2 = bool1;
    if (paramInt2 >= 0) {}
    try
    {
      paramInt1 = Array.getLength(localObject);
      bool2 = bool1;
      if (paramInt2 < paramInt1) {
        bool2 = true;
      }
    }
    catch (RuntimeException localRuntimeException)
    {
      for (;;)
      {
        bool2 = bool1;
      }
    }
    return bool2;
  }
  
  public boolean existsDouble(int paramInt)
  {
    return this.mDoubleBucket.exists(paramInt);
  }
  
  public boolean existsDouble(String paramString)
  {
    return this.mDoubleBucket.exists(paramString);
  }
  
  public boolean existsObj(String paramString)
  {
    return this.mObjectBucket.exists(paramString);
  }
  
  public Object get(int paramInt)
  {
    return this.mObjectBucket.get(paramInt);
  }
  
  public Object get(String paramString)
  {
    return get(registerVariable(paramString));
  }
  
  public Object getArr(int paramInt1, int paramInt2)
  {
    return getArrInner(paramInt1, paramInt2);
  }
  
  public double getArrDouble(int paramInt1, int paramInt2)
  {
    double d = 0.0D;
    try
    {
      Object localObject = get(paramInt1);
      if (localObject == null)
      {
        localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        ((StringBuilder)localObject).append("getArrDouble: designated array does not exist. index:");
        ((StringBuilder)localObject).append(paramInt1);
        dbglog(((StringBuilder)localObject).toString());
      }
      else if (!isIndexValid(localObject, paramInt2))
      {
        localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        ((StringBuilder)localObject).append("getArrDouble: designated index is invalid. index:");
        ((StringBuilder)localObject).append(paramInt1);
        ((StringBuilder)localObject).append(" arrIndex:");
        ((StringBuilder)localObject).append(paramInt2);
        dbglog(((StringBuilder)localObject).toString());
      }
      else
      {
        if ((localObject instanceof boolean[]))
        {
          if (((boolean[])localObject)[paramInt2] != 0) {
            d = 1.0D;
          }
          return d;
        }
        d = Array.getDouble(localObject, paramInt2);
        return d;
      }
    }
    catch (Exception localException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("getArrDouble: designated index is invalid. index:");
      localStringBuilder.append(paramInt1);
      localStringBuilder.append(" arrIndex:");
      localStringBuilder.append(paramInt2);
      dbglog(localStringBuilder.toString());
    }
    return 0.0D;
  }
  
  public String getArrString(int paramInt1, int paramInt2)
  {
    return (String)getArrInner(paramInt1, paramInt2);
  }
  
  public double getDouble(int paramInt)
  {
    return this.mDoubleBucket.get(paramInt);
  }
  
  public double getDouble(String paramString)
  {
    return getDouble(registerDoubleVariable(paramString));
  }
  
  public String getString(int paramInt)
  {
    try
    {
      String str = (String)get(paramInt);
      return str;
    }
    catch (ClassCastException localClassCastException) {}
    return null;
  }
  
  public String getString(String paramString)
  {
    return getString(registerVariable(paramString));
  }
  
  public int getVer(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean) {
      paramInt = this.mDoubleBucket.getVer(paramInt);
    } else {
      paramInt = this.mObjectBucket.getVer(paramInt);
    }
    return paramInt;
  }
  
  public final void put(int paramInt, double paramDouble)
  {
    this.mDoubleBucket.put(paramInt, paramDouble, 0);
  }
  
  public final void put(int paramInt, Object paramObject)
  {
    this.mObjectBucket.put(paramInt, paramObject, 0);
  }
  
  public final void put(String paramString, double paramDouble)
  {
    put(registerDoubleVariable(paramString), paramDouble);
  }
  
  public final void put(String paramString, double paramDouble, int paramInt)
  {
    this.mDoubleBucket.put(registerDoubleVariable(paramString), paramDouble, paramInt);
  }
  
  public void put(String paramString, Object paramObject)
  {
    put(registerVariable(paramString), paramObject);
  }
  
  public final void put(String paramString, Object paramObject, int paramInt)
  {
    this.mObjectBucket.put(registerVariable(paramString), paramObject, paramInt);
  }
  
  public boolean putArr(int paramInt1, int paramInt2, double paramDouble)
  {
    Object localObject = get(paramInt1);
    if (localObject == null)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("putArr: designated array does not exist. index:");
      ((StringBuilder)localObject).append(paramInt1);
      dbglog(((StringBuilder)localObject).toString());
      return false;
    }
    if (putValueToArr(localObject, paramInt2, paramDouble))
    {
      put(paramInt1, localObject);
      return true;
    }
    return false;
  }
  
  public boolean putArr(int paramInt1, int paramInt2, Object paramObject)
  {
    try
    {
      Object[] arrayOfObject = (Object[])get(paramInt1);
      if (arrayOfObject == null)
      {
        paramObject = new java/lang/StringBuilder;
        paramObject.<init>();
        paramObject.append("putArr: designated array does not exist. index:");
        paramObject.append(paramInt1);
        dbglog(paramObject.toString());
      }
      else if (!isIndexValid(arrayOfObject, paramInt2))
      {
        paramObject = new java/lang/StringBuilder;
        paramObject.<init>();
        paramObject.append("putArr: designated array index is invalid. index:");
        paramObject.append(paramInt1);
        paramObject.append(" arrIndex:");
        paramObject.append(paramInt2);
        dbglog(paramObject.toString());
      }
      else
      {
        arrayOfObject[paramInt2] = paramObject;
        put(paramInt1, arrayOfObject);
        return true;
      }
    }
    catch (IndexOutOfBoundsException paramObject)
    {
      paramObject = new StringBuilder();
      paramObject.append("putArr: designated array index is invalid. index:");
      paramObject.append(paramInt1);
      paramObject.append(" arrIndex:");
      paramObject.append(paramInt2);
      dbglog(paramObject.toString());
    }
    catch (ClassCastException paramObject)
    {
      paramObject = new StringBuilder();
      paramObject.append("putArr: designated object is not an object array. index:");
      paramObject.append(paramInt1);
      dbglog(paramObject.toString());
    }
    return false;
  }
  
  public boolean putArrDouble(int paramInt1, int paramInt2, Object paramObject)
  {
    if ((paramObject instanceof Number)) {
      return putArr(paramInt1, paramInt2, ((Number)paramObject).doubleValue());
    }
    if ((paramObject instanceof String)) {}
    try
    {
      boolean bool = putArr(paramInt1, paramInt2, Utils.parseDouble((String)paramObject));
      return bool;
    }
    catch (NumberFormatException paramObject)
    {
      label46:
      break label46;
    }
    return false;
  }
  
  public final boolean putDouble(int paramInt, Object paramObject)
  {
    if ((paramObject instanceof Number))
    {
      put(paramInt, ((Number)paramObject).doubleValue());
      return true;
    }
    if ((paramObject instanceof Boolean))
    {
      double d;
      if (((Boolean)paramObject).booleanValue()) {
        d = 1.0D;
      } else {
        d = 0.0D;
      }
      put(paramInt, d);
      return true;
    }
    if ((paramObject instanceof String)) {}
    try
    {
      put(paramInt, Double.parseDouble((String)paramObject));
      return true;
    }
    catch (NumberFormatException paramObject)
    {
      label74:
      break label74;
    }
    return false;
  }
  
  @Deprecated
  public final void putNum(String paramString, double paramDouble)
  {
    put(paramString, paramDouble);
  }
  
  public int registerDoubleVariable(String paramString)
  {
    return this.mDoubleBucket.registerVariable(paramString);
  }
  
  public int registerVariable(String paramString)
  {
    return this.mObjectBucket.registerVariable(paramString);
  }
  
  public void reset()
  {
    this.mDoubleBucket.reset();
    this.mObjectBucket.reset();
  }
  
  private static abstract class BaseVarBucket
  {
    private HashMap<String, Integer> mIndices = new HashMap();
    private int mNextIndex = 0;
    
    public boolean exists(String paramString)
    {
      return this.mIndices.containsKey(paramString);
    }
    
    protected abstract void onAddItem(int paramInt);
    
    public int registerVariable(String paramString)
    {
      try
      {
        Object localObject1 = (Integer)this.mIndices.get(paramString);
        Object localObject2 = localObject1;
        if (localObject1 == null)
        {
          localObject2 = Integer.valueOf(this.mNextIndex);
          this.mIndices.put(paramString, localObject2);
          onAddItem(this.mNextIndex);
        }
        int i = ((Integer)localObject2).intValue();
        int j = this.mNextIndex;
        if (i == j) {
          this.mNextIndex = (j + 1);
        }
        if (Variables.DBG)
        {
          localObject1 = new java/lang/StringBuilder;
          ((StringBuilder)localObject1).<init>();
          ((StringBuilder)localObject1).append("registerVariable: ");
          ((StringBuilder)localObject1).append(paramString);
          ((StringBuilder)localObject1).append("  index:");
          ((StringBuilder)localObject1).append(localObject2);
          Log.d("Variables", ((StringBuilder)localObject1).toString());
        }
        i = ((Integer)localObject2).intValue();
        return i;
      }
      finally {}
    }
  }
  
  private static class DoubleBucket
    extends Variables.BaseVarBucket
  {
    private ArrayList<Variables.DoubleInfo> mArray = new ArrayList();
    
    private DoubleBucket()
    {
      super();
    }
    
    /* Error */
    public final boolean exists(int paramInt)
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: iconst_0
      //   3: istore_2
      //   4: iload_1
      //   5: ifge +6 -> 11
      //   8: goto +18 -> 26
      //   11: aload_0
      //   12: getfield 21	com/miui/maml/data/Variables$DoubleBucket:mArray	Ljava/util/ArrayList;
      //   15: iload_1
      //   16: invokevirtual 31	java/util/ArrayList:get	(I)Ljava/lang/Object;
      //   19: astore_3
      //   20: aload_3
      //   21: ifnull +5 -> 26
      //   24: iconst_1
      //   25: istore_2
      //   26: aload_0
      //   27: monitorexit
      //   28: iload_2
      //   29: ireturn
      //   30: astore_3
      //   31: aload_0
      //   32: monitorexit
      //   33: aload_3
      //   34: athrow
      //   35: astore_3
      //   36: aload_0
      //   37: monitorexit
      //   38: iconst_0
      //   39: ireturn
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	40	0	this	DoubleBucket
      //   0	40	1	paramInt	int
      //   3	26	2	bool	boolean
      //   19	2	3	localObject1	Object
      //   30	4	3	localObject2	Object
      //   35	1	3	localIndexOutOfBoundsException	IndexOutOfBoundsException
      // Exception table:
      //   from	to	target	type
      //   11	20	30	finally
      //   11	20	35	java/lang/IndexOutOfBoundsException
    }
    
    /* Error */
    public double get(int paramInt)
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: dconst_0
      //   3: dstore_2
      //   4: aload_0
      //   5: getfield 21	com/miui/maml/data/Variables$DoubleBucket:mArray	Ljava/util/ArrayList;
      //   8: iload_1
      //   9: invokevirtual 31	java/util/ArrayList:get	(I)Ljava/lang/Object;
      //   12: checkcast 34	com/miui/maml/data/Variables$DoubleInfo
      //   15: astore 4
      //   17: aload 4
      //   19: ifnonnull +6 -> 25
      //   22: goto +9 -> 31
      //   25: aload 4
      //   27: getfield 38	com/miui/maml/data/Variables$DoubleInfo:mValue	D
      //   30: dstore_2
      //   31: aload_0
      //   32: monitorexit
      //   33: dload_2
      //   34: dreturn
      //   35: astore 4
      //   37: aload_0
      //   38: monitorexit
      //   39: aload 4
      //   41: athrow
      //   42: astore 4
      //   44: aload_0
      //   45: monitorexit
      //   46: dconst_0
      //   47: dreturn
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	48	0	this	DoubleBucket
      //   0	48	1	paramInt	int
      //   3	31	2	d	double
      //   15	11	4	localDoubleInfo	Variables.DoubleInfo
      //   35	5	4	localObject	Object
      //   42	1	4	localIndexOutOfBoundsException	IndexOutOfBoundsException
      // Exception table:
      //   from	to	target	type
      //   4	17	35	finally
      //   25	31	35	finally
      //   4	17	42	java/lang/IndexOutOfBoundsException
      //   25	31	42	java/lang/IndexOutOfBoundsException
    }
    
    /* Error */
    public int getVer(int paramInt)
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: iconst_m1
      //   3: istore_2
      //   4: aload_0
      //   5: getfield 21	com/miui/maml/data/Variables$DoubleBucket:mArray	Ljava/util/ArrayList;
      //   8: iload_1
      //   9: invokevirtual 31	java/util/ArrayList:get	(I)Ljava/lang/Object;
      //   12: checkcast 34	com/miui/maml/data/Variables$DoubleInfo
      //   15: astore_3
      //   16: aload_3
      //   17: ifnonnull +8 -> 25
      //   20: iload_2
      //   21: istore_1
      //   22: goto +8 -> 30
      //   25: aload_3
      //   26: getfield 44	com/miui/maml/data/Variables$DoubleInfo:mVersion	I
      //   29: istore_1
      //   30: aload_0
      //   31: monitorexit
      //   32: iload_1
      //   33: ireturn
      //   34: astore_3
      //   35: aload_0
      //   36: monitorexit
      //   37: aload_3
      //   38: athrow
      //   39: astore_3
      //   40: aload_0
      //   41: monitorexit
      //   42: iconst_m1
      //   43: ireturn
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	44	0	this	DoubleBucket
      //   0	44	1	paramInt	int
      //   3	18	2	i	int
      //   15	11	3	localDoubleInfo	Variables.DoubleInfo
      //   34	4	3	localObject	Object
      //   39	1	3	localIndexOutOfBoundsException	IndexOutOfBoundsException
      // Exception table:
      //   from	to	target	type
      //   4	16	34	finally
      //   25	30	34	finally
      //   4	16	39	java/lang/IndexOutOfBoundsException
      //   25	30	39	java/lang/IndexOutOfBoundsException
    }
    
    protected void onAddItem(int paramInt)
    {
      while (this.mArray.size() <= paramInt) {
        this.mArray.add(null);
      }
    }
    
    public final void put(int paramInt1, double paramDouble, int paramInt2)
    {
      if (paramInt1 < 0) {
        return;
      }
      try
      {
        try
        {
          Variables.DoubleInfo localDoubleInfo = (Variables.DoubleInfo)this.mArray.get(paramInt1);
          if (localDoubleInfo == null)
          {
            localDoubleInfo = new com/miui/maml/data/Variables$DoubleInfo;
            localDoubleInfo.<init>(paramDouble, 0, paramInt2);
            this.mArray.set(paramInt1, localDoubleInfo);
          }
          else
          {
            localDoubleInfo.setValue(paramDouble, paramInt2);
          }
        }
        finally {}
      }
      catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
      {
        label73:
        break label73;
      }
    }
    
    public void reset()
    {
      int i = this.mArray.size();
      for (int j = 0; j < i; j++)
      {
        Variables.DoubleInfo localDoubleInfo = (Variables.DoubleInfo)this.mArray.get(j);
        if (localDoubleInfo != null) {
          localDoubleInfo.setValue(0.0D);
        }
      }
    }
  }
  
  private static class DoubleInfo
  {
    double mValue;
    int mVarType;
    int mVersion;
    
    public DoubleInfo(double paramDouble, int paramInt1, int paramInt2)
    {
      this.mValue = paramDouble;
      this.mVersion = paramInt1;
      paramInt1 = 1;
      if (paramInt2 != 1) {
        paramInt1 = 0;
      }
      this.mVarType = paramInt1;
    }
    
    public void setValue(double paramDouble)
    {
      setValue(paramDouble, 0);
    }
    
    public void setValue(double paramDouble, int paramInt)
    {
      if (paramInt > this.mVarType) {
        this.mVarType = paramInt;
      }
      if (paramInt == this.mVarType)
      {
        this.mValue = paramDouble;
        this.mVersion += 1;
      }
    }
  }
  
  private static class ValueInfo<T>
  {
    T mValue;
    int mVarType;
    int mVersion;
    
    public ValueInfo(T paramT, int paramInt1, int paramInt2)
    {
      this.mValue = paramT;
      this.mVersion = paramInt1;
      paramInt1 = 1;
      if (paramInt2 != 1) {
        paramInt1 = 0;
      }
      this.mVarType = paramInt1;
    }
    
    public void reset()
    {
      Object localObject = this.mValue;
      boolean bool = localObject instanceof double[];
      int i = 0;
      int j = 0;
      int k = 0;
      if (bool)
      {
        localObject = (double[])localObject;
        while (k < localObject.length)
        {
          localObject[k] = 0.0D;
          k++;
        }
      }
      if ((localObject instanceof float[]))
      {
        localObject = (float[])localObject;
        for (k = i; k < localObject.length; k++) {
          localObject[k] = 0.0F;
        }
      }
      if ((localObject instanceof int[]))
      {
        localObject = (int[])localObject;
        for (k = 0; k < localObject.length; k++) {
          localObject[k] = 0;
        }
      }
      if ((localObject instanceof Object[]))
      {
        localObject = (Object[])localObject;
        for (k = j; k < localObject.length; k++) {
          localObject[k] = null;
        }
      }
      setValue(null);
    }
    
    public void setValue(T paramT)
    {
      setValue(paramT, 0);
    }
    
    public void setValue(T paramT, int paramInt)
    {
      if (paramInt > this.mVarType) {
        this.mVarType = paramInt;
      }
      if (paramInt == this.mVarType)
      {
        this.mValue = paramT;
        this.mVersion += 1;
      }
    }
  }
  
  private static class VarBucket<T>
    extends Variables.BaseVarBucket
  {
    private ArrayList<Variables.ValueInfo<T>> mArray = new ArrayList();
    
    private VarBucket()
    {
      super();
    }
    
    /* Error */
    public T get(int paramInt)
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aconst_null
      //   3: astore_2
      //   4: aload_0
      //   5: getfield 22	com/miui/maml/data/Variables$VarBucket:mArray	Ljava/util/ArrayList;
      //   8: iload_1
      //   9: invokevirtual 30	java/util/ArrayList:get	(I)Ljava/lang/Object;
      //   12: checkcast 32	com/miui/maml/data/Variables$ValueInfo
      //   15: astore_3
      //   16: aload_3
      //   17: ifnonnull +6 -> 23
      //   20: goto +8 -> 28
      //   23: aload_3
      //   24: getfield 36	com/miui/maml/data/Variables$ValueInfo:mValue	Ljava/lang/Object;
      //   27: astore_2
      //   28: aload_0
      //   29: monitorexit
      //   30: aload_2
      //   31: areturn
      //   32: astore_2
      //   33: aload_0
      //   34: monitorexit
      //   35: aload_2
      //   36: athrow
      //   37: astore_2
      //   38: aload_0
      //   39: monitorexit
      //   40: aconst_null
      //   41: areturn
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	42	0	this	VarBucket
      //   0	42	1	paramInt	int
      //   3	28	2	localObject1	Object
      //   32	4	2	localObject2	Object
      //   37	1	2	localIndexOutOfBoundsException	IndexOutOfBoundsException
      //   15	9	3	localValueInfo	Variables.ValueInfo
      // Exception table:
      //   from	to	target	type
      //   4	16	32	finally
      //   23	28	32	finally
      //   4	16	37	java/lang/IndexOutOfBoundsException
      //   23	28	37	java/lang/IndexOutOfBoundsException
    }
    
    /* Error */
    public int getVer(int paramInt)
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: iconst_m1
      //   3: istore_2
      //   4: aload_0
      //   5: getfield 22	com/miui/maml/data/Variables$VarBucket:mArray	Ljava/util/ArrayList;
      //   8: iload_1
      //   9: invokevirtual 30	java/util/ArrayList:get	(I)Ljava/lang/Object;
      //   12: checkcast 32	com/miui/maml/data/Variables$ValueInfo
      //   15: astore_3
      //   16: aload_3
      //   17: ifnonnull +8 -> 25
      //   20: iload_2
      //   21: istore_1
      //   22: goto +8 -> 30
      //   25: aload_3
      //   26: getfield 44	com/miui/maml/data/Variables$ValueInfo:mVersion	I
      //   29: istore_1
      //   30: aload_0
      //   31: monitorexit
      //   32: iload_1
      //   33: ireturn
      //   34: astore_3
      //   35: aload_0
      //   36: monitorexit
      //   37: aload_3
      //   38: athrow
      //   39: astore_3
      //   40: aload_0
      //   41: monitorexit
      //   42: iconst_m1
      //   43: ireturn
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	44	0	this	VarBucket
      //   0	44	1	paramInt	int
      //   3	18	2	i	int
      //   15	11	3	localValueInfo	Variables.ValueInfo
      //   34	4	3	localObject	Object
      //   39	1	3	localIndexOutOfBoundsException	IndexOutOfBoundsException
      // Exception table:
      //   from	to	target	type
      //   4	16	34	finally
      //   25	30	34	finally
      //   4	16	39	java/lang/IndexOutOfBoundsException
      //   25	30	39	java/lang/IndexOutOfBoundsException
    }
    
    protected void onAddItem(int paramInt)
    {
      while (this.mArray.size() <= paramInt) {
        this.mArray.add(null);
      }
    }
    
    public final void put(int paramInt1, T paramT, int paramInt2)
    {
      if (paramInt1 < 0) {
        return;
      }
      try
      {
        try
        {
          Variables.ValueInfo localValueInfo = (Variables.ValueInfo)this.mArray.get(paramInt1);
          if (localValueInfo == null)
          {
            localValueInfo = new com/miui/maml/data/Variables$ValueInfo;
            localValueInfo.<init>(paramT, 0, paramInt2);
            this.mArray.set(paramInt1, localValueInfo);
          }
          else
          {
            localValueInfo.setValue(paramT, paramInt2);
          }
        }
        finally {}
      }
      catch (IndexOutOfBoundsException paramT)
      {
        label69:
        break label69;
      }
    }
    
    public void reset()
    {
      int i = this.mArray.size();
      for (int j = 0; j < i; j++)
      {
        Variables.ValueInfo localValueInfo = (Variables.ValueInfo)this.mArray.get(j);
        if (localValueInfo != null) {
          localValueInfo.reset();
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.Variables
 * JD-Core Version:    0.7.0.1
 */