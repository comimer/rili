package androidx.room;

import android.content.Context;
import java.io.File;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import l0.c.c;

public class b
{
  public final c.c a;
  public final Context b;
  public final String c;
  public final RoomDatabase.c d;
  public final List<RoomDatabase.b> e;
  public final boolean f;
  public final RoomDatabase.JournalMode g;
  public final Executor h;
  public final Executor i;
  public final boolean j;
  public final boolean k;
  public final boolean l;
  private final Set<Integer> m;
  public final String n;
  public final File o;
  
  public b(Context paramContext, String paramString1, c.c paramc, RoomDatabase.c paramc1, List<RoomDatabase.b> paramList, boolean paramBoolean1, RoomDatabase.JournalMode paramJournalMode, Executor paramExecutor1, Executor paramExecutor2, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, Set<Integer> paramSet, String paramString2, File paramFile)
  {
    this.a = paramc;
    this.b = paramContext;
    this.c = paramString1;
    this.d = paramc1;
    this.e = paramList;
    this.f = paramBoolean1;
    this.g = paramJournalMode;
    this.h = paramExecutor1;
    this.i = paramExecutor2;
    this.j = paramBoolean2;
    this.k = paramBoolean3;
    this.l = paramBoolean4;
    this.m = paramSet;
    this.n = paramString2;
    this.o = paramFile;
  }
  
  public boolean a(int paramInt1, int paramInt2)
  {
    boolean bool1 = true;
    if (paramInt1 > paramInt2) {
      paramInt2 = 1;
    } else {
      paramInt2 = 0;
    }
    if ((paramInt2 != 0) && (this.l)) {
      return false;
    }
    if (this.k)
    {
      Set localSet = this.m;
      bool2 = bool1;
      if (localSet == null) {
        break label71;
      }
      if (!localSet.contains(Integer.valueOf(paramInt1)))
      {
        bool2 = bool1;
        break label71;
      }
    }
    boolean bool2 = false;
    label71:
    return bool2;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.room.b
 * JD-Core Version:    0.7.0.1
 */