package androidx.room;

import java.util.Map;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.j1;

@Metadata(bv={}, d1={""}, d2={"Landroidx/room/RoomDatabase;", "Lkotlinx/coroutines/CoroutineDispatcher;", "a", "(Landroidx/room/RoomDatabase;)Lkotlinx/coroutines/CoroutineDispatcher;", "queryDispatcher", "b", "transactionDispatcher", "room-ktx_release"}, k=2, mv={1, 4, 0})
public final class a
{
  public static final CoroutineDispatcher a(RoomDatabase paramRoomDatabase)
  {
    r.g(paramRoomDatabase, "$this$queryDispatcher");
    Map localMap = paramRoomDatabase.getBackingFieldMap();
    r.b(localMap, "backingFieldMap");
    Object localObject1 = localMap.get("QueryDispatcher");
    Object localObject2 = localObject1;
    if (localObject1 == null)
    {
      paramRoomDatabase = paramRoomDatabase.getQueryExecutor();
      r.b(paramRoomDatabase, "queryExecutor");
      localObject2 = j1.a(paramRoomDatabase);
      localMap.put("QueryDispatcher", localObject2);
    }
    if (localObject2 != null) {
      return (CoroutineDispatcher)localObject2;
    }
    throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.CoroutineDispatcher");
  }
  
  public static final CoroutineDispatcher b(RoomDatabase paramRoomDatabase)
  {
    r.g(paramRoomDatabase, "$this$transactionDispatcher");
    Map localMap = paramRoomDatabase.getBackingFieldMap();
    r.b(localMap, "backingFieldMap");
    Object localObject1 = localMap.get("TransactionDispatcher");
    Object localObject2 = localObject1;
    if (localObject1 == null)
    {
      paramRoomDatabase = paramRoomDatabase.getTransactionExecutor();
      r.b(paramRoomDatabase, "transactionExecutor");
      localObject2 = j1.a(paramRoomDatabase);
      localMap.put("TransactionDispatcher", localObject2);
    }
    if (localObject2 != null) {
      return (CoroutineDispatcher)localObject2;
    }
    throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.CoroutineDispatcher");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.room.a
 * JD-Core Version:    0.7.0.1
 */