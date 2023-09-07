package com.xiaomi.accounts;

import android.accounts.Account;
import android.accounts.AuthenticatorDescription;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.os.BaseBundle;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IBinder.DeathRecipient;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import java.io.File;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;
import s5.c;

public class e
{
  private static final ExecutorService h = ;
  private static final Intent i = new Intent("com.xiaomi.accounts.LOGIN_ACCOUNTS_CHANGED");
  private static final String[] j = { "type", "authtoken" };
  private static final String[] k = { "key", "value" };
  private static AtomicReference<e> l = new AtomicReference();
  private static final Account[] m = new Account[0];
  private final Context a;
  private final PackageManager b;
  private HandlerThread c;
  private final c d;
  private final b e;
  private final LinkedHashMap<String, e> f = new LinkedHashMap();
  private final SparseArray<f> g = new SparseArray();
  
  public e(Context paramContext)
  {
    this(paramContext, paramContext.getPackageManager(), new b(paramContext));
  }
  
  public e(Context paramContext, PackageManager paramPackageManager, b paramb)
  {
    this.a = paramContext;
    this.b = paramPackageManager;
    paramContext = new HandlerThread("AccountManagerService");
    this.c = paramContext;
    paramContext.start();
    this.d = new c(this.c.getLooper());
    this.e = paramb;
    l.set(this);
    z(0);
  }
  
  private void A(f paramf, Account paramAccount)
  {
    Account[] arrayOfAccount1 = (Account[])f.c(paramf).get(paramAccount.type);
    int n;
    if (arrayOfAccount1 != null) {
      n = arrayOfAccount1.length;
    } else {
      n = 0;
    }
    Account[] arrayOfAccount2 = new Account[n + 1];
    if (arrayOfAccount1 != null) {
      System.arraycopy(arrayOfAccount1, 0, arrayOfAccount2, 0, n);
    }
    arrayOfAccount2[n] = paramAccount;
    f.c(paramf).put(paramAccount.type, arrayOfAccount2);
  }
  
  private long B(s5.b paramb, long paramLong, String paramString1, String paramString2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("key", paramString1);
    localContentValues.put("accounts_id", Long.valueOf(paramLong));
    localContentValues.put("value", paramString2);
    return paramb.i("extras", "key", localContentValues);
  }
  
  private void D(f paramf, s5.b paramb, String paramString1, String paramString2)
  {
    if ((paramString2 != null) && (paramString1 != null))
    {
      paramString2 = paramb.k("SELECT authtokens._id, accounts.name, authtokens.type FROM accounts JOIN authtokens ON accounts._id = accounts_id WHERE authtoken = ? AND accounts.type = ?", new Object[] { paramString2, paramString1 });
      try
      {
        while (paramString2.moveToNext())
        {
          long l1 = paramString2.getLong(0);
          String str1 = paramString2.getString(1);
          String str2 = paramString2.getString(2);
          Object localObject = new java/lang/StringBuilder;
          ((StringBuilder)localObject).<init>();
          ((StringBuilder)localObject).append("_id=");
          ((StringBuilder)localObject).append(l1);
          paramb.d("authtokens", ((StringBuilder)localObject).toString(), null);
          localObject = new android/accounts/Account;
          ((Account)localObject).<init>(str1, paramString1);
          Y(paramf, paramb, (Account)localObject, str2, null);
        }
        return;
      }
      finally
      {
        paramString2.close();
      }
    }
  }
  
