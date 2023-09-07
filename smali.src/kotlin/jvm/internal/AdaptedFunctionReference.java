package kotlin.jvm.internal;

import java.io.Serializable;
import kotlin.reflect.f;

public class AdaptedFunctionReference
  implements p, Serializable
{
  private final int arity;
  private final int flags;
  private final boolean isTopLevel;
  private final String name;
  private final Class owner;
  protected final Object receiver;
  private final String signature;
  
  public AdaptedFunctionReference(int paramInt1, Class paramClass, String paramString1, String paramString2, int paramInt2)
  {
    this(paramInt1, CallableReference.NO_RECEIVER, paramClass, paramString1, paramString2, paramInt2);
  }
  
  public AdaptedFunctionReference(int paramInt1, Object paramObject, Class paramClass, String paramString1, String paramString2, int paramInt2)
  {
    this.receiver = paramObject;
    this.owner = paramClass;
    this.name = paramString1;
    this.signature = paramString2;
    boolean bool;
    if ((paramInt2 & 0x1) == 1) {
      bool = true;
    } else {
      bool = false;
    }
    this.isTopLevel = bool;
    this.arity = paramInt1;
    this.flags = (paramInt2 >> 1);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof AdaptedFunctionReference)) {
      return false;
    }
    paramObject = (AdaptedFunctionReference)paramObject;
    if ((this.isTopLevel != paramObject.isTopLevel) || (this.arity != paramObject.arity) || (this.flags != paramObject.flags) || (!r.a(this.receiver, paramObject.receiver)) || (!r.a(this.owner, paramObject.owner)) || (!this.name.equals(paramObject.name)) || (!this.signature.equals(paramObject.signature))) {
      bool = false;
    }
    return bool;
  }
  
  public int getArity()
  {
    return this.arity;
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
  
  public int hashCode()
  {
    Object localObject = this.receiver;
    int i = 0;
    int j;
    if (localObject != null) {
      j = localObject.hashCode();
    } else {
      j = 0;
    }
    localObject = this.owner;
    if (localObject != null) {
      i = localObject.hashCode();
    }
    int k = this.name.hashCode();
    int m = this.signature.hashCode();
    int n;
    if (this.isTopLevel) {
      n = 1231;
    } else {
      n = 1237;
    }
    return (((((j * 31 + i) * 31 + k) * 31 + m) * 31 + n) * 31 + this.arity) * 31 + this.flags;
  }
  
  public String toString()
  {
    return v.k(this);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.AdaptedFunctionReference
 * JD-Core Version:    0.7.0.1
 */