package kotlin.jvm.internal;

import kotlin.reflect.c;
import kotlin.reflect.d;
import kotlin.reflect.f;

public class PropertyReference1Impl
  extends PropertyReference1
{
  public PropertyReference1Impl(Class paramClass, String paramString1, String paramString2, int paramInt)
  {
    super(CallableReference.NO_RECEIVER, paramClass, paramString1, paramString2, paramInt);
  }
  
  public PropertyReference1Impl(Object paramObject, Class paramClass, String paramString1, String paramString2, int paramInt)
  {
    super(paramObject, paramClass, paramString1, paramString2, paramInt);
  }
  
  public PropertyReference1Impl(f paramf, String paramString1, String paramString2)
  {
    super(CallableReference.NO_RECEIVER, ((l)paramf).d(), paramString1, paramString2, paramf instanceof d ^ true);
  }
  
  public Object get(Object paramObject)
  {
    return getGetter().call(new Object[] { paramObject });
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.PropertyReference1Impl
 * JD-Core Version:    0.7.0.1
 */