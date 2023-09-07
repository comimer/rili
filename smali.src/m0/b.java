package m0;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.File;
import l0.c;
import l0.c.a;

class b
  implements c
{
  private final Context a;
  private final String b;
  private final c.a c;
  private final boolean d;
  private final Object e;
  private a f;
  private boolean g;
  
  b(Context paramContext, String paramString, c.a parama, boolean paramBoolean)
  {
    this.a = paramContext;
    this.b = paramString;
    this.c = parama;
    this.d = paramBoolean;
    this.e = new Object();
  }
  
  private a c()
  {
    synchronized (this.e)
    {
      if (this.f == null)
      {
        localObject2 = new a[1];
        a locala;
        if ((this.b != null) && (this.d))
        {
          File localFile = new java/io/File;
          localFile.<init>(this.a.getNoBackupFilesDir(), this.b);
          locala = new m0/b$a;
          locala.<init>(this.a, localFile.getAbsolutePath(), (a[])localObject2, this.c);
          this.f = locala;
        }
        else
        {
          locala = new m0/b$a;
          locala.<init>(this.a, this.b, (a[])localObject2, this.c);
          this.f = locala;
        }
        this.f.setWriteAheadLoggingEnabled(this.g);
      }
      Object localObject2 = this.f;
      return localObject2;
    }
  }
  
  public l0.b K()
  {
    return c().e();
  }
  
  public void close()
  {
    c().close();
  }
  
  public String getDatabaseName()
  {
    return this.b;
  }
  
  public void setWriteAheadLoggingEnabled(boolean paramBoolean)
  {
    synchronized (this.e)
    {
      a locala = this.f;
      if (locala != null) {
        locala.setWriteAheadLoggingEnabled(paramBoolean);
      }
      this.g = paramBoolean;
      return;
    }
  }
  
  static class a
    extends SQLiteOpenHelper
  {
    final a[] a;
    final c.a b;
    private boolean c;
    
    a(Context paramContext, String paramString, final a[] paramArrayOfa, c.a parama)
    {
      super(paramString, null, parama.a, new a(parama, paramArrayOfa));
      this.b = parama;
      this.a = paramArrayOfa;
    }
    
    static a d(a[] paramArrayOfa, SQLiteDatabase paramSQLiteDatabase)
    {
      a locala = paramArrayOfa[0];
      if ((locala == null) || (!locala.c(paramSQLiteDatabase))) {
        paramArrayOfa[0] = new a(paramSQLiteDatabase);
      }
      return paramArrayOfa[0];
    }
    
    a c(SQLiteDatabase paramSQLiteDatabase)
    {
      return d(this.a, paramSQLiteDatabase);
    }
    
    public void close()
    {
      try
      {
        super.close();
        this.a[0] = null;
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    
    l0.b e()
    {
      try
      {
        this.c = false;
        Object localObject1 = super.getWritableDatabase();
        if (this.c)
        {
          close();
          localObject1 = e();
          return localObject1;
        }
        localObject1 = c((SQLiteDatabase)localObject1);
        return localObject1;
      }
      finally {}
    }
    
    public void onConfigure(SQLiteDatabase paramSQLiteDatabase)
    {
      this.b.b(c(paramSQLiteDatabase));
    }
    
    public void onCreate(SQLiteDatabase paramSQLiteDatabase)
    {
      this.b.d(c(paramSQLiteDatabase));
    }
    
    public void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
    {
      this.c = true;
      this.b.e(c(paramSQLiteDatabase), paramInt1, paramInt2);
    }
    
    public void onOpen(SQLiteDatabase paramSQLiteDatabase)
    {
      if (!this.c) {
        this.b.f(c(paramSQLiteDatabase));
      }
    }
    
    public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
    {
      this.c = true;
      this.b.g(c(paramSQLiteDatabase), paramInt1, paramInt2);
    }
    
    class a
      implements DatabaseErrorHandler
    {
      a(a[] paramArrayOfa) {}
      
      public void onCorruption(SQLiteDatabase paramSQLiteDatabase)
      {
        b.a.this.c(b.a.d(paramArrayOfa, paramSQLiteDatabase));
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m0.b
 * JD-Core Version:    0.7.0.1
 */