package s7;

import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.k;

@Metadata(bv={}, d1={""}, d2={"", "a", "kotlin-stdlib"}, k=2, mv={1, 7, 1})
public final class b
{
  public static final a a;
  
  static
  {
    int i = a();
    if ((i >= 65544) || (i < 65536))
    {
      try
      {
        localObject1 = u7.a.class.newInstance();
        r.e(localObject1, "forName(\"kotlin.internal…entations\").newInstance()");
        if (localObject1 != null)
        {
          try
          {
            a locala1 = (a)localObject1;
          }
          catch (ClassCastException localClassCastException1)
          {
            break label56;
          }
        }
        else
        {
          localNullPointerException1 = new java/lang/NullPointerException;
          localNullPointerException1.<init>("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
          throw localNullPointerException1;
        }
      }
      catch (ClassNotFoundException localClassNotFoundException1)
      {
        label260:
        try
        {
          NullPointerException localNullPointerException1;
          label56:
          localObject1 = Class.forName("kotlin.internal.JRE8PlatformImplementations").newInstance();
          r.e(localObject1, "forName(\"kotlin.internal…entations\").newInstance()");
          if (localObject1 != null)
          {
            try
            {
              a locala2 = (a)localObject1;
            }
            catch (ClassCastException localClassCastException2)
            {
              break label183;
            }
          }
          else
          {
            localObject2 = new java/lang/NullPointerException;
            ((NullPointerException)localObject2).<init>("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
            throw ((Throwable)localObject2);
          }
        }
        catch (ClassNotFoundException localClassNotFoundException3)
        {
          Object localObject1;
          Object localObject4;
          Object localObject5;
          Object localObject6;
          Object localObject2;
          label183:
          break label262;
        }
        localObject6 = localObject1.getClass().getClassLoader();
        localObject1 = a.class.getClassLoader();
        if (r.a(localObject6, localObject1)) {
          break label260;
        }
        localObject5 = new java/lang/ClassNotFoundException;
        localObject4 = new java/lang/StringBuilder;
        ((StringBuilder)localObject4).<init>();
        ((StringBuilder)localObject4).append("Instance class was loaded from a different classloader: ");
        ((StringBuilder)localObject4).append(localObject6);
        ((StringBuilder)localObject4).append(", base type classloader: ");
        ((StringBuilder)localObject4).append(localObject1);
        ((ClassNotFoundException)localObject5).<init>(((StringBuilder)localObject4).toString(), (Throwable)localObject2);
        throw ((Throwable)localObject5);
        throw ((Throwable)localObject2);
      }
      localObject4 = localObject1.getClass().getClassLoader();
      localObject1 = a.class.getClassLoader();
      if (!r.a(localObject4, localObject1))
      {
        localObject5 = new java/lang/ClassNotFoundException;
        localObject6 = new java/lang/StringBuilder;
        ((StringBuilder)localObject6).<init>();
        ((StringBuilder)localObject6).append("Instance class was loaded from a different classloader: ");
        ((StringBuilder)localObject6).append(localObject4);
        ((StringBuilder)localObject6).append(", base type classloader: ");
        ((StringBuilder)localObject6).append(localObject1);
        ((ClassNotFoundException)localObject5).<init>(((StringBuilder)localObject6).toString(), localNullPointerException1);
        throw ((Throwable)localObject5);
      }
      throw localNullPointerException1;
    }
    else
    {
      label262:
      if ((i >= 65543) || (i < 65536))
      {
        try
        {
          localObject1 = t7.a.class.newInstance();
          r.e(localObject1, "forName(\"kotlin.internal…entations\").newInstance()");
          if (localObject1 != null)
          {
            try
            {
              localObject2 = (a)localObject1;
            }
            catch (ClassCastException localClassCastException3)
            {
              break label314;
            }
          }
          else
          {
            localNullPointerException2 = new java/lang/NullPointerException;
            localNullPointerException2.<init>("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
            throw localNullPointerException2;
          }
        }
        catch (ClassNotFoundException localClassNotFoundException2)
        {
          try
          {
            NullPointerException localNullPointerException2;
            label314:
            localObject1 = Class.forName("kotlin.internal.JRE7PlatformImplementations").newInstance();
            r.e(localObject1, "forName(\"kotlin.internal…entations\").newInstance()");
            if (localObject1 != null)
            {
              try
              {
                a locala3 = (a)localObject1;
              }
              catch (ClassCastException localClassCastException4)
              {
                break label441;
              }
            }
            else
            {
              localObject3 = new java/lang/NullPointerException;
              ((NullPointerException)localObject3).<init>("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
              throw ((Throwable)localObject3);
            }
          }
          catch (ClassNotFoundException localClassNotFoundException4)
          {
            Object localObject3;
            break label520;
          }
          localObject1 = localObject1.getClass().getClassLoader();
          localObject5 = a.class.getClassLoader();
          if (r.a(localObject1, localObject5)) {
            break label518;
          }
          localObject6 = new java/lang/ClassNotFoundException;
          localObject4 = new java/lang/StringBuilder;
          ((StringBuilder)localObject4).<init>();
          ((StringBuilder)localObject4).append("Instance class was loaded from a different classloader: ");
          ((StringBuilder)localObject4).append(localObject1);
          ((StringBuilder)localObject4).append(", base type classloader: ");
          ((StringBuilder)localObject4).append(localObject5);
          ((ClassNotFoundException)localObject6).<init>(((StringBuilder)localObject4).toString(), (Throwable)localObject3);
          throw ((Throwable)localObject6);
          throw ((Throwable)localObject3);
        }
        localObject4 = localObject1.getClass().getClassLoader();
        localObject1 = a.class.getClassLoader();
        if (!r.a(localObject4, localObject1))
        {
          localObject5 = new java/lang/ClassNotFoundException;
          localObject6 = new java/lang/StringBuilder;
          ((StringBuilder)localObject6).<init>();
          ((StringBuilder)localObject6).append("Instance class was loaded from a different classloader: ");
          ((StringBuilder)localObject6).append(localObject4);
          ((StringBuilder)localObject6).append(", base type classloader: ");
          ((StringBuilder)localObject6).append(localObject1);
          ((ClassNotFoundException)localObject5).<init>(((StringBuilder)localObject6).toString(), localNullPointerException2);
          throw ((Throwable)localObject5);
        }
        throw localNullPointerException2;
      }
      label441:
      localObject3 = new a();
      label518:
      label520:
      a = (a)localObject3;
      return;
    }
  }
  
  private static final int a()
  {
    String str1 = System.getProperty("java.specification.version");
    int i = 65542;
    if (str1 == null) {
      return 65542;
    }
    int j = k.T(str1, '.', 0, false, 6, null);
    if (j < 0) {}
    try
    {
      k = Integer.parseInt(str1);
      i = k * 65536;
    }
    catch (NumberFormatException localNumberFormatException1)
    {
      int k;
      label42:
      int m;
      int n;
      String str2;
      break label42;
    }
    return i;
    m = j + 1;
    n = k.T(str1, '.', m, false, 4, null);
    k = n;
    if (n < 0) {
      k = str1.length();
    }
    str2 = str1.substring(0, j);
    r.e(str2, "this as java.lang.String…ing(startIndex, endIndex)");
    str1 = str1.substring(m, k);
    r.e(str1, "this as java.lang.String…ing(startIndex, endIndex)");
    try
    {
      n = Integer.parseInt(str2);
      k = Integer.parseInt(str1);
      i = n * 65536 + k;
    }
    catch (NumberFormatException localNumberFormatException2)
    {
      label124:
      break label124;
    }
    return i;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s7.b
 * JD-Core Version:    0.7.0.1
 */