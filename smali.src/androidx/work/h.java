package androidx.work;

import java.util.List;

public abstract class h
{
  private static final String a = k.f("InputMerger");
  
  public static h a(String paramString)
  {
    try
    {
      localObject = (h)Class.forName(paramString).newInstance();
      return localObject;
    }
    catch (Exception localException)
    {
      k localk = k.c();
      Object localObject = a;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Trouble instantiating + ");
      localStringBuilder.append(paramString);
      localk.b((String)localObject, localStringBuilder.toString(), new Throwable[] { localException });
    }
    return null;
  }
  
  public abstract d b(List<d> paramList);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.h
 * JD-Core Version:    0.7.0.1
 */