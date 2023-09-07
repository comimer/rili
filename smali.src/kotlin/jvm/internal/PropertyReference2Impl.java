package kotlin.jvm.internal;

import kotlin.reflect.c;
import kotlin.reflect.d;
import kotlin.reflect.f;

public class PropertyReference2Impl
  extends PropertyReference2
{
  public PropertyReference2Impl(Class paramClass, String paramString1, String paramString2, int paramInt)
  {
    super(paramClass, paramString1, paramString2, paramInt);
  }
  
  public PropertyReference2Impl(f paramf, String paramString1, String paramString2)
  {
    super(((l)paramf).d(), paramString1, paramString2, paramf instanceof d ^ true);
  }
  
  public Object get(Object paramObject1, Object paramObject2)
  {
    return getGetter().call(new Object[] { paramObject1, paramObject2 });
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.PropertyReference2Impl
 * JD-Core Version:    0.7.0.1
 */