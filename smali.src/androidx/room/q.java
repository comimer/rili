package androidx.room;

import java.util.concurrent.atomic.AtomicBoolean;
import l0.f;

public abstract class q
{
  private final RoomDatabase mDatabase;
  private final AtomicBoolean mLock = new AtomicBoolean(false);
  private volatile f mStmt;
  
  public q(RoomDatabase paramRoomDatabase)
  {
    this.mDatabase = paramRoomDatabase;
  }
  
  private f createNewStatement()
  {
    String str = createQuery();
    return this.mDatabase.compileStatement(str);
  }
  
  private f getStmt(boolean paramBoolean)
  {
    f localf;
    if (paramBoolean)
    {
      if (this.mStmt == null) {
        this.mStmt = createNewStatement();
      }
      localf = this.mStmt;
    }
    else
    {
      localf = createNewStatement();
    }
    return localf;
  }
  
  public f acquire()
  {
    assertNotMainThread();
    return getStmt(this.mLock.compareAndSet(false, true));
  }
  
  protected void assertNotMainThread()
  {
    this.mDatabase.assertNotMainThread();
  }
  
  protected abstract String createQuery();
  
  public void release(f paramf)
  {
    if (paramf == this.mStmt) {
      this.mLock.set(false);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.room.q
 * JD-Core Version:    0.7.0.1
 */