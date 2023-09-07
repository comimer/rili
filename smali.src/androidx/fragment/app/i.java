package androidx.fragment.app;

import n.g;

public class i
{
  private static final g<ClassLoader, g<String, Class<?>>> a = new g();
  
  static boolean b(ClassLoader paramClassLoader, String paramString)
  {
    try
    {
      boolean bool = Fragment.class.isAssignableFrom(c(paramClassLoader, paramString));
      return bool;
    }
    catch (ClassNotFoundException paramClassLoader) {}
    return false;
  }
  
  private static Class<?> c(ClassLoader paramClassLoader, String paramString)
    throws ClassNotFoundException
  {
    Object localObject1 = a;
    Object localObject2 = (g)((g)localObject1).get(paramClassLoader);
    Object localObject3 = localObject2;
    if (localObject2 == null)
    {
      localObject3 = new g();
      ((g)localObject1).put(paramClassLoader, localObject3);
    }
    localObject1 = (Class)((g)localObject3).get(paramString);
    localObject2 = localObject1;
    if (localObject1 == null)
    {
      localObject2 = Class.forName(paramString, false, paramClassLoader);
      ((g)localObject3).put(paramString, localObject2);
    }
    return localObject2;
  }
  
  public static Class<? extends Fragment> d(ClassLoader paramClassLoader, String paramString)
  {
    try
    {
      paramClassLoader = c(paramClassLoader, paramString);
      return paramClassLoader;
    }
    catch (ClassCastException paramClassLoader)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unable to instantiate fragment ");
      localStringBuilder.append(paramString);
      localStringBuilder.append(": make sure class is a valid subclass of Fragment");
      throw new Fragment.InstantiationException(localStringBuilder.toString(), paramClassLoader);
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      paramClassLoader = new StringBuilder();
      paramClassLoader.append("Unable to instantiate fragment ");
      paramClassLoader.append(paramString);
      paramClassLoader.append(": make sure class name exists");
      throw new Fragment.InstantiationException(paramClassLoader.toString(), localClassNotFoundException);
    }
  }
  
  public Fragment a(ClassLoader paramClassLoader, String paramString)
  {
    throw null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.i
 * JD-Core Version:    0.7.0.1
 */