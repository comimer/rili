package androidx.room.paging;

import android.database.Cursor;
import androidx.paging.b;
import androidx.paging.d;
import androidx.paging.d.b;
import androidx.paging.d.d;
import androidx.paging.d.e;
import androidx.paging.d.g;
import androidx.room.RoomDatabase;
import androidx.room.h;
import androidx.room.h.c;
import androidx.room.m;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import l0.e;

public abstract class a<T>
  extends d<T>
{
  private final String mCountQuery;
  private final RoomDatabase mDb;
  private final boolean mInTransaction;
  private final String mLimitOffsetQuery;
  private final h.c mObserver;
  private final m mSourceQuery;
  
  protected a(RoomDatabase paramRoomDatabase, m paramm, boolean paramBoolean, String... paramVarArgs)
  {
    this.mDb = paramRoomDatabase;
    this.mSourceQuery = paramm;
    this.mInTransaction = paramBoolean;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("SELECT COUNT(*) FROM ( ");
    localStringBuilder.append(paramm.d());
    localStringBuilder.append(" )");
    this.mCountQuery = localStringBuilder.toString();
    localStringBuilder = new StringBuilder();
    localStringBuilder.append("SELECT * FROM ( ");
    localStringBuilder.append(paramm.d());
    localStringBuilder.append(" ) LIMIT ? OFFSET ?");
    this.mLimitOffsetQuery = localStringBuilder.toString();
    paramm = new a(paramVarArgs);
    this.mObserver = paramm;
    paramRoomDatabase.getInvalidationTracker().b(paramm);
  }
  
  protected a(RoomDatabase paramRoomDatabase, e parame, boolean paramBoolean, String... paramVarArgs)
  {
    this(paramRoomDatabase, m.q(parame), paramBoolean, paramVarArgs);
  }
  
  private m getSQLiteQuery(int paramInt1, int paramInt2)
  {
    m localm = m.j(this.mLimitOffsetQuery, this.mSourceQuery.c() + 2);
    localm.m(this.mSourceQuery);
    localm.B(localm.c() - 1, paramInt2);
    localm.B(localm.c(), paramInt1);
    return localm;
  }
  
  protected abstract List<T> convertRows(Cursor paramCursor);
  
  public int countItems()
  {
    m localm = m.j(this.mCountQuery, this.mSourceQuery.c());
    localm.m(this.mSourceQuery);
    Cursor localCursor = this.mDb.query(localm);
    try
    {
      if (localCursor.moveToFirst())
      {
        int i = localCursor.getInt(0);
        return i;
      }
      return 0;
    }
    finally
    {
      localCursor.close();
      localm.z();
    }
  }
  
  public boolean isInvalid()
  {
    this.mDb.getInvalidationTracker().i();
    return super.isInvalid();
  }
  
  public void loadInitial(d.d paramd, d.b<T> paramb)
  {
    List localList = Collections.emptyList();
    this.mDb.beginTransaction();
    Object localObject1 = null;
    Cursor localCursor = null;
    Object localObject4 = null;
    try
    {
      int i = countItems();
      int j;
      if (i != 0)
      {
        j = d.computeInitialLoadPosition(paramd, i);
        localm = getSQLiteQuery(j, d.computeInitialLoadSize(paramd, j, i));
        paramd = localObject4;
        try
        {
          localCursor = this.mDb.query(localm);
          paramd = localCursor;
          localList = convertRows(localCursor);
          paramd = localCursor;
          this.mDb.setTransactionSuccessful();
          paramd = localList;
        }
        finally
        {
          paramb = paramd;
          paramd = localObject2;
          break label162;
        }
      }
      else
      {
        j = 0;
        localm = null;
        localObject3 = localObject1;
        paramd = localList;
      }
      if (localObject3 != null) {
        localObject3.close();
      }
      this.mDb.endTransaction();
      if (localm != null) {
        localm.z();
      }
      paramb.a(paramd, j, i);
      return;
    }
    finally
    {
      Object localObject3;
      m localm = null;
      paramb = localObject3;
      label162:
      if (paramb != null) {
        paramb.close();
      }
      this.mDb.endTransaction();
      if (localm != null) {
        localm.z();
      }
    }
  }
  
  public List<T> loadRange(int paramInt1, int paramInt2)
  {
    m localm = getSQLiteQuery(paramInt1, paramInt2);
    if (this.mInTransaction)
    {
      this.mDb.beginTransaction();
      localObject1 = null;
      try
      {
        Cursor localCursor = this.mDb.query(localm);
        localObject1 = localCursor;
        List localList2 = convertRows(localCursor);
        localObject1 = localCursor;
        this.mDb.setTransactionSuccessful();
        if (localCursor != null) {
          localCursor.close();
        }
        this.mDb.endTransaction();
        localm.z();
        return localList2;
      }
      finally
      {
        if (localObject1 != null) {
          ((Cursor)localObject1).close();
        }
        this.mDb.endTransaction();
        localm.z();
      }
    }
    Object localObject1 = this.mDb.query(localm);
    try
    {
      List localList1 = convertRows((Cursor)localObject1);
      return localList1;
    }
    finally
    {
      ((Cursor)localObject1).close();
      localm.z();
    }
  }
  
  public void loadRange(d.g paramg, d.e<T> parame)
  {
    parame.a(loadRange(paramg.a, paramg.b));
  }
  
  class a
    extends h.c
  {
    a(String[] paramArrayOfString)
    {
      super();
    }
    
    public void b(Set<String> paramSet)
    {
      a.this.invalidate();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.room.paging.a
 * JD-Core Version:    0.7.0.1
 */