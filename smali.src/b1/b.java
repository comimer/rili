package b1;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;
import k1.h;

public class b
{
  private final List<u> a = new ArrayList();
  
  void a(u paramu)
  {
    this.a.add(paramu);
  }
  
  public void b(Path paramPath)
  {
    for (int i = this.a.size() - 1; i >= 0; i--) {
      h.b(paramPath, (u)this.a.get(i));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b1.b
 * JD-Core Version:    0.7.0.1
 */