  private void E(h paramh, Bundle paramBundle)
  {
    if (paramBundle == null) {
      com.xiaomi.accountsdk.utils.b.h("AccountManagerService", "the result is unexpectedly null", new Exception());
    }
    if (Log.isLoggable("AccountManagerService", 2))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(getClass().getSimpleName());
      localStringBuilder.append(" calling onResult() on response ");
      localStringBuilder.append(paramh);
      com.xiaomi.accountsdk.utils.b.g("AccountManagerService", localStringBuilder.toString());
    }
    try
    {
      paramh.a(paramBundle);
    }
    catch (RemoteException paramh)
    {
      if (Log.isLoggable("AccountManagerService", 2)) {
        com.xiaomi.accountsdk.utils.b.h("AccountManagerService", "failure while notifying response", paramh);
      }
    }
  }
  
  private void G(f paramf)
  {
    synchronized (f.a(paramf))
    {
      s5.b localb = f.b(paramf).e(this.a);
      paramf = localb.j(false, "grants", new String[] { "uid" }, null, null, "uid", null, null, null);
      try
      {
        while (paramf.moveToNext())
        {
          int n = paramf.getInt(0);
          int i1;
          if (this.b.getPackagesForUid(n) != null) {
            i1 = 1;
          } else {
            i1 = 0;
          }
          if (i1 == 0)
          {
            StringBuilder localStringBuilder = new java/lang/StringBuilder;
            localStringBuilder.<init>();
            localStringBuilder.append("deleting grants for UID ");
            localStringBuilder.append(n);
            localStringBuilder.append(" because its package is no longer installed");
            com.xiaomi.accountsdk.utils.b.g("AccountManagerService", localStringBuilder.toString());
            localb.d("grants", "uid=?", new Object[] { Integer.valueOf(n) });
          }
        }
        paramf.close();
        return;
      }
      finally
      {
        paramf.close();
      }
    }
  }
  
  private String J(f paramf, Account paramAccount)
  {
    if (paramAccount == null) {
      return null;
    }
    synchronized (f.a(paramf))
    {
      s5.b localb = f.b(paramf).e(this.a);
      paramf = paramAccount.name;
      paramAccount = paramAccount.type;
      paramf = localb.j(false, "accounts", new String[] { "password" }, "name=? AND type=?", new Object[] { paramf, paramAccount }, null, null, null, null);
      try
      {
        if (paramf.moveToNext())
        {
          paramAccount = paramf.getString(0);
          paramf.close();
          return paramAccount;
        }
        paramf.close();
        return null;
      }
      finally
      {
        paramAccount = finally;
        paramf.close();
        throw paramAccount;
      }
    }
  }
  
  private void N(f paramf, Account paramAccount)
  {
    Account[] arrayOfAccount = (Account[])f.c(paramf).get(paramAccount.type);
    if (arrayOfAccount != null)
    {
      Object localObject = new ArrayList();
      int n = arrayOfAccount.length;
      for (int i1 = 0; i1 < n; i1++)
      {
        Account localAccount = arrayOfAccount[i1];
        if (!localAccount.equals(paramAccount)) {
          ((ArrayList)localObject).add(localAccount);
        }
      }
      if (((ArrayList)localObject).isEmpty())
      {
        f.c(paramf).remove(paramAccount.type);
      }
      else
      {
        localObject = (Account[])((ArrayList)localObject).toArray(new Account[((ArrayList)localObject).size()]);
        f.c(paramf).put(paramAccount.type, localObject);
      }
    }
    f.d(paramf).remove(paramAccount);
    f.e(paramf).remove(paramAccount);
  }
  
  private void O(f paramf, Account paramAccount)
  {
    synchronized (f.a(paramf))
    {
      f.b(paramf).e(this.a).d("accounts", "name=? AND type=?", new Object[] { paramAccount.name, paramAccount.type });
      N(paramf, paramAccount);
      R(f.f(paramf));
      return;
    }
  }
  
  private void P(long paramLong) {}
  
  private boolean Q(f paramf, Account paramAccount, String paramString1, String paramString2)
  {
    if ((paramAccount != null) && (paramString1 != null)) {
      synchronized (f.a(paramf))
      {
        s5.b localb = f.b(paramf).e(this.a);
        localb.a();
        try
        {
          long l1 = o(localb, paramAccount);
          if (l1 < 0L)
          {
            localb.h();
            return false;
          }
          Object localObject2 = new java/lang/StringBuilder;
          ((StringBuilder)localObject2).<init>();
          ((StringBuilder)localObject2).append("accounts_id=");
          ((StringBuilder)localObject2).append(l1);
          ((StringBuilder)localObject2).append(" AND ");
          ((StringBuilder)localObject2).append("type");
          ((StringBuilder)localObject2).append("=?");
          localb.d("authtokens", ((StringBuilder)localObject2).toString(), new String[] { paramString1 });
          localObject2 = new android/content/ContentValues;
          ((ContentValues)localObject2).<init>();
          ((ContentValues)localObject2).put("accounts_id", Long.valueOf(l1));
          ((ContentValues)localObject2).put("type", paramString1);
          ((ContentValues)localObject2).put("authtoken", paramString2);
          if (localb.i("authtokens", "authtoken", (ContentValues)localObject2) >= 0L)
          {
            localb.l();
            Y(paramf, localb, paramAccount, paramString1, paramString2);
            localb.h();
            return true;
          }
          localb.h();
          return false;
        }
        finally
        {
          localb.h();
        }
      }
    }
    return false;
  }
  
  private void R(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("the accounts changed, sending broadcast of ");
    Intent localIntent = i;
    localStringBuilder.append(localIntent.getAction());
    com.xiaomi.accountsdk.utils.b.g("AccountManagerService", localStringBuilder.toString());
    localIntent.setPackage(this.a.getPackageName());
    this.a.sendBroadcast(localIntent);
  }
  
  private void U(f paramf, Account paramAccount, String paramString)
  {
    if (paramAccount == null) {
      return;
    }
    synchronized (f.a(paramf))
    {
      s5.b localb = f.b(paramf).e(this.a);
      localb.a();
      try
      {
        ContentValues localContentValues = new android/content/ContentValues;
        localContentValues.<init>();
        localContentValues.put("password", paramString);
        long l1 = o(localb, paramAccount);
        if (l1 >= 0L)
        {
          localb.o("accounts", localContentValues, "_id=?", new Object[] { Long.valueOf(l1) });
          localb.d("authtokens", "accounts_id=?", new Object[] { Long.valueOf(l1) });
          f.e(paramf).remove(paramAccount);
          localb.l();
        }
        localb.h();
        R(f.f(paramf));
        return;
      }
      finally
      {
        localb.h();
      }
    }
  }
  
  private void W(f paramf, Account paramAccount, String paramString1, String paramString2)
  {
    if ((paramAccount != null) && (paramString1 != null)) {
      synchronized (f.a(paramf))
      {
        s5.b localb = f.b(paramf).e(this.a);
        localb.a();
        try
        {
          long l1 = o(localb, paramAccount);
          if (l1 < 0L)
          {
            localb.h();
            return;
          }
          long l2 = s(localb, l1, paramString1);
          if (l2 < 0L)
          {
            l2 = B(localb, l1, paramString1, paramString2);
            if (l2 < 0L) {
              localb.h();
            }
          }
          else
          {
            ContentValues localContentValues = new android/content/ContentValues;
            localContentValues.<init>();
            localContentValues.put("value", paramString2);
            StringBuilder localStringBuilder = new java/lang/StringBuilder;
            localStringBuilder.<init>();
            localStringBuilder.append("_id=");
            localStringBuilder.append(l2);
            int n = localb.o("extras", localContentValues, localStringBuilder.toString(), null);
            if (1 != n)
            {
              localb.h();
              return;
            }
          }
          Z(paramf, localb, paramAccount, paramString1, paramString2);
          localb.l();
          localb.h();
          return;
        }
        finally
        {
          localb.h();
        }
      }
    }
  }
  
  /* Error */
  private void X(f paramf)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 301	com/xiaomi/accounts/e$f:a	(Lcom/xiaomi/accounts/e$f;)Ljava/lang/Object;
    //   4: astore_2
    //   5: aload_2
    //   6: monitorenter
    //   7: aload_1
    //   8: invokestatic 304	com/xiaomi/accounts/e$f:b	(Lcom/xiaomi/accounts/e$f;)Ls5/c;
    //   11: aload_0
    //   12: getfield 118	com/xiaomi/accounts/e:a	Landroid/content/Context;
    //   15: invokevirtual 309	s5/c:e	(Landroid/content/Context;)Ls5/b;
    //   18: astore_3
    //   19: aload_3
    //   20: iconst_0
    //   21: ldc_w 347
    //   24: iconst_3
    //   25: anewarray 58	java/lang/String
    //   28: dup
    //   29: iconst_0
    //   30: ldc_w 449
    //   33: aastore
    //   34: dup
    //   35: iconst_1
    //   36: ldc 60
    //   38: aastore
    //   39: dup
    //   40: iconst_2
    //   41: ldc_w 450
    //   44: aastore
    //   45: aconst_null
    //   46: aconst_null
    //   47: aconst_null
    //   48: aconst_null
    //   49: aconst_null
    //   50: aconst_null
    //   51: invokevirtual 316	s5/b:j	(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   54: astore 4
    //   56: iconst_1
    //   57: istore 5
    //   59: aload_1
    //   60: invokestatic 156	com/xiaomi/accounts/e$f:c	(Lcom/xiaomi/accounts/e$f;)Ljava/util/HashMap;
    //   63: invokevirtual 453	java/util/HashMap:clear	()V
    //   66: new 108	java/util/LinkedHashMap
    //   69: astore 6
    //   71: aload 6
    //   73: invokespecial 109	java/util/LinkedHashMap:<init>	()V
    //   76: iconst_0
    //   77: istore 7
    //   79: aload 4
    //   81: invokeinterface 215 1 0
    //   86: ifeq +252 -> 338
    //   89: aload 4
    //   91: iconst_0
    //   92: invokeinterface 219 2 0
    //   97: lstore 8
    //   99: aload 4
    //   101: iconst_1
    //   102: invokeinterface 223 2 0
    //   107: astore 10
    //   109: aload 4
    //   111: iconst_2
    //   112: invokeinterface 223 2 0
    //   117: astore 11
    //   119: aload_0
    //   120: getfield 143	com/xiaomi/accounts/e:e	Lcom/xiaomi/accounts/b;
    //   123: aload 10
    //   125: invokestatic 459	android/accounts/AuthenticatorDescription:newKey	(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    //   128: invokevirtual 462	com/xiaomi/accounts/b:b	(Landroid/accounts/AuthenticatorDescription;)Lcom/xiaomi/accounts/b$a;
    //   131: ifnonnull +155 -> 286
    //   134: new 225	java/lang/StringBuilder
    //   137: astore 12
    //   139: aload 12
    //   141: invokespecial 226	java/lang/StringBuilder:<init>	()V
    //   144: aload 12
    //   146: ldc_w 464
    //   149: invokevirtual 232	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   152: pop
    //   153: aload 12
    //   155: aload 11
    //   157: invokevirtual 232	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   160: pop
    //   161: aload 12
    //   163: ldc_w 466
    //   166: invokevirtual 232	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   169: pop
    //   170: aload 12
    //   172: aload 10
    //   174: invokevirtual 232	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: pop
    //   178: aload 12
    //   180: ldc_w 468
    //   183: invokevirtual 232	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: pop
    //   187: ldc 124
    //   189: aload 12
    //   191: invokevirtual 241	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   194: invokestatic 289	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   197: new 225	java/lang/StringBuilder
    //   200: astore 12
    //   202: aload 12
    //   204: invokespecial 226	java/lang/StringBuilder:<init>	()V
    //   207: aload 12
    //   209: ldc 228
    //   211: invokevirtual 232	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   214: pop
    //   215: aload 12
    //   217: lload 8
    //   219: invokevirtual 235	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   222: pop
    //   223: aload_3
    //   224: ldc_w 347
    //   227: aload 12
    //   229: invokevirtual 241	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   232: aconst_null
    //   233: invokevirtual 244	s5/b:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    //   236: pop
    //   237: new 79	android/accounts/Account
    //   240: astore 12
    //   242: aload 12
    //   244: aload 11
    //   246: aload 10
    //   248: invokespecial 246	android/accounts/Account:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   251: aload_1
    //   252: invokestatic 378	com/xiaomi/accounts/e$f:d	(Lcom/xiaomi/accounts/e$f;)Ljava/util/HashMap;
    //   255: aload 12
    //   257: invokevirtual 368	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   260: pop
    //   261: aload_1
    //   262: invokestatic 380	com/xiaomi/accounts/e$f:e	(Lcom/xiaomi/accounts/e$f;)Ljava/util/HashMap;
    //   265: aload 12
    //   267: invokevirtual 368	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   270: pop
    //   271: iconst_1
    //   272: istore 7
    //   274: goto -195 -> 79
    //   277: astore 12
    //   279: iload 5
    //   281: istore 7
    //   283: goto +215 -> 498
    //   286: aload 6
    //   288: aload 10
    //   290: invokevirtual 165	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   293: checkcast 354	java/util/ArrayList
    //   296: astore 13
    //   298: aload 13
    //   300: astore 12
    //   302: aload 13
    //   304: ifnonnull +23 -> 327
    //   307: new 354	java/util/ArrayList
    //   310: astore 12
    //   312: aload 12
    //   314: invokespecial 355	java/util/ArrayList:<init>	()V
    //   317: aload 6
    //   319: aload 10
    //   321: aload 12
    //   323: invokevirtual 176	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   326: pop
    //   327: aload 12
    //   329: aload 11
    //   331: invokevirtual 362	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   334: pop
    //   335: goto -256 -> 79
    //   338: aload 6
    //   340: invokevirtual 472	java/util/HashMap:entrySet	()Ljava/util/Set;
    //   343: invokeinterface 478 1 0
    //   348: astore 12
    //   350: aload 12
    //   352: invokeinterface 483 1 0
    //   357: ifeq +108 -> 465
    //   360: aload 12
    //   362: invokeinterface 487 1 0
    //   367: checkcast 489	java/util/Map$Entry
    //   370: astore 10
    //   372: aload 10
    //   374: invokeinterface 492 1 0
    //   379: checkcast 58	java/lang/String
    //   382: astore 13
    //   384: aload 10
    //   386: invokeinterface 495 1 0
    //   391: checkcast 354	java/util/ArrayList
    //   394: astore_3
    //   395: aload_3
    //   396: invokevirtual 372	java/util/ArrayList:size	()I
    //   399: anewarray 79	android/accounts/Account
    //   402: astore 10
    //   404: aload_3
    //   405: invokevirtual 496	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   408: astore_3
    //   409: iconst_0
    //   410: istore 5
    //   412: aload_3
    //   413: invokeinterface 483 1 0
    //   418: ifeq +32 -> 450
    //   421: aload 10
    //   423: iload 5
    //   425: new 79	android/accounts/Account
    //   428: dup
    //   429: aload_3
    //   430: invokeinterface 487 1 0
    //   435: checkcast 58	java/lang/String
    //   438: aload 13
    //   440: invokespecial 246	android/accounts/Account:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   443: aastore
    //   444: iinc 5 1
    //   447: goto -35 -> 412
    //   450: aload_1
    //   451: invokestatic 156	com/xiaomi/accounts/e$f:c	(Lcom/xiaomi/accounts/e$f;)Ljava/util/HashMap;
    //   454: aload 13
    //   456: aload 10
    //   458: invokevirtual 176	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   461: pop
    //   462: goto -112 -> 350
    //   465: aload 4
    //   467: invokeinterface 253 1 0
    //   472: iload 7
    //   474: ifeq +11 -> 485
    //   477: aload_0
    //   478: aload_1
    //   479: invokestatic 386	com/xiaomi/accounts/e$f:f	(Lcom/xiaomi/accounts/e$f;)I
    //   482: invokespecial 390	com/xiaomi/accounts/e:R	(I)V
    //   485: aload_2
    //   486: monitorexit
    //   487: return
    //   488: astore 12
    //   490: goto +8 -> 498
    //   493: astore 12
    //   495: iconst_0
    //   496: istore 7
    //   498: aload 4
    //   500: invokeinterface 253 1 0
    //   505: iload 7
    //   507: ifeq +11 -> 518
    //   510: aload_0
    //   511: aload_1
    //   512: invokestatic 386	com/xiaomi/accounts/e$f:f	(Lcom/xiaomi/accounts/e$f;)I
    //   515: invokespecial 390	com/xiaomi/accounts/e:R	(I)V
    //   518: aload 12
    //   520: athrow
    //   521: astore_1
    //   522: aload_2
    //   523: monitorexit
    //   524: aload_1
    //   525: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	526	0	this	e
    //   0	526	1	paramf	f
    //   4	519	2	localObject1	Object
    //   18	412	3	localObject2	Object
    //   54	445	4	localCursor	Cursor
    //   57	388	5	n	int
    //   69	270	6	localLinkedHashMap	LinkedHashMap
    //   77	429	7	i1	int
    //   97	121	8	l1	long
    //   107	350	10	localObject3	Object
    //   117	213	11	str	String
    //   137	129	12	localObject4	Object
    //   277	1	12	localObject5	Object
    //   300	61	12	localObject6	Object
    //   488	1	12	localObject7	Object
    //   493	26	12	localObject8	Object
    //   296	159	13	localObject9	Object
    // Exception table:
    //   from	to	target	type
    //   237	271	277	finally
    //   79	237	488	finally
    //   286	298	488	finally
    //   307	327	488	finally
    //   327	335	488	finally
    //   338	350	488	finally
    //   350	409	488	finally
    //   412	444	488	finally
    //   450	462	488	finally
    //   59	76	493	finally
    //   7	56	521	finally
    //   465	472	521	finally
    //   477	485	521	finally
    //   485	487	521	finally
    //   498	505	521	finally
    //   510	518	521	finally
    //   518	521	521	finally
    //   522	524	521	finally
  }
  
  private void a(s5.b paramb)
  {
    Cursor localCursor = paramb.k("select _id from accounts", null);
    if (localCursor != null) {
      while (localCursor.moveToNext())
      {
        int n = paramb.d("accounts", "_id=?", new Object[] { Long.valueOf(localCursor.getLong(0)) });
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("delete account ret=");
        localStringBuilder.append(n);
        com.xiaomi.accountsdk.utils.b.g("AccountManagerService", localStringBuilder.toString());
      }
    }
  }
  
  private boolean k(f paramf, Account paramAccount, String paramString, Bundle paramBundle)
  {
    if (paramAccount == null) {
      return false;
    }
    s5.b localb;
    synchronized (f.a(paramf))
    {
      localb = f.b(paramf).e(this.a);
      localb.a();
      Object localObject2 = null;
      try
      {
        Cursor localCursor = localb.k("select count(*) from accounts WHERE name=? AND type=?", new Object[] { paramAccount.name, paramAccount.type });
        localObject2 = localCursor;
        long l1;
        if (localCursor.moveToNext())
        {
          localObject2 = localCursor;
          l1 = localCursor.getLong(0);
        }
        else
        {
          l1 = 0L;
        }
        paramf = finally;
      }
      finally
      {
        try
        {
          localCursor.close();
          if (l1 > 0L)
          {
            paramf = new java/lang/StringBuilder;
            paramf.<init>();
            paramf.append("insertAccountIntoDatabase: ");
            paramf.append(paramAccount);
            paramf.append(", skipping since the account already exists");
            com.xiaomi.accountsdk.utils.b.g("AccountManagerService", paramf.toString());
            localb.h();
            return false;
          }
          localObject2 = new android/content/ContentValues;
          ((ContentValues)localObject2).<init>();
          ((ContentValues)localObject2).put("name", paramAccount.name);
          ((ContentValues)localObject2).put("type", paramAccount.type);
          ((ContentValues)localObject2).put("password", paramString);
          l1 = localb.i("accounts", "name", (ContentValues)localObject2);
          if (l1 < 0L)
          {
            paramf = new java/lang/StringBuilder;
            paramf.<init>();
            paramf.append("insertAccountIntoDatabase: ");
            paramf.append(paramAccount);
            paramf.append(", skipping the DB insert failed");
            com.xiaomi.accountsdk.utils.b.g("AccountManagerService", paramf.toString());
            localb.h();
            return false;
          }
          if (paramBundle != null)
          {
            localObject2 = paramBundle.keySet().iterator();
            while (((Iterator)localObject2).hasNext())
            {
              paramString = (String)((Iterator)localObject2).next();
              if (B(localb, l1, paramString, paramBundle.getString(paramString)) < 0L)
              {
                paramf = new java/lang/StringBuilder;
                paramf.<init>();
                paramf.append("insertAccountIntoDatabase: ");
                paramf.append(paramAccount);
                paramf.append(", skipping since insertExtra failed for key ");
                paramf.append(paramString);
                com.xiaomi.accountsdk.utils.b.g("AccountManagerService", paramf.toString());
                localb.h();
                return false;
              }
            }
          }
          localb.l();
          A(paramf, paramAccount);
          localb.h();
          R(f.f(paramf));
          return true;
        }
        finally
        {
          localb.h();
        }
        paramf = finally;
        if (localObject2 != null) {
          ((Cursor)localObject2).close();
        }
      }
    }
  }
  
  private long l()
  {
    return 0L;
  }
  
  private long o(s5.b paramb, Account paramAccount)
  {
    String str = paramAccount.name;
    paramAccount = paramAccount.type;
    paramAccount = paramb.j(false, "accounts", new String[] { "_id" }, "name=? AND type=?", new Object[] { str, paramAccount }, null, null, null, null);
    try
    {
      if (paramAccount.moveToNext())
      {
        long l1 = paramAccount.getLong(0);
        return l1;
      }
      return -1L;
    }
    finally
    {
      paramAccount.close();
    }
  }
  
  private long s(s5.b paramb, long paramLong, String paramString)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("accounts_id=");
    ((StringBuilder)localObject).append(paramLong);
    ((StringBuilder)localObject).append(" AND ");
    ((StringBuilder)localObject).append("key");
    ((StringBuilder)localObject).append("=?");
    localObject = ((StringBuilder)localObject).toString();
    paramString = paramb.j(false, "extras", new String[] { "_id" }, (String)localObject, new Object[] { paramString }, null, null, null, null);
    try
    {
      if (paramString.moveToNext())
      {
        paramLong = paramString.getLong(0);
        return paramLong;
      }
      return -1L;
    }
    finally
    {
      paramString.close();
    }
  }
  
  private static File u(Context paramContext, int paramInt)
  {
    paramContext = paramContext.getFilesDir();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("xiaomi_account/");
    localStringBuilder.append(paramInt);
    paramContext = new File(paramContext, localStringBuilder.toString());
    paramContext.mkdirs();
    return new File(paramContext, "accounts.db");
  }
  
  private static String v(Context paramContext, int paramInt)
  {
    return u(paramContext, paramInt).getPath();
  }
  
  private f x()
  {
    return w(r5.b.a());
  }
  
  private f z(int paramInt)
  {
    synchronized (this.g)
    {
      f localf1 = (f)this.g.get(paramInt);
      f localf2 = localf1;
      if (localf1 == null)
      {
        localf2 = new com/xiaomi/accounts/e$f;
        localf2.<init>(this.a, paramInt);
        this.g.append(paramInt, localf2);
        G(localf2);
        X(localf2);
      }
      return localf2;
    }
  }
  
  public void C(String paramString1, String paramString2)
  {
    if (Log.isLoggable("AccountManagerService", 2))
    {
      ??? = new StringBuilder();
      ((StringBuilder)???).append("invalidateAuthToken: accountType ");
      ((StringBuilder)???).append(paramString1);
      ((StringBuilder)???).append(", caller's uid ");
      ((StringBuilder)???).append(Binder.getCallingUid());
      ((StringBuilder)???).append(", pid ");
      ((StringBuilder)???).append(Binder.getCallingPid());
      com.xiaomi.accountsdk.utils.b.g("AccountManagerService", ((StringBuilder)???).toString());
    }
    if (paramString1 != null) {
      if (paramString2 != null)
      {
        f localf = x();
        long l1 = l();
        try
        {
          synchronized (f.a(localf))
          {
            s5.b localb = f.b(localf).e(this.a);
            localb.a();
            try
            {
              D(localf, localb, paramString1, paramString2);
              localb.l();
              localb.h();
              return;
            }
            finally
            {
              localb.h();
            }
          }
          throw new IllegalArgumentException("authToken is null");
        }
        finally
        {
          P(l1);
        }
      }
    }
    throw new IllegalArgumentException("accountType is null");
  }
  
  public String F(Account paramAccount, String paramString)
  {
    Object localObject;
    if (Log.isLoggable("AccountManagerService", 2))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("peekAuthToken: ");
      ((StringBuilder)localObject).append(paramAccount);
      ((StringBuilder)localObject).append(", authTokenType ");
      ((StringBuilder)localObject).append(paramString);
      ((StringBuilder)localObject).append(", caller's uid ");
      ((StringBuilder)localObject).append(Binder.getCallingUid());
      ((StringBuilder)localObject).append(", pid ");
      ((StringBuilder)localObject).append(Binder.getCallingPid());
      com.xiaomi.accountsdk.utils.b.g("AccountManagerService", ((StringBuilder)localObject).toString());
    }
    if (paramAccount != null)
    {
      if (paramString != null)
      {
        localObject = x();
        long l1 = l();
        try
        {
          paramAccount = H((f)localObject, paramAccount, paramString);
          return paramAccount;
        }
        finally
        {
          P(l1);
        }
      }
      throw new IllegalArgumentException("authTokenType is null");
    }
    throw new IllegalArgumentException("account is null");
  }
  
  protected String H(f paramf, Account paramAccount, String paramString)
  {
    synchronized (f.a(paramf))
    {
      HashMap localHashMap1 = (HashMap)f.e(paramf).get(paramAccount);
      HashMap localHashMap2 = localHashMap1;
      if (localHashMap1 == null)
      {
        localHashMap2 = I(f.b(paramf).e(this.a), paramAccount);
        f.e(paramf).put(paramAccount, localHashMap2);
      }
      paramf = (String)localHashMap2.get(paramString);
      return paramf;
    }
  }
  
  protected HashMap<String, String> I(s5.b paramb, Account paramAccount)
  {
    HashMap localHashMap = new HashMap();
    paramb = paramb.j(false, "authtokens", j, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)", new Object[] { paramAccount.name, paramAccount.type }, null, null, null, null);
    try
    {
      while (paramb.moveToNext()) {
        localHashMap.put(paramb.getString(0), paramb.getString(1));
      }
      return localHashMap;
    }
    finally
    {
      paramb.close();
    }
  }
  
  protected HashMap<String, String> K(s5.b paramb, Account paramAccount)
  {
    HashMap localHashMap = new HashMap();
    paramb = paramb.j(false, "extras", k, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)", new Object[] { paramAccount.name, paramAccount.type }, null, null, null, null);
    try
    {
      while (paramb.moveToNext()) {
        localHashMap.put(paramb.getString(0), paramb.getString(1));
      }
      return localHashMap;
    }
    finally
    {
      paramb.close();
    }
  }
  
  protected String L(f paramf, Account paramAccount, String paramString)
  {
    synchronized (f.a(paramf))
    {
      HashMap localHashMap1 = (HashMap)f.d(paramf).get(paramAccount);
      HashMap localHashMap2;
      if (localHashMap1 != null)
      {
        localHashMap2 = localHashMap1;
        if (!TextUtils.isEmpty((CharSequence)localHashMap1.get(paramString))) {}
      }
      else
      {
        localHashMap2 = K(f.b(paramf).e(this.a), paramAccount);
        f.d(paramf).put(paramAccount, localHashMap2);
      }
      paramf = (String)localHashMap2.get(paramString);
      return paramf;
    }
  }
  
  public void M(h paramh, Account paramAccount)
  {
    Object localObject;
    if (Log.isLoggable("AccountManagerService", 2))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("removeAccount: ");
      ((StringBuilder)localObject).append(paramAccount);
      ((StringBuilder)localObject).append(", response ");
      ((StringBuilder)localObject).append(paramh);
      ((StringBuilder)localObject).append(", caller's uid ");
      ((StringBuilder)localObject).append(Binder.getCallingUid());
      ((StringBuilder)localObject).append(", pid ");
      ((StringBuilder)localObject).append(Binder.getCallingPid());
      com.xiaomi.accountsdk.utils.b.g("AccountManagerService", ((StringBuilder)localObject).toString());
    }
    if (paramh != null)
    {
      if (paramAccount != null)
      {
        localObject = x();
        long l1 = l();
        try
        {
          d locald = new com/xiaomi/accounts/e$d;
          locald.<init>(this, (f)localObject, paramh, paramAccount);
          locald.o0();
          return;
        }
        finally
        {
          P(l1);
        }
      }
      throw new IllegalArgumentException("account is null");
    }
    throw new IllegalArgumentException("response is null");
  }
  
  public void S(Account paramAccount, String paramString1, String paramString2)
  {
    Object localObject;
    if (Log.isLoggable("AccountManagerService", 2))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("setAuthToken: ");
      ((StringBuilder)localObject).append(paramAccount);
      ((StringBuilder)localObject).append(", authTokenType ");
      ((StringBuilder)localObject).append(paramString1);
      ((StringBuilder)localObject).append(", caller's uid ");
      ((StringBuilder)localObject).append(Binder.getCallingUid());
      ((StringBuilder)localObject).append(", pid ");
      ((StringBuilder)localObject).append(Binder.getCallingPid());
      com.xiaomi.accountsdk.utils.b.g("AccountManagerService", ((StringBuilder)localObject).toString());
    }
    if (paramAccount != null)
    {
      if (paramString1 != null)
      {
        localObject = x();
        long l1 = l();
        try
        {
          Q((f)localObject, paramAccount, paramString1, paramString2);
          return;
        }
        finally
        {
          P(l1);
        }
      }
      throw new IllegalArgumentException("authTokenType is null");
    }
    throw new IllegalArgumentException("account is null");
  }
  
  public void T(Account paramAccount, String paramString)
  {
    Object localObject;
    if (Log.isLoggable("AccountManagerService", 2))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("setPassword: ");
      ((StringBuilder)localObject).append(paramAccount);
      ((StringBuilder)localObject).append(", caller's uid ");
      ((StringBuilder)localObject).append(Binder.getCallingUid());
      ((StringBuilder)localObject).append(", pid ");
      ((StringBuilder)localObject).append(Binder.getCallingPid());
      com.xiaomi.accountsdk.utils.b.g("AccountManagerService", ((StringBuilder)localObject).toString());
    }
    if (paramAccount != null)
    {
      localObject = x();
      long l1 = l();
      try
      {
        U((f)localObject, paramAccount, paramString);
        if (!TextUtils.equals(paramString, t(paramAccount)))
        {
          com.xiaomi.accountsdk.utils.b.g("AccountManagerService", "save password failed, not equals");
          s5.b localb = f.b((f)localObject).e(this.a);
          a(localb);
          boolean bool = j(paramAccount, paramString, null);
          localObject = new java/lang/StringBuilder;
          ((StringBuilder)localObject).<init>();
          ((StringBuilder)localObject).append("add account ret=");
          ((StringBuilder)localObject).append(bool);
          com.xiaomi.accountsdk.utils.b.g("AccountManagerService", ((StringBuilder)localObject).toString());
          if (bool) {
            if (TextUtils.equals(paramString, t(paramAccount)))
            {
              com.xiaomi.accountsdk.utils.b.g("AccountManagerService", "account & password correct");
            }
            else
            {
              com.xiaomi.accountsdk.utils.b.g("AccountManagerService", "account & password not match, error, delete account");
              a(localb);
            }
          }
        }
        return;
      }
      finally
      {
        P(l1);
      }
    }
    throw new IllegalArgumentException("account is null");
  }
  
  public void V(Account paramAccount, String paramString1, String paramString2)
  {
    Object localObject;
    if (Log.isLoggable("AccountManagerService", 2))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("setUserData: ");
      ((StringBuilder)localObject).append(paramAccount);
      ((StringBuilder)localObject).append(", key ");
      ((StringBuilder)localObject).append(paramString1);
      ((StringBuilder)localObject).append(", caller's uid ");
      ((StringBuilder)localObject).append(Binder.getCallingUid());
      ((StringBuilder)localObject).append(", pid ");
      ((StringBuilder)localObject).append(Binder.getCallingPid());
      com.xiaomi.accountsdk.utils.b.g("AccountManagerService", ((StringBuilder)localObject).toString());
    }
    if (paramString1 != null)
    {
      if (paramAccount != null)
      {
        localObject = x();
        long l1 = l();
        try
        {
          W((f)localObject, paramAccount, paramString1, paramString2);
          return;
        }
        finally
        {
          P(l1);
        }
      }
      throw new IllegalArgumentException("account is null");
    }
    throw new IllegalArgumentException("key is null");
  }
  
  protected void Y(f paramf, s5.b paramb, Account paramAccount, String paramString1, String paramString2)
  {
    HashMap localHashMap1 = (HashMap)f.e(paramf).get(paramAccount);
    HashMap localHashMap2 = localHashMap1;
    if (localHashMap1 == null)
    {
      localHashMap2 = I(paramb, paramAccount);
      f.e(paramf).put(paramAccount, localHashMap2);
    }
    if (paramString2 == null) {
      localHashMap2.remove(paramString1);
    } else {
      localHashMap2.put(paramString1, paramString2);
    }
  }
  
  protected void Z(f paramf, s5.b paramb, Account paramAccount, String paramString1, String paramString2)
  {
    HashMap localHashMap1 = (HashMap)f.d(paramf).get(paramAccount);
    HashMap localHashMap2 = localHashMap1;
    if (localHashMap1 == null)
    {
      localHashMap2 = K(paramb, paramAccount);
      f.d(paramf).put(paramAccount, localHashMap2);
    }
    if (paramString2 == null) {
      localHashMap2.remove(paramString1);
    } else {
      localHashMap2.put(paramString1, paramString2);
    }
  }
  
  public boolean j(Account paramAccount, String paramString, Bundle paramBundle)
  {
    Object localObject;
    if (Log.isLoggable("AccountManagerService", 2))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("addAccount: ");
      ((StringBuilder)localObject).append(paramAccount);
      ((StringBuilder)localObject).append(", caller's uid ");
      ((StringBuilder)localObject).append(Binder.getCallingUid());
      ((StringBuilder)localObject).append(", pid ");
      ((StringBuilder)localObject).append(Binder.getCallingPid());
      com.xiaomi.accountsdk.utils.b.g("AccountManagerService", ((StringBuilder)localObject).toString());
    }
    if (paramAccount != null)
    {
      localObject = x();
      long l1 = l();
      try
      {
        boolean bool = k((f)localObject, paramAccount, paramString, paramBundle);
        return bool;
      }
      finally
      {
        P(l1);
      }
    }
    throw new IllegalArgumentException("account is null");
  }
  
  public void m(Account paramAccount)
  {
    Object localObject;
    if (Log.isLoggable("AccountManagerService", 2))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("clearPassword: ");
      ((StringBuilder)localObject).append(paramAccount);
      ((StringBuilder)localObject).append(", caller's uid ");
      ((StringBuilder)localObject).append(Binder.getCallingUid());
      ((StringBuilder)localObject).append(", pid ");
      ((StringBuilder)localObject).append(Binder.getCallingPid());
      com.xiaomi.accountsdk.utils.b.g("AccountManagerService", ((StringBuilder)localObject).toString());
    }
    if (paramAccount != null)
    {
      localObject = x();
      long l1 = l();
      try
      {
        U((f)localObject, paramAccount, null);
        return;
      }
      finally
      {
        P(l1);
      }
    }
    throw new IllegalArgumentException("account is null");
  }
  
  public void n(h paramh, Account paramAccount, Bundle paramBundle, boolean paramBoolean)
  {
    Object localObject;
    if (Log.isLoggable("AccountManagerService", 2))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("confirmCredentials: ");
      ((StringBuilder)localObject).append(paramAccount);
      ((StringBuilder)localObject).append(", response ");
      ((StringBuilder)localObject).append(paramh);
      ((StringBuilder)localObject).append(", expectActivityLaunch ");
      ((StringBuilder)localObject).append(paramBoolean);
      ((StringBuilder)localObject).append(", caller's uid ");
      ((StringBuilder)localObject).append(Binder.getCallingUid());
      ((StringBuilder)localObject).append(", pid ");
      ((StringBuilder)localObject).append(Binder.getCallingPid());
      com.xiaomi.accountsdk.utils.b.g("AccountManagerService", ((StringBuilder)localObject).toString());
    }
    if (paramh != null)
    {
      if (paramAccount != null)
      {
        localObject = x();
        long l1 = l();
        try
        {
          b localb = new com/xiaomi/accounts/e$b;
          localb.<init>(this, (f)localObject, paramh, paramAccount.type, paramBoolean, true, paramAccount, paramBundle);
          localb.o0();
          return;
        }
        finally
        {
          P(l1);
        }
      }
      throw new IllegalArgumentException("account is null");
    }
    throw new IllegalArgumentException("response is null");
  }
  
  /* Error */
  public Account[] p(String paramString)
  {
    // Byte code:
    //   0: ldc 124
    //   2: iconst_2
    //   3: invokestatic 273	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   6: ifeq +66 -> 72
    //   9: new 225	java/lang/StringBuilder
    //   12: dup
    //   13: invokespecial 226	java/lang/StringBuilder:<init>	()V
    //   16: astore_2
    //   17: aload_2
    //   18: ldc_w 724
    //   21: invokevirtual 232	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: pop
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 232	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: pop
    //   31: aload_2
    //   32: ldc_w 589
    //   35: invokevirtual 232	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: pop
    //   39: aload_2
    //   40: invokestatic 594	android/os/Binder:getCallingUid	()I
    //   43: invokevirtual 331	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   46: pop
    //   47: aload_2
    //   48: ldc_w 596
    //   51: invokevirtual 232	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: pop
    //   55: aload_2
    //   56: invokestatic 599	android/os/Binder:getCallingPid	()I
    //   59: invokevirtual 331	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   62: pop
    //   63: ldc 124
    //   65: aload_2
    //   66: invokevirtual 241	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   69: invokestatic 289	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   72: aload_0
    //   73: invokespecial 601	com/xiaomi/accounts/e:x	()Lcom/xiaomi/accounts/e$f;
    //   76: astore_3
    //   77: aload_0
    //   78: invokespecial 603	com/xiaomi/accounts/e:l	()J
    //   81: lstore 4
    //   83: aload_3
    //   84: invokestatic 301	com/xiaomi/accounts/e$f:a	(Lcom/xiaomi/accounts/e$f;)Ljava/lang/Object;
    //   87: astore_2
    //   88: aload_2
    //   89: monitorenter
    //   90: aload_0
    //   91: aload_3
    //   92: aload_1
    //   93: invokevirtual 728	com/xiaomi/accounts/e:q	(Lcom/xiaomi/accounts/e$f;Ljava/lang/String;)[Landroid/accounts/Account;
    //   96: astore_1
    //   97: aload_2
    //   98: monitorexit
    //   99: aload_0
    //   100: lload 4
    //   102: invokespecial 607	com/xiaomi/accounts/e:P	(J)V
    //   105: aload_1
    //   106: areturn
    //   107: astore_1
    //   108: aload_2
    //   109: monitorexit
    //   110: aload_1
    //   111: athrow
    //   112: astore_1
    //   113: aload_0
    //   114: lload 4
    //   116: invokespecial 607	com/xiaomi/accounts/e:P	(J)V
    //   119: aload_1
    //   120: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	121	0	this	e
    //   0	121	1	paramString	String
    //   76	16	3	localf	f
    //   81	34	4	l1	long
    // Exception table:
    //   from	to	target	type
    //   90	99	107	finally
    //   108	110	107	finally
    //   83	90	112	finally
    //   110	112	112	finally
  }
  
  protected Account[] q(f paramf, String paramString)
  {
    X(paramf);
    if (paramString != null)
    {
      paramf = (Account[])f.c(paramf).get(paramString);
      if (paramf == null) {
        return m;
      }
      return (Account[])Arrays.copyOf(paramf, paramf.length);
    }
    paramString = f.c(paramf).values().iterator();
    int n = 0;
    while (paramString.hasNext()) {
      n += ((Account[])paramString.next()).length;
    }
    if (n == 0) {
      return m;
    }
    paramString = new Account[n];
    paramf = f.c(paramf).values().iterator();
    n = 0;
    while (paramf.hasNext())
    {
      Account[] arrayOfAccount = (Account[])paramf.next();
      System.arraycopy(arrayOfAccount, 0, paramString, n, arrayOfAccount.length);
      n += arrayOfAccount.length;
    }
    return paramString;
  }
  
  public void r(h paramh, Account paramAccount, String paramString, boolean paramBoolean1, boolean paramBoolean2, Bundle paramBundle)
  {
    Object localObject1;
    if (Log.isLoggable("AccountManagerService", 2))
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("getAuthToken: ");
      ((StringBuilder)localObject1).append(paramAccount);
      ((StringBuilder)localObject1).append(", response ");
      ((StringBuilder)localObject1).append(paramh);
      ((StringBuilder)localObject1).append(", authTokenType ");
      ((StringBuilder)localObject1).append(paramString);
      ((StringBuilder)localObject1).append(", notifyOnAuthFailure ");
      ((StringBuilder)localObject1).append(paramBoolean1);
      ((StringBuilder)localObject1).append(", expectActivityLaunch ");
      ((StringBuilder)localObject1).append(paramBoolean2);
      ((StringBuilder)localObject1).append(", caller's uid ");
      ((StringBuilder)localObject1).append(Binder.getCallingUid());
      ((StringBuilder)localObject1).append(", pid ");
      ((StringBuilder)localObject1).append(Binder.getCallingPid());
      com.xiaomi.accountsdk.utils.b.g("AccountManagerService", ((StringBuilder)localObject1).toString());
    }
    if (paramh != null)
    {
      if (paramAccount != null)
      {
        if (paramString != null)
        {
          localObject1 = x();
          this.e.b(AuthenticatorDescription.newKey(paramAccount.type));
          int n = Binder.getCallingUid();
          if (paramBundle == null) {
            paramBundle = new Bundle();
          }
          paramBundle.putInt("callerUid", n);
          paramBundle.putInt("callerPid", Binder.getCallingPid());
          if (paramBoolean1) {
            paramBundle.putBoolean("notifyOnAuthFailure", true);
          }
          long l1 = l();
          try
          {
            Object localObject2 = H((f)localObject1, paramAccount, paramString);
            if (localObject2 != null)
            {
              paramString = new android/os/Bundle;
              paramString.<init>();
              paramString.putString("authtoken", (String)localObject2);
              paramString.putString("authAccount", paramAccount.name);
              paramString.putString("accountType", paramAccount.type);
              E(paramh, paramString);
              return;
            }
            localObject2 = new com/xiaomi/accounts/e$a;
            ((a)localObject2).<init>(this, (f)localObject1, paramh, paramAccount.type, paramBoolean2, false, paramBundle, paramAccount, paramString, paramBoolean1);
            ((e)localObject2).o0();
            return;
          }
          finally
          {
            P(l1);
          }
        }
        throw new IllegalArgumentException("authTokenType is null");
      }
      throw new IllegalArgumentException("account is null");
    }
    throw new IllegalArgumentException("response is null");
  }
  
  public String t(Account paramAccount)
  {
    Object localObject;
    if (Log.isLoggable("AccountManagerService", 2))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("getPassword: ");
      ((StringBuilder)localObject).append(paramAccount);
      ((StringBuilder)localObject).append(", caller's uid ");
      ((StringBuilder)localObject).append(Binder.getCallingUid());
      ((StringBuilder)localObject).append(", pid ");
      ((StringBuilder)localObject).append(Binder.getCallingPid());
      com.xiaomi.accountsdk.utils.b.g("AccountManagerService", ((StringBuilder)localObject).toString());
    }
    if (paramAccount != null)
    {
      localObject = x();
      long l1 = l();
      try
      {
        paramAccount = J((f)localObject, paramAccount);
        return paramAccount;
      }
      finally
      {
        P(l1);
      }
    }
    throw new IllegalArgumentException("account is null");
  }
  
  protected f w(int paramInt)
  {
    synchronized (this.g)
    {
      f localf1 = (f)this.g.get(paramInt);
      f localf2 = localf1;
      if (localf1 == null)
      {
        localf2 = z(paramInt);
        this.g.append(paramInt, localf2);
      }
      return localf2;
    }
  }
  
  public String y(Account paramAccount, String paramString)
  {
    Object localObject;
    if (Log.isLoggable("AccountManagerService", 2))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("getUserData: ");
      ((StringBuilder)localObject).append(paramAccount);
      ((StringBuilder)localObject).append(", key ");
      ((StringBuilder)localObject).append(paramString);
      ((StringBuilder)localObject).append(", caller's uid ");
      ((StringBuilder)localObject).append(Binder.getCallingUid());
      ((StringBuilder)localObject).append(", pid ");
      ((StringBuilder)localObject).append(Binder.getCallingPid());
      com.xiaomi.accountsdk.utils.b.g("AccountManagerService", ((StringBuilder)localObject).toString());
    }
    if (paramAccount != null)
    {
      if (paramString != null)
      {
        localObject = x();
        long l1 = l();
        try
        {
          paramAccount = L((f)localObject, paramAccount, paramString);
          return paramAccount;
        }
        finally
        {
          P(l1);
        }
      }
      throw new IllegalArgumentException("key is null");
    }
    throw new IllegalArgumentException("account is null");
  }
  
  class a
    extends e.e
  {
    a(e.f paramf, h paramh, String paramString1, boolean paramBoolean1, boolean paramBoolean2, Bundle paramBundle, Account paramAccount, String paramString2, boolean paramBoolean3)
    {
      super(paramf, paramh, paramString1, paramBoolean1, paramBoolean2);
    }
    
    public void a(Bundle paramBundle)
    {
      if (paramBundle != null)
      {
        String str1 = paramBundle.getString("authtoken");
        if (str1 != null)
        {
          String str2 = paramBundle.getString("authAccount");
          String str3 = paramBundle.getString("accountType");
          if ((!TextUtils.isEmpty(str3)) && (!TextUtils.isEmpty(str2)))
          {
            e.h(e.this, this.j, new Account(str2, str3), this.n, str1);
          }
          else
          {
            b(5, "the type and name should not be empty");
            return;
          }
        }
      }
      super.a(paramBundle);
    }
    
    public void u0()
      throws RemoteException
    {
      this.h.w(this, this.m, this.n, this.l);
    }
    
    protected String w0(long paramLong)
    {
      Object localObject = this.l;
      if (localObject != null) {
        ((BaseBundle)localObject).keySet();
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(super.w0(paramLong));
      ((StringBuilder)localObject).append(", getAuthToken, ");
      ((StringBuilder)localObject).append(this.m);
      ((StringBuilder)localObject).append(", authTokenType ");
      ((StringBuilder)localObject).append(this.n);
      ((StringBuilder)localObject).append(", loginOptions ");
      ((StringBuilder)localObject).append(this.l);
      ((StringBuilder)localObject).append(", notifyOnAuthFailure ");
      ((StringBuilder)localObject).append(this.o);
      return ((StringBuilder)localObject).toString();
    }
  }
  
  class b
    extends e.e
  {
    b(e.f paramf, h paramh, String paramString, boolean paramBoolean1, boolean paramBoolean2, Account paramAccount, Bundle paramBundle)
    {
      super(paramf, paramh, paramString, paramBoolean1, paramBoolean2);
    }
    
    public void u0()
      throws RemoteException
    {
      this.h.D(this, this.l, this.m);
    }
    
    protected String w0(long paramLong)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(super.w0(paramLong));
      localStringBuilder.append(", confirmCredentials, ");
      localStringBuilder.append(this.l);
      return localStringBuilder.toString();
    }
  }
  
  private class c
    extends Handler
  {
    c(Looper paramLooper)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      if (paramMessage.what == 3)
      {
        ((e.e)paramMessage.obj).t0();
        return;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("unhandled message: ");
      localStringBuilder.append(paramMessage.what);
      throw new IllegalStateException(localStringBuilder.toString());
    }
  }
  
  private class d
    extends e.e
  {
    final Account l;
    
    public d(e.f paramf, h paramh, Account paramAccount)
    {
      super(paramf, paramh, paramAccount.type, false, true);
      this.l = paramAccount;
    }
    
    public void a(Bundle paramBundle)
    {
      h localh;
      Object localObject;
      if ((paramBundle != null) && (paramBundle.containsKey("booleanResult")) && (!paramBundle.containsKey("intent")))
      {
        boolean bool = paramBundle.getBoolean("booleanResult");
        if (bool) {
          e.g(e.this, this.j, this.l);
        }
        localh = s0();
        if (localh != null)
        {
          if (Log.isLoggable("AccountManagerService", 2))
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append(getClass().getSimpleName());
            ((StringBuilder)localObject).append(" calling onResult() on response ");
            ((StringBuilder)localObject).append(localh);
            com.xiaomi.accountsdk.utils.b.g("AccountManagerService", ((StringBuilder)localObject).toString());
          }
          localObject = new Bundle();
          ((BaseBundle)localObject).putBoolean("booleanResult", bool);
        }
      }
      try
      {
        localh.a((Bundle)localObject);
        label138:
        super.a(paramBundle);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        break label138;
      }
    }
    
    public void u0()
      throws RemoteException
    {
      this.h.U(this, this.l);
    }
    
    protected String w0(long paramLong)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(super.w0(paramLong));
      localStringBuilder.append(", removeAccount, account ");
      localStringBuilder.append(this.l);
      return localStringBuilder.toString();
    }
  }
  
  private abstract class e
    extends g.a
    implements IBinder.DeathRecipient, ServiceConnection
  {
    h a;
    final String b;
    final boolean c;
    final long d;
    public int e = 0;
    private int f = 0;
    private int g = 0;
    f h = null;
    private final boolean i;
    protected final e.f j;
    
    public e(e.f arg2, h paramh, String paramString, boolean paramBoolean1, boolean paramBoolean2)
    {
      if (paramh != null)
      {
        if (paramString != null)
        {
          this.j = ???;
          this.i = paramBoolean2;
          this.a = paramh;
          this.b = paramString;
          this.c = paramBoolean1;
          this.d = SystemClock.elapsedRealtime();
          synchronized (e.i(e.this))
          {
            e.i(e.this).put(toString(), this);
            try
            {
              paramh.asBinder().linkToDeath(this, 0);
            }
            catch (RemoteException this$1)
            {
              this.a = null;
              binderDied();
            }
            return;
          }
        }
        throw new IllegalArgumentException("accountType is null");
      }
      throw new IllegalArgumentException("response is null");
    }
    
    private boolean p0(String paramString)
    {
      Object localObject = e.f(e.this).b(AuthenticatorDescription.newKey(paramString));
      if (localObject == null)
      {
        if (Log.isLoggable("AccountManagerService", 2))
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("there is no authenticator for ");
          ((StringBuilder)localObject).append(paramString);
          ((StringBuilder)localObject).append(", bailing out");
          com.xiaomi.accountsdk.utils.b.g("AccountManagerService", ((StringBuilder)localObject).toString());
        }
        return false;
      }
      Intent localIntent = new Intent();
      localIntent.setAction("com.xiaomi.accounts.AccountAuthenticator");
      localIntent.setComponent(((b.a)localObject).b);
      if (Log.isLoggable("AccountManagerService", 2))
      {
        paramString = new StringBuilder();
        paramString.append("performing bindService to ");
        paramString.append(((b.a)localObject).b);
        com.xiaomi.accountsdk.utils.b.g("AccountManagerService", paramString.toString());
      }
      if (!e.c(e.this).bindService(localIntent, this, 1))
      {
        if (Log.isLoggable("AccountManagerService", 2))
        {
          paramString = new StringBuilder();
          paramString.append("bindService to ");
          paramString.append(((b.a)localObject).b);
          paramString.append(" failed");
          com.xiaomi.accountsdk.utils.b.g("AccountManagerService", paramString.toString());
        }
        return false;
      }
      return true;
    }
    
    private void r0()
    {
      synchronized (e.i(e.this))
      {
        if (e.i(e.this).remove(toString()) == null) {
          return;
        }
        h localh = this.a;
        if (localh != null)
        {
          localh.asBinder().unlinkToDeath(this, 0);
          this.a = null;
        }
        q0();
        x0();
        return;
      }
    }
    
    private void x0()
    {
      if (this.h != null)
      {
        this.h = null;
        e.c(e.this).unbindService(this);
      }
    }
    
    public void a(Bundle paramBundle)
    {
      this.e += 1;
      h localh;
      if ((this.c) && (paramBundle != null) && (paramBundle.containsKey("intent"))) {
        localh = this.a;
      } else {
        localh = s0();
      }
      if (localh != null)
      {
        if (paramBundle == null) {}
        try
        {
          if (Log.isLoggable("AccountManagerService", 2))
          {
            paramBundle = new java/lang/StringBuilder;
            paramBundle.<init>();
            paramBundle.append(getClass().getSimpleName());
            paramBundle.append(" calling onError() on response ");
            paramBundle.append(localh);
            com.xiaomi.accountsdk.utils.b.g("AccountManagerService", paramBundle.toString());
          }
          localh.b(5, "null bundle returned");
        }
        catch (RemoteException paramBundle)
        {
          StringBuilder localStringBuilder;
          if (!Log.isLoggable("AccountManagerService", 2)) {
            return;
          }
          com.xiaomi.accountsdk.utils.b.h("AccountManagerService", "failure while notifying response", paramBundle);
        }
        if (this.i) {
          paramBundle.remove("authtoken");
        }
        if (Log.isLoggable("AccountManagerService", 2))
        {
          localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>();
          localStringBuilder.append(getClass().getSimpleName());
          localStringBuilder.append(" calling onResult() on response ");
          localStringBuilder.append(localh);
          com.xiaomi.accountsdk.utils.b.g("AccountManagerService", localStringBuilder.toString());
        }
        localh.a(paramBundle);
      }
    }
    
    public void b(int paramInt, String paramString)
    {
      this.g += 1;
      h localh = s0();
      if (localh != null)
      {
        if (Log.isLoggable("AccountManagerService", 2))
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append(getClass().getSimpleName());
          localStringBuilder.append(" calling onError() on response ");
          localStringBuilder.append(localh);
          com.xiaomi.accountsdk.utils.b.g("AccountManagerService", localStringBuilder.toString());
        }
        try
        {
          localh.b(paramInt, paramString);
        }
        catch (RemoteException paramString)
        {
          if (!Log.isLoggable("AccountManagerService", 2)) {
            return;
          }
        }
        com.xiaomi.accountsdk.utils.b.h("AccountManagerService", "Session.onError: caught RemoteException while responding", paramString);
      }
      else if (Log.isLoggable("AccountManagerService", 2))
      {
        com.xiaomi.accountsdk.utils.b.g("AccountManagerService", "Session.onError: already closed");
      }
    }
    
    public void binderDied()
    {
      this.a = null;
      r0();
    }
    
    public void e()
    {
      this.f += 1;
    }
    
    void o0()
    {
      StringBuilder localStringBuilder;
      if (Log.isLoggable("AccountManagerService", 2))
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("initiating bind to authenticator type ");
        localStringBuilder.append(this.b);
        com.xiaomi.accountsdk.utils.b.g("AccountManagerService", localStringBuilder.toString());
      }
      if (!p0(this.b))
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("bind attempt failed for ");
        localStringBuilder.append(v0());
        com.xiaomi.accountsdk.utils.b.g("AccountManagerService", localStringBuilder.toString());
        b(1, "bind failure");
      }
    }
    
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      this.h = f.a.n0(paramIBinder);
      e.e().execute(new a());
    }
    
    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      this.h = null;
      paramComponentName = s0();
      if (paramComponentName != null) {
        try
        {
          paramComponentName.b(1, "disconnected");
        }
        catch (RemoteException paramComponentName)
        {
          if (Log.isLoggable("AccountManagerService", 2)) {
            com.xiaomi.accountsdk.utils.b.h("AccountManagerService", "Session.onServiceDisconnected: caught RemoteException while responding", paramComponentName);
          }
        }
      }
    }
    
    public void q0()
    {
      e.d(e.this).removeMessages(3, this);
    }
    
    h s0()
    {
      h localh = this.a;
      if (localh == null) {
        return null;
      }
      r0();
      return localh;
    }
    
    public void t0()
    {
      h localh = s0();
      if (localh != null) {
        try
        {
          localh.b(1, "timeout");
        }
        catch (RemoteException localRemoteException)
        {
          if (Log.isLoggable("AccountManagerService", 2)) {
            com.xiaomi.accountsdk.utils.b.h("AccountManagerService", "Session.onTimedOut: caught RemoteException while responding", localRemoteException);
          }
        }
      }
    }
    
    public abstract void u0()
      throws RemoteException;
    
    protected String v0()
    {
      return w0(SystemClock.elapsedRealtime());
    }
    
    protected String w0(long paramLong)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Session: expectLaunch ");
      localStringBuilder.append(this.c);
      localStringBuilder.append(", connected ");
      boolean bool;
      if (this.h != null) {
        bool = true;
      } else {
        bool = false;
      }
      localStringBuilder.append(bool);
      localStringBuilder.append(", stats (");
      localStringBuilder.append(this.e);
      localStringBuilder.append("/");
      localStringBuilder.append(this.f);
      localStringBuilder.append("/");
      localStringBuilder.append(this.g);
      localStringBuilder.append("), lifetime ");
      localStringBuilder.append((paramLong - this.d) / 1000.0D);
      return localStringBuilder.toString();
    }
    
    class a
      implements Runnable
    {
      a() {}
      
      public void run()
      {
        try
        {
          e.e.this.u0();
        }
        catch (RemoteException localRemoteException)
        {
          e.e.this.b(1, "remote exception");
        }
      }
    }
  }
  
  static class f
  {
    private final int a;
    private final c b;
    private final Object c;
    private final HashMap<String, Account[]> d;
    private HashMap<Account, HashMap<String, String>> e;
    private HashMap<Account, HashMap<String, String>> f;
    
    f(Context paramContext, int paramInt)
    {
      Object localObject = new Object();
      this.c = localObject;
      this.d = new LinkedHashMap();
      this.e = new HashMap();
      this.f = new HashMap();
      this.a = paramInt;
      try
      {
        c localc = new s5/c;
        localc.<init>(paramContext, e.b(paramContext, paramInt));
        this.b = localc;
        return;
      }
      finally {}
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accounts.e
 * JD-Core Version:    0.7.0.1
 */