package r7;

import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.u;

@Metadata(bv={}, d1={""}, d2={"", "start", "isDaemon", "Ljava/lang/ClassLoader;", "contextClassLoader", "", "name", "", "priority", "Lkotlin/Function0;", "Lkotlin/u;", "block", "Ljava/lang/Thread;", "a", "kotlin-stdlib"}, k=2, mv={1, 7, 1})
public final class a
{
  public static final Thread a(boolean paramBoolean1, boolean paramBoolean2, ClassLoader paramClassLoader, String paramString, int paramInt, w7.a<u> parama)
  {
    r.f(parama, "block");
    parama = new a(parama);
    if (paramBoolean2) {
      parama.setDaemon(true);
    }
    if (paramInt > 0) {
      parama.setPriority(paramInt);
    }
    if (paramString != null) {
      parama.setName(paramString);
    }
    if (paramClassLoader != null) {
      parama.setContextClassLoader(paramClassLoader);
    }
    if (paramBoolean1) {
      parama.start();
    }
    return parama;
  }
  
  @Metadata(bv={}, d1={""}, d2={"r7/a$a", "Ljava/lang/Thread;", "Lkotlin/u;", "run", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a
    extends Thread
  {
    a(w7.a<u> parama) {}
    
    public void run()
    {
      this.a.invoke();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r7.a
 * JD-Core Version:    0.7.0.1
 */