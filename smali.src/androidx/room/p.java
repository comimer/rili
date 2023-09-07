package androidx.room;

import java.io.File;
import l0.c;
import l0.c.a;
import l0.c.b;
import l0.c.c;

class p
  implements c.c
{
  private final String a;
  private final File b;
  private final c.c c;
  
  p(String paramString, File paramFile, c.c paramc)
  {
    this.a = paramString;
    this.b = paramFile;
    this.c = paramc;
  }
  
  public c a(c.b paramb)
  {
    return new o(paramb.a, this.a, this.b, paramb.c.a, this.c.a(paramb));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.room.p
 * JD-Core Version:    0.7.0.1
 */