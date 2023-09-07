package kotlin.jvm.internal;

import kotlin.reflect.l;

public abstract class PropertyReference
  extends CallableReference
  implements l
{
  public PropertyReference() {}
  
  public PropertyReference(Object paramObject)
  {
    super(paramObject);
  }
  
  public PropertyReference(Object paramObject, Class paramClass, String paramString1, String paramString2, int paramInt)
  {
    super(paramObject, paramClass, paramString1, paramString2, bool);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof PropertyReference))
    {
      paramObject = (PropertyReference)paramObject;
      if ((!getOwner().equals(paramObject.getOwner())) || (!getName().equals(paramObject.getName())) || (!getSignature().equals(paramObject.getSignature())) || (!r.a(getBoundReceiver(), paramObject.getBoundReceiver()))) {
        bool = false;
      }
      return bool;
    }
    if ((paramObject instanceof l)) {
      return paramObject.equals(compute());
    }
    return false;
  }
  
  protected l getReflected()
  {
    return (l)super.getReflected();
  }
  
  public int hashCode()
  {
    return (getOwner().hashCode() * 31 + getName().hashCode()) * 31 + getSignature().hashCode();
  }
  
  public boolean isConst()
  {
    return getReflected().isConst();
  }
  
  public boolean isLateinit()
  {
    return getReflected().isLateinit();
  }
  
  public String toString()
  {
    Object localObject = compute();
    if (localObject != this) {
      return localObject.toString();
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("property ");
    ((StringBuilder)localObject).append(getName());
    ((StringBuilder)localObject).append(" (Kotlin reflection is not available)");
    return ((StringBuilder)localObject).toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.PropertyReference
 * JD-Core Version:    0.7.0.1
 */