package androidx.room;

import androidx.lifecycle.LiveData;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.Callable;

class g
{
  final Set<LiveData> a = Collections.newSetFromMap(new IdentityHashMap());
  private final RoomDatabase b;
  
  g(RoomDatabase paramRoomDatabase)
  {
    this.b = paramRoomDatabase;
  }
  
  <T> LiveData<T> a(String[] paramArrayOfString, boolean paramBoolean, Callable<T> paramCallable)
  {
    return new n(this.b, this, paramBoolean, paramCallable, paramArrayOfString);
  }
  
  void b(LiveData paramLiveData)
  {
    this.a.add(paramLiveData);
  }
  
  void c(LiveData paramLiveData)
  {
    this.a.remove(paramLiveData);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.room.g
 * JD-Core Version:    0.7.0.1
 */