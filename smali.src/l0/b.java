package l0;

import android.database.Cursor;
import android.database.SQLException;
import android.os.CancellationSignal;
import android.util.Pair;
import java.io.Closeable;
import java.util.List;

public abstract interface b
  extends Closeable
{
  public abstract void C();
  
  public abstract void D(String paramString, Object[] paramArrayOfObject)
    throws SQLException;
  
  public abstract Cursor M(String paramString);
  
  public abstract void O();
  
  public abstract Cursor T(e parame, CancellationSignal paramCancellationSignal);
  
  public abstract Cursor b0(e parame);
  
  public abstract void f();
  
  public abstract boolean f0();
  
  public abstract List<Pair<String, String>> g();
  
  public abstract String getPath();
  
  public abstract boolean isOpen();
  
  public abstract void k(String paramString)
    throws SQLException;
  
  public abstract f p(String paramString);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     l0.b
 * JD-Core Version:    0.7.0.1
 */