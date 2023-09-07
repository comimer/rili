package c1;

import android.graphics.Path;
import com.airbnb.lottie.model.content.Mask;
import f1.d;
import g1.i;
import java.util.ArrayList;
import java.util.List;

public class h
{
  private final List<a<i, Path>> a;
  private final List<a<Integer, Integer>> b;
  private final List<Mask> c;
  
  public h(List<Mask> paramList)
  {
    this.c = paramList;
    this.a = new ArrayList(paramList.size());
    this.b = new ArrayList(paramList.size());
    for (int i = 0; i < paramList.size(); i++)
    {
      this.a.add(((Mask)paramList.get(i)).b().a());
      d locald = ((Mask)paramList.get(i)).c();
      this.b.add(locald.m());
    }
  }
  
  public List<a<i, Path>> a()
  {
    return this.a;
  }
  
  public List<Mask> b()
  {
    return this.c;
  }
  
  public List<a<Integer, Integer>> c()
  {
    return this.b;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c1.h
 * JD-Core Version:    0.7.0.1
 */