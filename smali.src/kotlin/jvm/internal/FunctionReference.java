package kotlin.jvm.internal;

import kotlin.reflect.c;
import kotlin.reflect.g;

public class FunctionReference
  extends CallableReference
  implements p, g
{
  private final int arity;
  private final int flags;
  
  public FunctionReference(int paramInt)
  {
    this(paramInt, CallableReference.NO_RECEIVER, null, null, null, 0);
  }
  
  public FunctionReference(int paramInt, Object paramObject)
  {
    this(paramInt, paramObject, null, null, null, 0);
  }
  
  public FunctionReference(int paramInt1, Object paramObject, Class paramClass, String paramString1, String paramString2, int paramInt2)
  {
    super(paramObject, paramClass, paramString1, paramString2, bool);
    this.arity = paramInt1;
    this.flags = (paramInt2 >> 1);
  }
  
  protected c computeReflected()
  {
    return v.a(this);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof FunctionReference))
    {
      paramObject = (FunctionReference)paramObject;
      if ((!getName().equals(paramObject.getName())) || (!getSignature().equals(paramObject.getSignature())) || (this.flags != paramObject.flags) || (this.arity != paramObject.arity) || (!r.a(getBoundReceiver(), paramObject.getBoundReceiver())) || (!r.a(getOwner(), paramObject.getOwner()))) {
        bool = false;
      }
      return bool;
    }
    if ((paramObject instanceof g)) {
      return paramObject.equals(compute());
    }
    return false;
  }
  
  public int getArity()
  {
    return this.arity;
  }
  
  protected g getReflected()
  {
    return (g)super.getReflected();
  }
  
  public int hashCode()
  {
    int i;
    if (getOwner() == null) {
      i = 0;
    } else {
      i = getOwner().hashCode() * 31;
    }
    return (i + getName().hashCode()) * 31 + getSignature().hashCode();
  }
  
  public boolean isExternal()
  {
    return getReflected().isExternal();
  }
  
  public boolean isInfix()
  {
    return getReflected().isInfix();
  }
  
  public boolean isInline()
  {
    return getReflected().isInline();
  }
  
  public boolean isOperator()
  {
    return getReflected().isOperator();
  }
  
  public boolean isSuspend()
  {
    return getReflected().isSuspend();
  }
  
  public String toString()
  {
    Object localObject = compute();
    if (localObject != this) {
      return localObject.toString();
    }
    if ("<init>".equals(getName()))
    {
      localObject = "constructor (Kotlin reflection is not available)";
    }
    else
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("function ");
      ((StringBuilder)localObject).append(getName());
      ((StringBuilder)localObject).append(" (Kotlin reflection is not available)");
      localObject = ((StringBuilder)localObject).toString();
    }
    return localObject;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.FunctionReference
 * JD-Core Version:    0.7.0.1
 */