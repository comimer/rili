package com.miui.maml.data;

public class IndexedVariable
{
  protected int mIndex;
  private boolean mIsNumber;
  protected Variables mVars;
  
  public IndexedVariable(String paramString, Variables paramVariables, boolean paramBoolean)
  {
    this.mIsNumber = paramBoolean;
    int i;
    if (paramBoolean) {
      i = paramVariables.registerDoubleVariable(paramString);
    } else {
      i = paramVariables.registerVariable(paramString);
    }
    this.mIndex = i;
    this.mVars = paramVariables;
  }
  
  public final Object get()
  {
    return this.mVars.get(this.mIndex);
  }
  
  public final Object getArr(int paramInt)
  {
    return this.mVars.getArr(this.mIndex, paramInt);
  }
  
  public final double getArrDouble(int paramInt)
  {
    return this.mVars.getArrDouble(this.mIndex, paramInt);
  }
  
  public final String getArrString(int paramInt)
  {
    return this.mVars.getArrString(this.mIndex, paramInt);
  }
  
  public final double getDouble()
  {
    return this.mVars.getDouble(this.mIndex);
  }
  
  public final int getIndex()
  {
    return this.mIndex;
  }
  
  public final String getString()
  {
    return this.mVars.getString(this.mIndex);
  }
  
  public final Variables getVariables()
  {
    return this.mVars;
  }
  
  public final int getVersion()
  {
    return this.mVars.getVer(this.mIndex, this.mIsNumber);
  }
  
  public final boolean isNull()
  {
    boolean bool1 = this.mIsNumber;
    boolean bool2 = true;
    if (bool1 ? this.mVars.existsDouble(this.mIndex) : this.mVars.get(this.mIndex) != null) {
      bool2 = false;
    }
    return bool2;
  }
  
  public final boolean isNull(int paramInt)
  {
    boolean bool1 = this.mIsNumber;
    boolean bool2 = true;
    if (bool1 ? this.mVars.existsArrItem(this.mIndex, paramInt) : this.mVars.getArr(this.mIndex, paramInt) != null) {
      bool2 = false;
    }
    return bool2;
  }
  
  public final void set(double paramDouble)
  {
    this.mVars.put(this.mIndex, paramDouble);
  }
  
  public final boolean set(Object paramObject)
  {
    if (this.mIsNumber) {
      return this.mVars.putDouble(this.mIndex, paramObject);
    }
    this.mVars.put(this.mIndex, paramObject);
    return true;
  }
  
  public final boolean setArr(int paramInt, double paramDouble)
  {
    return this.mVars.putArr(this.mIndex, paramInt, paramDouble);
  }
  
  public final boolean setArr(int paramInt, Object paramObject)
  {
    boolean bool;
    if (this.mIsNumber) {
      bool = this.mVars.putArrDouble(this.mIndex, paramInt, paramObject);
    } else {
      bool = this.mVars.putArr(this.mIndex, paramInt, paramObject);
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.IndexedVariable
 * JD-Core Version:    0.7.0.1
 */