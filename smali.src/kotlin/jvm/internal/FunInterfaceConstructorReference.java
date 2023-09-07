package kotlin.jvm.internal;

import kotlin.reflect.g;

public class FunInterfaceConstructorReference
  extends FunctionReference
{
  private final Class funInterface;
  
  public FunInterfaceConstructorReference(Class paramClass)
  {
    super(1);
    this.funInterface = paramClass;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof FunInterfaceConstructorReference)) {
      return false;
    }
    paramObject = (FunInterfaceConstructorReference)paramObject;
    return this.funInterface.equals(paramObject.funInterface);
  }
  
  protected g getReflected()
  {
    throw new UnsupportedOperationException("Functional interface constructor does not support reflection");
  }
  
  public int hashCode()
  {
    return this.funInterface.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("fun interface ");
    localStringBuilder.append(this.funInterface.getName());
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.FunInterfaceConstructorReference
 * JD-Core Version:    0.7.0.1
 */