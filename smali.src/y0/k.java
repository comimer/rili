package y0;

import androidx.work.WorkerParameters.a;
import q0.d;
import q0.i;

public class k
  implements Runnable
{
  private i a;
  private String b;
  private WorkerParameters.a c;
  
  public k(i parami, String paramString, WorkerParameters.a parama)
  {
    this.a = parami;
    this.b = paramString;
    this.c = parama;
  }
  
  public void run()
  {
    this.a.p().k(this.b, this.c);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y0.k
 * JD-Core Version:    0.7.0.1
 */