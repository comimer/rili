package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.j;
import kotlin.collections.t;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/i0;", "T", "Ljava/lang/Class;", "modelClass", "Ljava/lang/reflect/Constructor;", "constructor", "", "", "params", "d", "(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/i0;", "", "signature", "c", "a", "Ljava/util/List;", "ANDROID_VIEWMODEL_SIGNATURE", "b", "VIEWMODEL_SIGNATURE", "lifecycle-viewmodel-savedstate_release"}, k=2, mv={1, 6, 0})
public final class g0
{
  private static final List<Class<?>> a = t.m(new Class[] { Application.class, c0.class });
  private static final List<Class<?>> b = t.e(c0.class);
  
  public static final <T> Constructor<T> c(Class<T> paramClass, List<? extends Class<?>> paramList)
  {
    r.f(paramClass, "modelClass");
    r.f(paramList, "signature");
    Constructor[] arrayOfConstructor = paramClass.getConstructors();
    r.e(arrayOfConstructor, "modelClass.constructors");
    int i = arrayOfConstructor.length;
    for (int j = 0; j < i; j++)
    {
      Object localObject1 = arrayOfConstructor[j];
      Object localObject2 = ((Constructor)localObject1).getParameterTypes();
      r.e(localObject2, "constructor.parameterTypes");
      localObject2 = j.Z((Object[])localObject2);
      if (r.a(paramList, localObject2)) {
        return localObject1;
      }
      if ((paramList.size() == ((List)localObject2).size()) && (((List)localObject2).containsAll(paramList)))
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("Class ");
        ((StringBuilder)localObject1).append(paramClass.getSimpleName());
        ((StringBuilder)localObject1).append(" must have parameters in the proper order: ");
        ((StringBuilder)localObject1).append(paramList);
        throw new UnsupportedOperationException(((StringBuilder)localObject1).toString());
      }
    }
    return null;
  }
  
  public static final <T extends i0> T d(Class<T> paramClass, Constructor<T> paramConstructor, Object... paramVarArgs)
  {
    r.f(paramClass, "modelClass");
    r.f(paramConstructor, "constructor");
    r.f(paramVarArgs, "params");
    try
    {
      paramConstructor = (i0)paramConstructor.newInstance(Arrays.copyOf(paramVarArgs, paramVarArgs.length));
      return paramConstructor;
    }
    catch (InvocationTargetException paramVarArgs)
    {
      paramConstructor = new StringBuilder();
      paramConstructor.append("An exception happened in constructor of ");
      paramConstructor.append(paramClass);
      throw new RuntimeException(paramConstructor.toString(), paramVarArgs.getCause());
    }
    catch (InstantiationException paramVarArgs)
    {
      paramConstructor = new StringBuilder();
      paramConstructor.append("A ");
      paramConstructor.append(paramClass);
      paramConstructor.append(" cannot be instantiated.");
      throw new RuntimeException(paramConstructor.toString(), paramVarArgs);
    }
    catch (IllegalAccessException paramVarArgs)
    {
      paramConstructor = new StringBuilder();
      paramConstructor.append("Failed to access ");
      paramConstructor.append(paramClass);
      throw new RuntimeException(paramConstructor.toString(), paramVarArgs);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.g0
 * JD-Core Version:    0.7.0.1
 */