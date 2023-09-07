package kotlin.jvm.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import kotlin.jvm.KotlinReflectionNotSupportedError;
import kotlin.reflect.KParameter;
import kotlin.reflect.KVisibility;
import kotlin.reflect.b;
import kotlin.reflect.c;
import kotlin.reflect.f;
import kotlin.reflect.p;
import kotlin.reflect.q;

public abstract class CallableReference
  implements c, Serializable
{
  public static final Object NO_RECEIVER = NoReceiver.INSTANCE;
  private final boolean isTopLevel;
  private final String name;
  private final Class owner;
  protected final Object receiver;
  private transient c reflected;
  private final String signature;
  
  public CallableReference()
  {
    this(NO_RECEIVER);
  }
  
  protected CallableReference(Object paramObject)
  {
    this(paramObject, null, null, null, false);
  }
  
  protected CallableReference(Object paramObject, Class paramClass, String paramString1, String paramString2, boolean paramBoolean)
  {
    this.receiver = paramObject;
    this.owner = paramClass;
    this.name = paramString1;
    this.signature = paramString2;
    this.isTopLevel = paramBoolean;
  }
  
  public Object call(Object... paramVarArgs)
  {
    return getReflected().call(paramVarArgs);
  }
  
  public Object callBy(Map paramMap)
  {
    return getReflected().callBy(paramMap);
  }
  
  public c compute()
  {
    c localc1 = this.reflected;
    c localc2 = localc1;
    if (localc1 == null)
    {
      localc2 = computeReflected();
      this.reflected = localc2;
    }
    return localc2;
  }
  
  protected abstract c computeReflected();
  
  public List<Annotation> getAnnotations()
  {
    return getReflected().getAnnotations();
  }
  
  public Object getBoundReceiver()
  {
    return this.receiver;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public f getOwner()
  {
    Object localObject = this.owner;
    if (localObject == null) {
      localObject = null;
    } else if (this.isTopLevel) {
      localObject = v.c((Class)localObject);
    } else {
      localObject = v.b((Class)localObject);
    }
    return localObject;
  }
  
  public List<KParameter> getParameters()
  {
    return getReflected().getParameters();
  }
  
  protected c getReflected()
  {
    c localc = compute();
    if (localc != this) {
      return localc;
    }
    throw new KotlinReflectionNotSupportedError();
  }
  
  public p getReturnType()
  {
    return getReflected().getReturnType();
  }
  
  public String getSignature()
  {
    return this.signature;
  }
  
  public List<q> getTypeParameters()
  {
    return getReflected().getTypeParameters();
  }
  
  public KVisibility getVisibility()
  {
    return getReflected().getVisibility();
  }
  
  public boolean isAbstract()
  {
    return getReflected().isAbstract();
  }
  
  public boolean isFinal()
  {
    return getReflected().isFinal();
  }
  
  public boolean isOpen()
  {
    return getReflected().isOpen();
  }
  
  public boolean isSuspend()
  {
    return getReflected().isSuspend();
  }
  
  private static class NoReceiver
    implements Serializable
  {
    private static final NoReceiver INSTANCE = new NoReceiver();
    
    private Object readResolve()
      throws ObjectStreamException
    {
      return INSTANCE;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.CallableReference
 * JD-Core Version:    0.7.0.1
 */