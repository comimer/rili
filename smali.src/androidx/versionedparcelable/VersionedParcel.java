package androidx.versionedparcelable;

import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import n.a;
import n.g;

public abstract class VersionedParcel
{
  protected final a<String, Method> a;
  protected final a<String, Method> b;
  protected final a<String, Class> c;
  
  public VersionedParcel(a<String, Method> parama1, a<String, Method> parama2, a<String, Class> parama)
  {
    this.a = parama1;
    this.b = parama2;
    this.c = parama;
  }
  
  private void N(b paramb)
  {
    try
    {
      Class localClass = c(paramb.getClass());
      I(localClass.getName());
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramb.getClass().getSimpleName());
      localStringBuilder.append(" does not have a Parcelizer");
      throw new RuntimeException(localStringBuilder.toString(), localClassNotFoundException);
    }
  }
  
  private Class c(Class<? extends b> paramClass)
    throws ClassNotFoundException
  {
    Class localClass1 = (Class)this.c.get(paramClass.getName());
    Class localClass2 = localClass1;
    if (localClass1 == null)
    {
      localClass2 = Class.forName(String.format("%s.%sParcelizer", new Object[] { paramClass.getPackage().getName(), paramClass.getSimpleName() }), false, paramClass.getClassLoader());
      this.c.put(paramClass.getName(), localClass2);
    }
    return localClass2;
  }
  
  private Method d(String paramString)
    throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException
  {
    Method localMethod1 = (Method)this.a.get(paramString);
    Method localMethod2 = localMethod1;
    if (localMethod1 == null)
    {
      System.currentTimeMillis();
      localMethod2 = Class.forName(paramString, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", new Class[] { VersionedParcel.class });
      this.a.put(paramString, localMethod2);
    }
    return localMethod2;
  }
  
  private Method e(Class paramClass)
    throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException
  {
    Method localMethod = (Method)this.b.get(paramClass.getName());
    Object localObject = localMethod;
    if (localMethod == null)
    {
      localObject = c(paramClass);
      System.currentTimeMillis();
      localObject = ((Class)localObject).getDeclaredMethod("write", new Class[] { paramClass, VersionedParcel.class });
      this.b.put(paramClass.getName(), localObject);
    }
    return localObject;
  }
  
  protected abstract void A(byte[] paramArrayOfByte);
  
  public void B(byte[] paramArrayOfByte, int paramInt)
  {
    w(paramInt);
    A(paramArrayOfByte);
  }
  
  protected abstract void C(CharSequence paramCharSequence);
  
  public void D(CharSequence paramCharSequence, int paramInt)
  {
    w(paramInt);
    C(paramCharSequence);
  }
  
  protected abstract void E(int paramInt);
  
  public void F(int paramInt1, int paramInt2)
  {
    w(paramInt2);
    E(paramInt1);
  }
  
  protected abstract void G(Parcelable paramParcelable);
  
  public void H(Parcelable paramParcelable, int paramInt)
  {
    w(paramInt);
    G(paramParcelable);
  }
  
  protected abstract void I(String paramString);
  
  public void J(String paramString, int paramInt)
  {
    w(paramInt);
    I(paramString);
  }
  
  protected <T extends b> void K(T paramT, VersionedParcel paramVersionedParcel)
  {
    try
    {
      e(paramT.getClass()).invoke(null, new Object[] { paramT, paramVersionedParcel });
      return;
    }
    catch (ClassNotFoundException paramT)
    {
      throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", paramT);
    }
    catch (NoSuchMethodException paramT)
    {
      throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", paramT);
    }
    catch (InvocationTargetException paramT)
    {
      if ((paramT.getCause() instanceof RuntimeException)) {
        throw ((RuntimeException)paramT.getCause());
      }
      throw new RuntimeException("VersionedParcel encountered InvocationTargetException", paramT);
    }
    catch (IllegalAccessException paramT)
    {
      throw new RuntimeException("VersionedParcel encountered IllegalAccessException", paramT);
    }
  }
  
  protected void L(b paramb)
  {
    if (paramb == null)
    {
      I(null);
      return;
    }
    N(paramb);
    VersionedParcel localVersionedParcel = b();
    K(paramb, localVersionedParcel);
    localVersionedParcel.a();
  }
  
  public void M(b paramb, int paramInt)
  {
    w(paramInt);
    L(paramb);
  }
  
  protected abstract void a();
  
  protected abstract VersionedParcel b();
  
  public boolean f()
  {
    return false;
  }
  
  protected abstract boolean g();
  
  public boolean h(boolean paramBoolean, int paramInt)
  {
    if (!m(paramInt)) {
      return paramBoolean;
    }
    return g();
  }
  
  protected abstract byte[] i();
  
  public byte[] j(byte[] paramArrayOfByte, int paramInt)
  {
    if (!m(paramInt)) {
      return paramArrayOfByte;
    }
    return i();
  }
  
  protected abstract CharSequence k();
  
  public CharSequence l(CharSequence paramCharSequence, int paramInt)
  {
    if (!m(paramInt)) {
      return paramCharSequence;
    }
    return k();
  }
  
  protected abstract boolean m(int paramInt);
  
  protected <T extends b> T n(String paramString, VersionedParcel paramVersionedParcel)
  {
    try
    {
      paramString = (b)d(paramString).invoke(null, new Object[] { paramVersionedParcel });
      return paramString;
    }
    catch (ClassNotFoundException paramString)
    {
      throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", paramString);
    }
    catch (NoSuchMethodException paramString)
    {
      throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", paramString);
    }
    catch (InvocationTargetException paramString)
    {
      if ((paramString.getCause() instanceof RuntimeException)) {
        throw ((RuntimeException)paramString.getCause());
      }
      throw new RuntimeException("VersionedParcel encountered InvocationTargetException", paramString);
    }
    catch (IllegalAccessException paramString)
    {
      throw new RuntimeException("VersionedParcel encountered IllegalAccessException", paramString);
    }
  }
  
  protected abstract int o();
  
  public int p(int paramInt1, int paramInt2)
  {
    if (!m(paramInt2)) {
      return paramInt1;
    }
    return o();
  }
  
  protected abstract <T extends Parcelable> T q();
  
  public <T extends Parcelable> T r(T paramT, int paramInt)
  {
    if (!m(paramInt)) {
      return paramT;
    }
    return q();
  }
  
  protected abstract String s();
  
  public String t(String paramString, int paramInt)
  {
    if (!m(paramInt)) {
      return paramString;
    }
    return s();
  }
  
  protected <T extends b> T u()
  {
    String str = s();
    if (str == null) {
      return null;
    }
    return n(str, b());
  }
  
  public <T extends b> T v(T paramT, int paramInt)
  {
    if (!m(paramInt)) {
      return paramT;
    }
    return u();
  }
  
  protected abstract void w(int paramInt);
  
  public void x(boolean paramBoolean1, boolean paramBoolean2) {}
  
  protected abstract void y(boolean paramBoolean);
  
  public void z(boolean paramBoolean, int paramInt)
  {
    w(paramInt);
    y(paramBoolean);
  }
  
  public static class ParcelException
    extends RuntimeException
  {
    public ParcelException(Throwable paramThrowable)
    {
      super();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.versionedparcelable.VersionedParcel
 * JD-Core Version:    0.7.0.1
 */