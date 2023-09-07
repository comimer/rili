package androidx.work;

import android.net.Network;
import android.net.Uri;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
import z0.a;

public final class WorkerParameters
{
  private UUID a;
  private d b;
  private Set<String> c;
  private a d;
  private int e;
  private Executor f;
  private a g;
  private t h;
  private n i;
  private f j;
  
  public WorkerParameters(UUID paramUUID, d paramd, Collection<String> paramCollection, a parama, int paramInt, Executor paramExecutor, a parama1, t paramt, n paramn, f paramf)
  {
    this.a = paramUUID;
    this.b = paramd;
    this.c = new HashSet(paramCollection);
    this.d = parama;
    this.e = paramInt;
    this.f = paramExecutor;
    this.g = parama1;
    this.h = paramt;
    this.i = paramn;
    this.j = paramf;
  }
  
  public Executor a()
  {
    return this.f;
  }
  
  public f b()
  {
    return this.j;
  }
  
  public UUID c()
  {
    return this.a;
  }
  
  public d d()
  {
    return this.b;
  }
  
  public a e()
  {
    return this.g;
  }
  
  public t f()
  {
    return this.h;
  }
  
  public static class a
  {
    public List<String> a = Collections.emptyList();
    public List<Uri> b = Collections.emptyList();
    public Network c;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.WorkerParameters
 * JD-Core Version:    0.7.0.1
 */