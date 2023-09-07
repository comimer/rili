package kotlin.jvm.internal;

import kotlin.reflect.c;
import kotlin.reflect.n;
import kotlin.reflect.n.a;

public abstract class PropertyReference1
  extends PropertyReference
  implements n
{
  public PropertyReference1() {}
  
  public PropertyReference1(Object paramObject)
  {
    super(paramObject);
  }
  
  public PropertyReference1(Object paramObject, Class paramClass, String paramString1, String paramString2, int paramInt)
  {
    super(paramObject, paramClass, paramString1, paramString2, paramInt);
  }
  
  protected c computeReflected()
  {
    return v.i(this);
  }
  
  public Object getDelegate(Object paramObject)
  {
    return ((n)getReflected()).getDelegate(paramObject);
  }
  
  public n.a getGetter()
  {
    return ((n)getReflected()).getGetter();
  }
  
  public Object invoke(Object paramObject)
  {
    return get(paramObject);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.PropertyReference1
 * JD-Core Version:    0.7.0.1
 */