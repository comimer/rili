package androidx.work.impl.utils;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.ApplicationExitInfo;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.text.TextUtils;
import androidx.room.RoomDatabase;
import androidx.work.WorkInfo.State;
import androidx.work.impl.WorkDatabase;
import androidx.work.k;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import q0.f;
import s0.b;
import x0.n;
import x0.p;
import x0.q;
import y0.c;
import y0.g;

public class ForceStopRunnable
  implements Runnable
{
  private static final String d = k.f("ForceStopRunnable");
  private static final long e = TimeUnit.DAYS.toMillis(3650L);
  private final Context a;
  private final q0.i b;
  private int c;
  
  public ForceStopRunnable(Context paramContext, q0.i parami)
  {
    this.a = paramContext.getApplicationContext();
    this.b = parami;
    this.c = 0;
  }
  
  static Intent c(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setComponent(new ComponentName(paramContext, BroadcastReceiver.class));
    localIntent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
    return localIntent;
  }
  
  private static PendingIntent d(Context paramContext, int paramInt)
  {
    return PendingIntent.getBroadcast(paramContext, -1, c(paramContext), paramInt);
  }
  
  @SuppressLint({"ClassVerificationFailure"})
  static void g(Context paramContext)
  {
    AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
    int i;
    if (androidx.core.os.a.c()) {
      i = 167772160;
    } else {
      i = 134217728;
    }
    paramContext = d(paramContext, i);
    long l1 = System.currentTimeMillis();
    long l2 = e;
    if (localAlarmManager != null) {
      localAlarmManager.setExact(0, l1 + l2, paramContext);
    }
  }
  
  public boolean a()
  {
    boolean bool1 = b.i(this.a, this.b);
    WorkDatabase localWorkDatabase = this.b.r();
    q localq = localWorkDatabase.j();
    n localn = localWorkDatabase.i();
    localWorkDatabase.beginTransaction();
    try
    {
      Object localObject2 = localq.j();
      boolean bool2 = true;
      int i;
      if ((localObject2 != null) && (!((List)localObject2).isEmpty())) {
        i = 1;
      } else {
        i = 0;
      }
      if (i != 0)
      {
        Iterator localIterator = ((List)localObject2).iterator();
        while (localIterator.hasNext())
        {
          localObject2 = (p)localIterator.next();
          localq.b(WorkInfo.State.ENQUEUED, new String[] { ((p)localObject2).a });
          localq.c(((p)localObject2).a, -1L);
        }
      }
      localn.deleteAll();
      localWorkDatabase.setTransactionSuccessful();
      localWorkDatabase.endTransaction();
      boolean bool3 = bool2;
      if (i == 0) {
        if (bool1) {
          bool3 = bool2;
        } else {
          bool3 = false;
        }
      }
      return bool3;
    }
    finally
    {
      localWorkDatabase.endTransaction();
    }
  }
  
  public void b()
  {
    boolean bool = a();
    if (h())
    {
      k.c().a(d, "Rescheduling Workers.", new Throwable[0]);
      this.b.v();
      this.b.o().c(false);
    }
    else if (e())
    {
      k.c().a(d, "Application was force-stopped, rescheduling.", new Throwable[0]);
      this.b.v();
    }
    else if (bool)
    {
      k.c().a(d, "Found unfinished work, scheduling it.", new Throwable[0]);
      f.b(this.b.l(), this.b.r(), this.b.q());
    }
  }
  
  @SuppressLint({"ClassVerificationFailure"})
  public boolean e()
  {
    int i = 536870912;
    try
    {
      if (androidx.core.os.a.c()) {
        i = 570425344;
      }
      Object localObject = d(this.a, i);
      if (Build.VERSION.SDK_INT >= 30)
      {
        if (localObject != null) {
          ((PendingIntent)localObject).cancel();
        }
        localObject = c.a((ActivityManager)this.a.getSystemService("activity"), null, 0, 0);
        if ((localObject != null) && (!((List)localObject).isEmpty())) {
          for (i = 0; i < ((List)localObject).size(); i++) {
            if (((ApplicationExitInfo)((List)localObject).get(i)).getReason() == 10) {
              return true;
            }
          }
        }
      }
      else if (localObject == null)
      {
        g(this.a);
        return true;
      }
      return false;
    }
    catch (IllegalArgumentException localIllegalArgumentException) {}catch (SecurityException localSecurityException) {}
    k.c().h(d, "Ignoring exception", new Throwable[] { localSecurityException });
    return true;
  }
  
  public boolean f()
  {
    androidx.work.a locala = this.b.l();
    if (TextUtils.isEmpty(locala.c()))
    {
      k.c().a(d, "The default process name was not specified.", new Throwable[0]);
      return true;
    }
    boolean bool = y0.i.b(this.a, locala);
    k.c().a(d, String.format("Is default app process = %s", new Object[] { Boolean.valueOf(bool) }), new Throwable[0]);
    return bool;
  }
  
  boolean h()
  {
    return this.b.o().a();
  }
  
  public void i(long paramLong)
  {
    try
    {
      Thread.sleep(paramLong);
      label4:
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      break label4;
    }
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 343	androidx/work/impl/utils/ForceStopRunnable:f	()Z
    //   4: istore_1
    //   5: iload_1
    //   6: ifne +11 -> 17
    //   9: aload_0
    //   10: getfield 60	androidx/work/impl/utils/ForceStopRunnable:b	Lq0/i;
    //   13: invokevirtual 346	q0/i:u	()V
    //   16: return
    //   17: aload_0
    //   18: getfield 58	androidx/work/impl/utils/ForceStopRunnable:a	Landroid/content/Context;
    //   21: invokestatic 350	q0/h:e	(Landroid/content/Context;)V
    //   24: invokestatic 211	androidx/work/k:c	()Landroidx/work/k;
    //   27: getstatic 31	androidx/work/impl/utils/ForceStopRunnable:d	Ljava/lang/String;
    //   30: ldc_w 352
    //   33: iconst_0
    //   34: anewarray 215	java/lang/Throwable
    //   37: invokevirtual 218	androidx/work/k:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    //   40: aload_0
    //   41: invokevirtual 354	androidx/work/impl/utils/ForceStopRunnable:b	()V
    //   44: goto +126 -> 170
    //   47: astore_2
    //   48: goto +20 -> 68
    //   51: astore_2
    //   52: goto +16 -> 68
    //   55: astore_2
    //   56: goto +12 -> 68
    //   59: astore_2
    //   60: goto +8 -> 68
    //   63: astore_2
    //   64: goto +4 -> 68
    //   67: astore_2
    //   68: aload_0
    //   69: getfield 62	androidx/work/impl/utils/ForceStopRunnable:c	I
    //   72: iconst_1
    //   73: iadd
    //   74: istore_3
    //   75: aload_0
    //   76: iload_3
    //   77: putfield 62	androidx/work/impl/utils/ForceStopRunnable:c	I
    //   80: iload_3
    //   81: iconst_3
    //   82: if_icmplt +99 -> 181
    //   85: invokestatic 211	androidx/work/k:c	()Landroidx/work/k;
    //   88: astore 4
    //   90: getstatic 31	androidx/work/impl/utils/ForceStopRunnable:d	Ljava/lang/String;
    //   93: astore 5
    //   95: aload 4
    //   97: aload 5
    //   99: ldc_w 356
    //   102: iconst_1
    //   103: anewarray 215	java/lang/Throwable
    //   106: dup
    //   107: iconst_0
    //   108: aload_2
    //   109: aastore
    //   110: invokevirtual 358	androidx/work/k:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    //   113: new 360	java/lang/IllegalStateException
    //   116: astore 4
    //   118: aload 4
    //   120: ldc_w 356
    //   123: aload_2
    //   124: invokespecial 363	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   127: aload_0
    //   128: getfield 60	androidx/work/impl/utils/ForceStopRunnable:b	Lq0/i;
    //   131: invokevirtual 240	q0/i:l	()Landroidx/work/a;
    //   134: invokevirtual 366	androidx/work/a:d	()Landroidx/work/g;
    //   137: astore_2
    //   138: aload_2
    //   139: ifnull +39 -> 178
    //   142: invokestatic 211	androidx/work/k:c	()Landroidx/work/k;
    //   145: aload 5
    //   147: ldc_w 368
    //   150: iconst_1
    //   151: anewarray 215	java/lang/Throwable
    //   154: dup
    //   155: iconst_0
    //   156: aload 4
    //   158: aastore
    //   159: invokevirtual 218	androidx/work/k:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    //   162: aload_2
    //   163: aload 4
    //   165: invokeinterface 373 2 0
    //   170: aload_0
    //   171: getfield 60	androidx/work/impl/utils/ForceStopRunnable:b	Lq0/i;
    //   174: invokevirtual 346	q0/i:u	()V
    //   177: return
    //   178: aload 4
    //   180: athrow
    //   181: iload_3
    //   182: i2l
    //   183: lstore 6
    //   185: invokestatic 211	androidx/work/k:c	()Landroidx/work/k;
    //   188: getstatic 31	androidx/work/impl/utils/ForceStopRunnable:d	Ljava/lang/String;
    //   191: ldc_w 375
    //   194: iconst_1
    //   195: anewarray 4	java/lang/Object
    //   198: dup
    //   199: iconst_0
    //   200: lload 6
    //   202: ldc2_w 376
    //   205: lmul
    //   206: invokestatic 382	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   209: aastore
    //   210: invokestatic 319	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   213: iconst_1
    //   214: anewarray 215	java/lang/Throwable
    //   217: dup
    //   218: iconst_0
    //   219: aload_2
    //   220: aastore
    //   221: invokevirtual 218	androidx/work/k:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    //   224: aload_0
    //   225: aload_0
    //   226: getfield 62	androidx/work/impl/utils/ForceStopRunnable:c	I
    //   229: i2l
    //   230: ldc2_w 376
    //   233: lmul
    //   234: invokevirtual 384	androidx/work/impl/utils/ForceStopRunnable:i	(J)V
    //   237: goto -220 -> 17
    //   240: astore_2
    //   241: aload_0
    //   242: getfield 60	androidx/work/impl/utils/ForceStopRunnable:b	Lq0/i;
    //   245: invokevirtual 346	q0/i:u	()V
    //   248: aload_2
    //   249: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	250	0	this	ForceStopRunnable
    //   4	2	1	bool	boolean
    //   47	1	2	localSQLiteAccessPermException	android.database.sqlite.SQLiteAccessPermException
    //   51	1	2	localSQLiteConstraintException	android.database.sqlite.SQLiteConstraintException
    //   55	1	2	localSQLiteTableLockedException	android.database.sqlite.SQLiteTableLockedException
    //   59	1	2	localSQLiteDatabaseLockedException	android.database.sqlite.SQLiteDatabaseLockedException
    //   63	1	2	localSQLiteDatabaseCorruptException	android.database.sqlite.SQLiteDatabaseCorruptException
    //   67	57	2	localSQLiteCantOpenDatabaseException	android.database.sqlite.SQLiteCantOpenDatabaseException
    //   137	83	2	localg	androidx.work.g
    //   240	9	2	localObject1	Object
    //   74	108	3	i	int
    //   88	91	4	localObject2	Object
    //   93	53	5	str	String
    //   183	18	6	l	long
    // Exception table:
    //   from	to	target	type
    //   40	44	47	android/database/sqlite/SQLiteAccessPermException
    //   40	44	51	android/database/sqlite/SQLiteConstraintException
    //   40	44	55	android/database/sqlite/SQLiteTableLockedException
    //   40	44	59	android/database/sqlite/SQLiteDatabaseLockedException
    //   40	44	63	android/database/sqlite/SQLiteDatabaseCorruptException
    //   40	44	67	android/database/sqlite/SQLiteCantOpenDatabaseException
    //   0	5	240	finally
    //   17	40	240	finally
    //   40	44	240	finally
    //   68	80	240	finally
    //   85	138	240	finally
    //   142	170	240	finally
    //   178	181	240	finally
    //   185	237	240	finally
  }
  
  public static class BroadcastReceiver
    extends BroadcastReceiver
  {
    private static final String a = k.f("ForceStopRunnable$Rcvr");
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if ((paramIntent != null) && ("ACTION_FORCE_STOP_RESCHEDULE".equals(paramIntent.getAction())))
      {
        k.c().g(a, "Rescheduling alarm that keeps track of force-stops.", new Throwable[0]);
        ForceStopRunnable.g(paramContext);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.impl.utils.ForceStopRunnable
 * JD-Core Version:    0.7.0.1
 */