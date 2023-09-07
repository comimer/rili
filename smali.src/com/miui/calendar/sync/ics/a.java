package com.miui.calendar.sync.ics;

import android.accounts.Account;
import android.app.Activity;
import android.app.Dialog;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import androidx.fragment.app.d;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.k0;
import androidx.lifecycle.u;
import androidx.lifecycle.v;
import androidx.work.WorkInfo;
import androidx.work.WorkInfo.State;
import com.android.calendar.common.b;
import com.android.calendar.syncer.SyncWorker;
import com.android.calendar.syncer.SyncWorker.a;
import com.android.calendar.syncer.model.ResourceInfo;
import com.android.calendar.syncer.model.TitleColorModel;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import com.miui.calendar.view.x;
import java.net.URI;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.k;
import miuix.appcompat.app.l;
import miuix.appcompat.app.m;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/sync/ics/a;", "Lcom/android/calendar/common/b;", "Lkotlin/u;", "h0", "Landroid/accounts/Account;", "account", "", "a0", "Landroid/content/ContentValues;", "d0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "", "e0", "maxProgress", "increment", "delay", "j0", "Landroid/net/Uri;", "validUri", "createAccount", "Lcom/miui/calendar/sync/ics/a$b;", "importListener", "f0", "onDestroy", "url", "k0", "Lcom/android/calendar/syncer/model/TitleColorModel;", "b", "Lcom/android/calendar/syncer/model/TitleColorModel;", "titleColorModel", "Lcom/miui/calendar/sync/ics/i;", "c", "Lcom/miui/calendar/sync/ics/i;", "validationModel", "Lcom/miui/calendar/sync/ics/a$c;", "d", "Lcom/miui/calendar/sync/ics/a$c;", "mResultObserver", "Lcom/miui/calendar/view/x;", "e", "Lcom/miui/calendar/view/x;", "c0", "()Lcom/miui/calendar/view/x;", "setMProgressDialog", "(Lcom/miui/calendar/view/x;)V", "mProgressDialog", "Landroid/os/HandlerThread;", "f", "Landroid/os/HandlerThread;", "mHandlerThread", "Lcom/miui/calendar/sync/ics/a$e;", "g", "Lcom/miui/calendar/sync/ics/a$e;", "b0", "()Lcom/miui/calendar/sync/ics/a$e;", "i0", "(Lcom/miui/calendar/sync/ics/a$e;)V", "mHandler", "Landroid/os/Handler;", "h", "Landroid/os/Handler;", "getMUiHandler", "()Landroid/os/Handler;", "mUiHandler", "<init>", "()V", "j", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public abstract class a
  extends b
{
  public static final a j = new a(null);
  private TitleColorModel b;
  private i c;
  private c d;
  private x e;
  private final HandlerThread f = new HandlerThread("update_progress", 10);
  protected e g;
  private final Handler h = new Handler(Looper.getMainLooper());
  public Map<Integer, View> i;
  
  /* Error */
  private final boolean a0(Account paramAccount)
  {
    // Byte code:
    //   0: ldc 141
    //   2: ldc 143
    //   4: invokestatic 148	com/miui/calendar/util/z:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   7: aload_0
    //   8: invokevirtual 154	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   11: ldc 156
    //   13: invokevirtual 162	android/content/ContentResolver:acquireContentProviderClient	(Ljava/lang/String;)Landroid/content/ContentProviderClient;
    //   16: astore_2
    //   17: iconst_0
    //   18: istore_3
    //   19: aload_2
    //   20: ifnull +261 -> 281
    //   23: getstatic 167	c2/b:h	Lc2/b$a;
    //   26: astore 4
    //   28: aload_0
    //   29: getfield 137	com/miui/calendar/sync/ics/a:b	Lcom/android/calendar/syncer/model/TitleColorModel;
    //   32: astore 5
    //   34: aconst_null
    //   35: astore 6
    //   37: aload 5
    //   39: astore 7
    //   41: aload 5
    //   43: ifnonnull +11 -> 54
    //   46: ldc 168
    //   48: invokestatic 174	kotlin/jvm/internal/r:x	(Ljava/lang/String;)V
    //   51: aconst_null
    //   52: astore 7
    //   54: aload 7
    //   56: invokevirtual 180	com/android/calendar/syncer/model/TitleColorModel:getTitle	()Landroidx/lifecycle/u;
    //   59: invokevirtual 185	androidx/lifecycle/LiveData:e	()Ljava/lang/Object;
    //   62: checkcast 187	java/lang/String
    //   65: astore 8
    //   67: ldc 188
    //   69: astore 5
    //   71: aload 8
    //   73: astore 7
    //   75: aload 8
    //   77: ifnonnull +7 -> 84
    //   80: ldc 188
    //   82: astore 7
    //   84: aload 7
    //   86: ldc 190
    //   88: invokestatic 193	kotlin/jvm/internal/r:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   91: aload_0
    //   92: getfield 137	com/miui/calendar/sync/ics/a:b	Lcom/android/calendar/syncer/model/TitleColorModel;
    //   95: astore 8
    //   97: aload 8
    //   99: ifnonnull +11 -> 110
    //   102: ldc 168
    //   104: invokestatic 174	kotlin/jvm/internal/r:x	(Ljava/lang/String;)V
    //   107: goto +7 -> 114
    //   110: aload 8
    //   112: astore 6
    //   114: aload 6
    //   116: invokevirtual 196	com/android/calendar/syncer/model/TitleColorModel:getUrl	()Landroidx/lifecycle/u;
    //   119: invokevirtual 185	androidx/lifecycle/LiveData:e	()Ljava/lang/Object;
    //   122: checkcast 187	java/lang/String
    //   125: astore 6
    //   127: aload 6
    //   129: ifnonnull +10 -> 139
    //   132: aload 5
    //   134: astore 6
    //   136: goto +3 -> 139
    //   139: aload 6
    //   141: ldc 198
    //   143: invokestatic 193	kotlin/jvm/internal/r:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   146: aload 4
    //   148: aload_1
    //   149: aload_2
    //   150: ldc 200
    //   152: iconst_2
    //   153: anewarray 187	java/lang/String
    //   156: dup
    //   157: iconst_0
    //   158: aload 7
    //   160: aastore
    //   161: dup
    //   162: iconst_1
    //   163: aload 6
    //   165: aastore
    //   166: invokevirtual 205	c2/b$a:a	(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    //   169: invokeinterface 211 1 0
    //   174: ifeq +107 -> 281
    //   177: aload_0
    //   178: aload_1
    //   179: invokespecial 214	com/miui/calendar/sync/ics/a:d0	(Landroid/accounts/Account;)Landroid/content/ContentValues;
    //   182: astore 7
    //   184: getstatic 220	at/bitfire/ical4android/AndroidCalendar:Companion	Lat/bitfire/ical4android/AndroidCalendar$Companion;
    //   187: aload_1
    //   188: aload_2
    //   189: aload 7
    //   191: invokevirtual 226	at/bitfire/ical4android/AndroidCalendar$Companion:create	(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   194: astore 7
    //   196: aload 4
    //   198: aload_1
    //   199: aload_2
    //   200: aload 7
    //   202: invokestatic 232	android/content/ContentUris:parseId	(Landroid/net/Uri;)J
    //   205: invokevirtual 235	c2/b$a:c	(Landroid/accounts/Account;Landroid/content/ContentProviderClient;J)Lc2/b;
    //   208: pop
    //   209: new 237	java/lang/StringBuilder
    //   212: astore_1
    //   213: aload_1
    //   214: invokespecial 238	java/lang/StringBuilder:<init>	()V
    //   217: aload_1
    //   218: ldc 240
    //   220: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: pop
    //   224: aload_1
    //   225: aload 7
    //   227: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   230: pop
    //   231: ldc 141
    //   233: aload_1
    //   234: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   237: invokestatic 256	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   240: pop
    //   241: goto +40 -> 281
    //   244: astore_1
    //   245: goto +30 -> 275
    //   248: astore_1
    //   249: ldc 141
    //   251: ldc_w 258
    //   254: aload_1
    //   255: invokestatic 261	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   258: pop
    //   259: aload_0
    //   260: aload_1
    //   261: invokevirtual 266	java/lang/Throwable:getLocalizedMessage	()Ljava/lang/String;
    //   264: iconst_1
    //   265: invokestatic 272	com/miui/calendar/util/x0:I0	(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    //   268: aload_2
    //   269: invokevirtual 277	android/content/ContentProviderClient:close	()V
    //   272: goto +19 -> 291
    //   275: aload_2
    //   276: invokevirtual 277	android/content/ContentProviderClient:close	()V
    //   279: aload_1
    //   280: athrow
    //   281: aload_2
    //   282: ifnull +7 -> 289
    //   285: aload_2
    //   286: invokevirtual 277	android/content/ContentProviderClient:close	()V
    //   289: iconst_1
    //   290: istore_3
    //   291: iload_3
    //   292: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	293	0	this	a
    //   0	293	1	paramAccount	Account
    //   16	270	2	localContentProviderClient	android.content.ContentProviderClient
    //   18	274	3	bool	boolean
    //   26	171	4	locala	c2.b.a
    //   32	101	5	localObject1	Object
    //   35	129	6	localObject2	Object
    //   39	187	7	localObject3	Object
    //   65	46	8	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   23	34	244	finally
    //   46	51	244	finally
    //   54	67	244	finally
    //   84	97	244	finally
    //   102	107	244	finally
    //   114	127	244	finally
    //   139	241	244	finally
    //   249	268	244	finally
    //   23	34	248	java/lang/Exception
    //   46	51	248	java/lang/Exception
    //   54	67	248	java/lang/Exception
    //   84	97	248	java/lang/Exception
    //   102	107	248	java/lang/Exception
    //   114	127	248	java/lang/Exception
    //   139	241	248	java/lang/Exception
  }
  
  private final ContentValues d0(Account paramAccount)
  {
    ContentValues localContentValues = new ContentValues(9);
    localContentValues.put("account_name", paramAccount.name);
    localContentValues.put("account_type", paramAccount.type);
    TitleColorModel localTitleColorModel = this.b;
    Object localObject1 = null;
    Object localObject2 = localTitleColorModel;
    if (localTitleColorModel == null)
    {
      r.x("titleColorModel");
      localObject2 = null;
    }
    localContentValues.put("name", (String)((TitleColorModel)localObject2).getUrl().e());
    localTitleColorModel = this.b;
    localObject2 = localTitleColorModel;
    if (localTitleColorModel == null)
    {
      r.x("titleColorModel");
      localObject2 = null;
    }
    localContentValues.put("calendar_displayName", (String)((TitleColorModel)localObject2).getTitle().e());
    localObject2 = this.b;
    if (localObject2 == null)
    {
      r.x("titleColorModel");
      localObject2 = localObject1;
    }
    localContentValues.put("calendar_color", (Integer)((TitleColorModel)localObject2).getColor().e());
    localContentValues.put("ownerAccount", paramAccount.name);
    localContentValues.put("sync_events", Integer.valueOf(1));
    localContentValues.put("visible", Integer.valueOf(1));
    localContentValues.put("calendar_access_level", Integer.valueOf(200));
    return localContentValues;
  }
  
  private final void h0()
  {
    miuix.appcompat.app.a locala = J();
    if (locala == null) {
      return;
    }
    locala.A(e0());
  }
  
  protected final e b0()
  {
    e locale = this.g;
    if (locale != null) {
      return locale;
    }
    r.x("mHandler");
    return null;
  }
  
  protected final x c0()
  {
    return this.e;
  }
  
  public abstract int e0();
  
  protected final void f0(Uri paramUri, Account paramAccount, boolean paramBoolean, b paramb)
  {
    r.f(paramUri, "validUri");
    r.f(paramAccount, "account");
    r.f(paramb, "importListener");
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("importIcsFileToAccount validUri:");
    ((StringBuilder)localObject).append(paramUri);
    ((StringBuilder)localObject).append(" account:[");
    ((StringBuilder)localObject).append(paramAccount.name);
    ((StringBuilder)localObject).append(", ");
    ((StringBuilder)localObject).append(paramAccount.type);
    ((StringBuilder)localObject).append(']');
    z.a("CalSync:D:AbsImportFragment", ((StringBuilder)localObject).toString());
    c localc = this.d;
    localObject = localc;
    if (localc == null)
    {
      r.x("mResultObserver");
      localObject = null;
    }
    ((c)localObject).b(paramAccount);
    localObject = this.d;
    paramAccount = (Account)localObject;
    if (localObject == null)
    {
      r.x("mResultObserver");
      paramAccount = null;
    }
    paramAccount.c(paramBoolean);
    localObject = this.d;
    paramAccount = (Account)localObject;
    if (localObject == null)
    {
      r.x("mResultObserver");
      paramAccount = null;
    }
    paramAccount.e(paramb);
    paramb = this.c;
    paramAccount = paramb;
    if (paramb == null)
    {
      r.x("validationModel");
      paramAccount = null;
    }
    paramAccount.a(paramUri, null, null);
  }
  
  protected final void i0(e parame)
  {
    r.f(parame, "<set-?>");
    this.g = parame;
  }
  
  protected final void j0(int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("showProgress maxProgress:");
    ((StringBuilder)localObject).append(paramInt1);
    ((StringBuilder)localObject).append(", increment:");
    ((StringBuilder)localObject).append(paramInt2);
    ((StringBuilder)localObject).append(", delay:");
    ((StringBuilder)localObject).append(paramInt3);
    z.a("CalSync:D:AbsImportFragment", ((StringBuilder)localObject).toString());
    localObject = new x(this);
    this.e = ((x)localObject);
    ((x)localObject).G(1);
    x localx = this.e;
    if (localx != null)
    {
      localObject = getString(2131886732);
      r.e(localObject, "getString(R.string.ics_import_from_local_file)");
      localx.D((CharSequence)localObject);
    }
    localObject = this.e;
    if (localObject != null) {
      ((l)localObject).setCancelable(false);
    }
    localObject = this.e;
    if (localObject != null) {
      ((l)localObject).setCanceledOnTouchOutside(false);
    }
    localObject = this.e;
    if (localObject != null) {
      ((x)localObject).C(paramInt1);
    }
    localObject = this.e;
    if (localObject != null) {
      ((x)localObject).E(paramInt2);
    }
    if ((!isFinishing()) && (!isDestroyed()))
    {
      localObject = this.e;
      if (localObject != null) {
        ((Dialog)localObject).show();
      }
      localObject = Message.obtain(b0(), 1);
      ((Message)localObject).arg1 = paramInt3;
      ((Message)localObject).sendToTarget();
    }
  }
  
  protected final Uri k0(Uri paramUri)
  {
    r.f(paramUri, "url");
    Log.i("CalSync:D:AbsImportFragment", paramUri.toString());
    if (k.p(paramUri.getScheme(), "webcal", true))
    {
      paramUri = Uri.parse(new URI("http", paramUri.getAuthority(), paramUri.getPath(), paramUri.getQuery(), null).toString());
      r.e(paramUri, "parse(URI(\"http\", url.au….query, null).toString())");
      return paramUri;
    }
    if (k.p(paramUri.getScheme(), "webcals", true))
    {
      paramUri = Uri.parse(new URI("https", paramUri.getAuthority(), paramUri.getPath(), paramUri.getQuery(), null).toString());
      r.e(paramUri, "parse(URI(\"https\", url.a….query, null).toString())");
      return paramUri;
    }
    String str = paramUri.getScheme();
    if (str != null)
    {
      Locale localLocale = Locale.getDefault();
      r.e(localLocale, "getDefault()");
      str = str.toLowerCase(localLocale);
      r.e(str, "this as java.lang.String).toLowerCase(locale)");
    }
    else
    {
      str = null;
    }
    if (str != null)
    {
      switch (str.hashCode())
      {
      default: 
        break;
      case 951530617: 
        if (str.equals("content")) {
          break;
        }
        break;
      case 99617003: 
      case 3213448: 
        if ((!str.equals("https")) && ((goto 332) || (!str.equals("http")))) {
          break label332;
        }
        str = paramUri.getUserInfo();
        if (str != null)
        {
          k.r0(str, new char[] { ':' }, false, 0, 6, null);
          return Uri.parse(new URI(paramUri.getScheme(), null, paramUri.getHost(), paramUri.getPort(), paramUri.getPath(), paramUri.getQuery(), null).toString());
        }
        break;
      case 3143036: 
        if (!str.equals("file")) {
          break label332;
        }
      }
      return paramUri;
    }
    label332:
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.b = ((TitleColorModel)new k0(this).a(TitleColorModel.class));
    this.c = ((i)new k0(this).a(i.class));
    this.f.start();
    paramBundle = this.f.getLooper();
    r.e(paramBundle, "mHandlerThread.looper");
    i0(new e(paramBundle));
    this.d = new c(null, false, null, 7, null);
    Object localObject1 = this.c;
    Object localObject2 = null;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("validationModel");
      paramBundle = null;
    }
    localObject1 = paramBundle.getResult();
    paramBundle = this.d;
    if (paramBundle == null)
    {
      r.x("mResultObserver");
      paramBundle = localObject2;
    }
    ((LiveData)localObject1).h(this, paramBundle);
    h0();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    Object localObject1 = this.d;
    Object localObject2 = null;
    Object localObject3 = localObject1;
    if (localObject1 == null)
    {
      r.x("mResultObserver");
      localObject3 = null;
    }
    localObject1 = this.c;
    if (localObject1 == null) {
      r.x("validationModel");
    } else {
      localObject2 = localObject1;
    }
    localObject2.getResult().m(localObject3);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/sync/ics/a$a;", "", "", "MSG_UPDATE", "I", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/sync/ics/a$b;", "", "Lkotlin/u;", "a", "c", "b", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static abstract interface b
  {
    public abstract void a();
    
    public abstract void b();
    
    public abstract void c();
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/sync/ics/a$c;", "Landroidx/lifecycle/v;", "Lcom/android/calendar/syncer/model/ResourceInfo;", "it", "Lkotlin/u;", "a", "Landroid/accounts/Account;", "Landroid/accounts/Account;", "getAccount", "()Landroid/accounts/Account;", "b", "(Landroid/accounts/Account;)V", "account", "", "Z", "getCreateAccount", "()Z", "c", "(Z)V", "createAccount", "Lcom/miui/calendar/sync/ics/a$b;", "Lcom/miui/calendar/sync/ics/a$b;", "getImportListener", "()Lcom/miui/calendar/sync/ics/a$b;", "e", "(Lcom/miui/calendar/sync/ics/a$b;)V", "importListener", "<init>", "(Lcom/miui/calendar/sync/ics/a;Landroid/accounts/Account;ZLcom/miui/calendar/sync/ics/a$b;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class c
    implements v<ResourceInfo>
  {
    private Account a;
    private boolean b;
    private a.b c;
    
    public c(boolean paramBoolean, a.b paramb)
    {
      this.a = paramBoolean;
      this.b = paramb;
      Object localObject;
      this.c = localObject;
    }
    
    public void a(ResourceInfo paramResourceInfo)
    {
      r.f(paramResourceInfo, "it");
      if ((this.a != null) && (this.c != null))
      {
        Object localObject1 = paramResourceInfo.getException();
        a locala = null;
        if (localObject1 != null) {
          localObject1 = ((Throwable)localObject1).getLocalizedMessage();
        } else {
          localObject1 = null;
        }
        Object localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("importIcsFileToAccount errorMessage:");
        ((StringBuilder)localObject2).append((String)localObject1);
        z.a("CalSync:D:AbsImportFragment", ((StringBuilder)localObject2).toString());
        if (localObject1 == null)
        {
          localObject2 = a.Z(a.this);
          localObject1 = localObject2;
          if (localObject2 == null)
          {
            r.x("titleColorModel");
            localObject1 = null;
          }
          ((TitleColorModel)localObject1).getUrl().n(String.valueOf(paramResourceInfo.getUrl()));
          localObject2 = a.Z(a.this);
          localObject1 = localObject2;
          if (localObject2 == null)
          {
            r.x("titleColorModel");
            localObject1 = null;
          }
          ((TitleColorModel)localObject1).getTitle().n(paramResourceInfo.getCalendarName());
          paramResourceInfo = a.Z(a.this);
          if (paramResourceInfo == null)
          {
            r.x("titleColorModel");
            paramResourceInfo = locala;
          }
          paramResourceInfo.getColor().n(Integer.valueOf(a.this.getColor(2131099846)));
          if (this.b)
          {
            paramResourceInfo = a.this;
            localObject1 = this.a;
            r.c(localObject1);
            a.Y(paramResourceInfo, (Account)localObject1);
          }
          localObject1 = SyncWorker.k;
          paramResourceInfo = this.a;
          r.c(paramResourceInfo);
          paramResourceInfo = ((SyncWorker.a)localObject1).b(paramResourceInfo);
          localObject1 = ((SyncWorker.a)localObject1).a(paramResourceInfo);
          locala = a.this;
          localObject2 = this.c;
          r.c(localObject2);
          ((LiveData)localObject1).h(locala, new a.d(locala, paramResourceInfo, (a.b)localObject2));
        }
        else
        {
          z.a("CalSync:D:AbsImportFragment", a.this.getString(2131887705));
          paramResourceInfo = this.c;
          r.c(paramResourceInfo);
          paramResourceInfo.b();
        }
      }
    }
    
    public final void b(Account paramAccount)
    {
      this.a = paramAccount;
    }
    
    public final void c(boolean paramBoolean)
    {
      this.b = paramBoolean;
    }
    
    public final void e(a.b paramb)
    {
      this.c = paramb;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/sync/ics/a$d;", "Landroidx/lifecycle/v;", "Landroidx/work/WorkInfo;", "workInfo", "Lkotlin/u;", "a", "Landroid/content/Context;", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "Ljava/util/UUID;", "b", "Ljava/util/UUID;", "getUuid", "()Ljava/util/UUID;", "uuid", "Lcom/miui/calendar/sync/ics/a$b;", "c", "Lcom/miui/calendar/sync/ics/a$b;", "getImportListener", "()Lcom/miui/calendar/sync/ics/a$b;", "importListener", "<init>", "(Landroid/content/Context;Ljava/util/UUID;Lcom/miui/calendar/sync/ics/a$b;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private static final class d
    implements v<WorkInfo>
  {
    private final Context a;
    private final UUID b;
    private final a.b c;
    
    public d(Context paramContext, UUID paramUUID, a.b paramb)
    {
      this.a = paramContext;
      this.b = paramUUID;
      this.c = paramb;
    }
    
    public void a(WorkInfo paramWorkInfo)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("importIcsFileToAccount state:");
      WorkInfo.State localState;
      if (paramWorkInfo != null) {
        localState = paramWorkInfo.a();
      } else {
        localState = null;
      }
      localStringBuilder.append(localState);
      localStringBuilder.append(" uuid:");
      localStringBuilder.append(this.b);
      localStringBuilder.append(" thread:");
      localStringBuilder.append(Thread.currentThread().getId());
      z.a("CalSync:D:AbsImportFragment", localStringBuilder.toString());
      if (paramWorkInfo == null) {
        return;
      }
      paramWorkInfo = paramWorkInfo.a();
      int i = a.a[paramWorkInfo.ordinal()];
      if (i != 1)
      {
        if ((i != 2) && (i != 3)) {
          if (i != 4)
          {
            paramWorkInfo = this.a;
            x0.I0(paramWorkInfo, paramWorkInfo.getString(2131887705), 0);
            this.c.b();
          }
          else
          {
            this.c.c();
          }
        }
      }
      else {
        this.c.a();
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/sync/ics/a$e;", "Landroid/os/Handler;", "Landroid/os/Message;", "msg", "Lkotlin/u;", "handleMessage", "Landroid/os/Looper;", "looper", "<init>", "(Lcom/miui/calendar/sync/ics/a;Landroid/os/Looper;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  protected final class e
    extends Handler
  {
    public e()
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      r.f(paramMessage, "msg");
      x localx = a.this.c0();
      if (localx != null)
      {
        a locala = a.this;
        if (paramMessage.what == 1)
        {
          int i = new Random().nextInt(5) + 1;
          int j = paramMessage.arg1;
          paramMessage = new StringBuilder();
          paramMessage.append("UpdateProgressHandler progress:");
          paramMessage.append(localx.v());
          paramMessage.append(" increment:");
          paramMessage.append(i);
          paramMessage.append(" delay:");
          paramMessage.append(j);
          paramMessage.append(" thread:");
          paramMessage.append(Thread.currentThread().getId());
          z.a("CalSync:D:AbsImportFragment", paramMessage.toString());
          if (localx.v() + i * 2 >= localx.u())
          {
            removeMessages(1);
            z.a("CalSync:D:AbsImportFragment", "close to max.");
            return;
          }
          localx.w(i);
          paramMessage = Message.obtain(locala.b0(), 1);
          paramMessage.arg1 = j;
          locala.b0().sendMessageDelayed(paramMessage, j);
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.sync.ics.a
 * JD-Core Version:    0.7.0.1
 */