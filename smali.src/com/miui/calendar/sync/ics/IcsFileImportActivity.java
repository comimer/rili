package com.miui.calendar.sync.ics;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.net.Uri;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.c0;
import androidx.recyclerview.widget.RecyclerView.g;
import com.android.calendar.common.Utils;
import com.android.calendar.syncer.account.AccountHelper;
import com.android.calendar.syncer.account.AccountHelper.ImportType;
import com.miui.calendar.sync.NewEventImportActivity;
import com.miui.calendar.sync.NewEventImportActivity.b;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.i;
import com.miui.calendar.util.v;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import com.miui.calendar.view.LoadingLayout;
import com.miui.calendar.view.x;
import com.miui.calendar.widget.EmptyView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.j;
import kotlin.jvm.internal.r;
import kotlin.text.k;
import kotlin.u;
import kotlinx.coroutines.h;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.w0;
import miuix.appcompat.app.l;
import miuix.appcompat.app.m;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/sync/ics/IcsFileImportActivity;", "Lcom/miui/calendar/sync/ics/a;", "Lkotlin/u;", "C0", "B0", "Landroid/net/Uri;", "file", "x0", "w0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "", "e0", "requestCode", "", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "Landroid/content/Intent;", "intent", "onNewIntent", "A0", "k", "Ljava/lang/String;", "INTENT_PERM_EDITOR", "l", "INTENT_MANAGE_STORAGE", "m", "EXTRA_PKGNAME", "n", "AUTHORITY", "Landroidx/recyclerview/widget/RecyclerView;", "o", "Landroidx/recyclerview/widget/RecyclerView;", "mRV", "Lcom/miui/calendar/sync/ics/IcsFileImportActivity$b;", "p", "Lcom/miui/calendar/sync/ics/IcsFileImportActivity$b;", "mFileAdapter", "Lcom/miui/calendar/view/LoadingLayout;", "q", "Lcom/miui/calendar/view/LoadingLayout;", "mLoadingView", "Landroid/widget/TextView;", "r", "Landroid/widget/TextView;", "mBtnImport", "Lcom/miui/calendar/widget/EmptyView;", "v", "Lcom/miui/calendar/widget/EmptyView;", "mEmptyView", "", "Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;", "w", "Ljava/util/List;", "mFileList", "x", "[Ljava/lang/String;", "projection", "y", "selection", "z", "selectionArgs", "<init>", "()V", "E", "a", "b", "c", "d", "e", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class IcsFileImportActivity
  extends a
{
  public static final a E = new a(null);
  public Map<Integer, View> D;
  private final String k = "miui.intent.action.APP_PERM_EDITOR";
  private final String l = "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION";
  private final String m = "extra_pkgname";
  private final String n = "com.android.calendar";
  private RecyclerView o;
  private b p;
  private LoadingLayout q;
  private TextView r;
  private EmptyView v;
  private final List<e> w = new ArrayList(0);
  private final String[] x = { "_id", "title", "_data", "_size", "mime_type" };
  private final String y = "_data LIKE '%' || ? || '%'";
  private final String[] z = { ".ics" };
  
  private final void B0()
  {
    if (z0.h())
    {
      if (androidx.core.content.a.a(this, "android.permission.READ_EXTERNAL_STORAGE") == 0) {
        x0(getIntent().getData());
      } else {
        z0.J(this, this, 1024, null);
      }
    }
    else if (b.a())
    {
      x0(getIntent().getData());
    }
    else
    {
      startActivity(new Intent(this.l));
      finish();
    }
  }
  
  private final void C0()
  {
    Intent localIntent = new Intent(this.k);
    localIntent.putExtra(this.m, this.n);
    startActivity(localIntent);
  }
  
  private final void w0(Uri paramUri)
  {
    Object localObject = paramUri.getLastPathSegment();
    int i = 1;
    boolean bool = false;
    int j;
    if ((localObject != null) && (k.n((String)localObject, ".ics", true) == true)) {
      j = 1;
    } else {
      j = 0;
    }
    if (j != 0)
    {
      localObject = paramUri.toString();
      r.e(localObject, "file.toString()");
      localObject = DeviceUtils.l((String)localObject);
      if (((CharSequence)localObject).length() == 0) {
        j = i;
      } else {
        j = 0;
      }
      if (j == 0) {
        bool = b2.a.f(this).getBoolean((String)localObject, false);
      }
      localObject = new e(paramUri, (String)localObject, false, bool, 4, null);
      paramUri = new StringBuilder();
      paramUri.append("icsFileItem: ");
      paramUri.append(localObject);
      z.a("IcsFileImportFragment", paramUri.toString());
      this.w.add(localObject);
    }
  }
  
  private final void x0(final Uri paramUri)
  {
    LoadingLayout localLoadingLayout1 = this.q;
    LoadingLayout localLoadingLayout2 = localLoadingLayout1;
    if (localLoadingLayout1 == null)
    {
      r.x("mLoadingView");
      localLoadingLayout2 = null;
    }
    localLoadingLayout2.d();
    h.d(l0.a(w0.c()), null, null, new SuspendLambda(paramUri, null)
    {
      int label;
      
      public final kotlin.coroutines.c<u> create(Object paramAnonymousObject, kotlin.coroutines.c<?> paramAnonymousc)
      {
        return new 1(this.this$0, paramUri, paramAnonymousc);
      }
      
      public final Object invoke(k0 paramAnonymousk0, kotlin.coroutines.c<? super u> paramAnonymousc)
      {
        return ((1)create(paramAnonymousk0, paramAnonymousc)).invokeSuspend(u.a);
      }
      
      public final Object invokeSuspend(Object paramAnonymousObject)
      {
        Object localObject = kotlin.coroutines.intrinsics.a.d();
        int i = this.label;
        TextView localTextView1 = null;
        TextView localTextView2 = null;
        if (i != 0)
        {
          if (i == 1) {
            j.b(paramAnonymousObject);
          } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
          }
        }
        else
        {
          j.b(paramAnonymousObject);
          paramAnonymousObject = h.b(l0.a(w0.b()), null, null, new SuspendLambda(paramUri, this.this$0)
          {
            int label;
            
            public final kotlin.coroutines.c<u> create(Object paramAnonymous2Object, kotlin.coroutines.c<?> paramAnonymous2c)
            {
              return new 1(this.$file, this.this$0, paramAnonymous2c);
            }
            
            public final Object invoke(k0 paramAnonymous2k0, kotlin.coroutines.c<? super u> paramAnonymous2c)
            {
              return ((1)create(paramAnonymous2k0, paramAnonymous2c)).invokeSuspend(u.a);
            }
            
            /* Error */
            public final Object invokeSuspend(Object paramAnonymous2Object)
            {
              // Byte code:
              //   0: invokestatic 81	kotlin/coroutines/intrinsics/a:d	()Ljava/lang/Object;
              //   3: pop
              //   4: aload_0
              //   5: getfield 83	com/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1$loadFileAwait$1:label	I
              //   8: ifne +230 -> 238
              //   11: aload_1
              //   12: invokestatic 89	kotlin/j:b	(Ljava/lang/Object;)V
              //   15: aload_0
              //   16: getfield 42	com/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1$loadFileAwait$1:$file	Landroid/net/Uri;
              //   19: ifnonnull +190 -> 209
              //   22: aload_0
              //   23: getfield 44	com/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1$loadFileAwait$1:this$0	Lcom/miui/calendar/sync/ics/IcsFileImportActivity;
              //   26: invokevirtual 95	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
              //   29: ldc 97
              //   31: invokestatic 103	android/provider/MediaStore$Files:getContentUri	(Ljava/lang/String;)Landroid/net/Uri;
              //   34: aload_0
              //   35: getfield 44	com/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1$loadFileAwait$1:this$0	Lcom/miui/calendar/sync/ics/IcsFileImportActivity;
              //   38: invokestatic 109	com/miui/calendar/sync/ics/IcsFileImportActivity:t0	(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)[Ljava/lang/String;
              //   41: aload_0
              //   42: getfield 44	com/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1$loadFileAwait$1:this$0	Lcom/miui/calendar/sync/ics/IcsFileImportActivity;
              //   45: invokestatic 113	com/miui/calendar/sync/ics/IcsFileImportActivity:u0	(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)Ljava/lang/String;
              //   48: aload_0
              //   49: getfield 44	com/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1$loadFileAwait$1:this$0	Lcom/miui/calendar/sync/ics/IcsFileImportActivity;
              //   52: invokestatic 116	com/miui/calendar/sync/ics/IcsFileImportActivity:v0	(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)[Ljava/lang/String;
              //   55: ldc 118
              //   57: invokevirtual 124	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
              //   60: astore_1
              //   61: aload_1
              //   62: ifnull +142 -> 204
              //   65: aload_0
              //   66: getfield 44	com/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1$loadFileAwait$1:this$0	Lcom/miui/calendar/sync/ics/IcsFileImportActivity;
              //   69: astore_2
              //   70: new 126	java/lang/StringBuilder
              //   73: dup
              //   74: invokespecial 129	java/lang/StringBuilder:<init>	()V
              //   77: astore_3
              //   78: aload_3
              //   79: ldc 131
              //   81: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
              //   84: pop
              //   85: aload_3
              //   86: aload_1
              //   87: invokeinterface 141 1 0
              //   92: invokevirtual 144	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
              //   95: pop
              //   96: ldc 146
              //   98: aload_3
              //   99: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
              //   102: invokestatic 155	com/miui/calendar/util/z:a	(Ljava/lang/String;Ljava/lang/String;)V
              //   105: aload_2
              //   106: invokestatic 159	com/miui/calendar/sync/ics/IcsFileImportActivity:r0	(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)Ljava/util/List;
              //   109: invokeinterface 164 1 0
              //   114: aload_1
              //   115: invokeinterface 168 1 0
              //   120: ifeq +48 -> 168
              //   123: aload_1
              //   124: aload_1
              //   125: ldc 170
              //   127: invokeinterface 174 2 0
              //   132: invokeinterface 178 2 0
              //   137: astore 4
              //   139: new 180	java/io/File
              //   142: astore_3
              //   143: aload_3
              //   144: aload 4
              //   146: invokespecial 183	java/io/File:<init>	(Ljava/lang/String;)V
              //   149: aload_3
              //   150: invokestatic 189	android/net/Uri:fromFile	(Ljava/io/File;)Landroid/net/Uri;
              //   153: astore_3
              //   154: aload_3
              //   155: ldc 191
              //   157: invokestatic 197	kotlin/jvm/internal/r:e	(Ljava/lang/Object;Ljava/lang/String;)V
              //   160: aload_2
              //   161: aload_3
              //   162: invokestatic 201	com/miui/calendar/sync/ics/IcsFileImportActivity:n0	(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;Landroid/net/Uri;)V
              //   165: goto -51 -> 114
              //   168: aload_1
              //   169: invokeinterface 204 1 0
              //   174: goto +15 -> 189
              //   177: astore_2
              //   178: goto +18 -> 196
              //   181: astore_2
              //   182: aload_2
              //   183: invokevirtual 209	java/lang/Throwable:printStackTrace	()V
              //   186: goto -18 -> 168
              //   189: getstatic 71	kotlin/u:a	Lkotlin/u;
              //   192: astore_1
              //   193: goto +43 -> 236
              //   196: aload_1
              //   197: invokeinterface 204 1 0
              //   202: aload_2
              //   203: athrow
              //   204: aconst_null
              //   205: astore_1
              //   206: goto +30 -> 236
              //   209: aload_0
              //   210: getfield 44	com/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1$loadFileAwait$1:this$0	Lcom/miui/calendar/sync/ics/IcsFileImportActivity;
              //   213: invokestatic 159	com/miui/calendar/sync/ics/IcsFileImportActivity:r0	(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)Ljava/util/List;
              //   216: invokeinterface 164 1 0
              //   221: aload_0
              //   222: getfield 44	com/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1$loadFileAwait$1:this$0	Lcom/miui/calendar/sync/ics/IcsFileImportActivity;
              //   225: aload_0
              //   226: getfield 42	com/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1$loadFileAwait$1:$file	Landroid/net/Uri;
              //   229: invokestatic 201	com/miui/calendar/sync/ics/IcsFileImportActivity:n0	(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;Landroid/net/Uri;)V
              //   232: getstatic 71	kotlin/u:a	Lkotlin/u;
              //   235: astore_1
              //   236: aload_1
              //   237: areturn
              //   238: new 211	java/lang/IllegalStateException
              //   241: dup
              //   242: ldc 213
              //   244: invokespecial 214	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
              //   247: athrow
              // Local variable table:
              //   start	length	slot	name	signature
              //   0	248	0	this	1
              //   0	248	1	paramAnonymous2Object	Object
              //   69	92	2	localIcsFileImportActivity	IcsFileImportActivity
              //   177	1	2	localObject1	Object
              //   181	22	2	localException	java.lang.Exception
              //   77	85	3	localObject2	Object
              //   137	8	4	str	String
              // Exception table:
              //   from	to	target	type
              //   114	165	177	finally
              //   182	186	177	finally
              //   114	165	181	java/lang/Exception
            }
          }, 3, null);
          this.label = 1;
          if (paramAnonymousObject.E(this) == localObject) {
            return localObject;
          }
        }
        localObject = IcsFileImportActivity.s0(this.this$0);
        paramAnonymousObject = localObject;
        if (localObject == null)
        {
          r.x("mLoadingView");
          paramAnonymousObject = null;
        }
        paramAnonymousObject.a();
        localObject = IcsFileImportActivity.q0(this.this$0);
        paramAnonymousObject = localObject;
        if (localObject == null)
        {
          r.x("mFileAdapter");
          paramAnonymousObject = null;
        }
        paramAnonymousObject.notifyDataSetChanged();
        if (IcsFileImportActivity.r0(this.this$0).size() > 0)
        {
          localTextView1 = IcsFileImportActivity.o0(this.this$0);
          paramAnonymousObject = localTextView1;
          if (localTextView1 == null)
          {
            r.x("mBtnImport");
            paramAnonymousObject = null;
          }
          paramAnonymousObject.setVisibility(0);
          paramAnonymousObject = IcsFileImportActivity.p0(this.this$0);
          if (paramAnonymousObject == null)
          {
            r.x("mEmptyView");
            paramAnonymousObject = localTextView2;
          }
          paramAnonymousObject.setVisibility(8);
        }
        else
        {
          localTextView2 = IcsFileImportActivity.o0(this.this$0);
          paramAnonymousObject = localTextView2;
          if (localTextView2 == null)
          {
            r.x("mBtnImport");
            paramAnonymousObject = null;
          }
          paramAnonymousObject.setVisibility(4);
          paramAnonymousObject = IcsFileImportActivity.p0(this.this$0);
          if (paramAnonymousObject == null)
          {
            r.x("mEmptyView");
            paramAnonymousObject = localTextView1;
          }
          paramAnonymousObject.setVisibility(0);
        }
        return u.a;
      }
    }, 3, null);
  }
  
  private static final void y0(IcsFileImportActivity paramIcsFileImportActivity, View paramView)
  {
    r.f(paramIcsFileImportActivity, "this$0");
    paramIcsFileImportActivity.A0();
  }
  
  private static final void z0(IcsFileImportActivity paramIcsFileImportActivity, View paramView)
  {
    r.f(paramIcsFileImportActivity, "this$0");
    paramIcsFileImportActivity.startActivity(com.miui.calendar.web.d.d(paramIcsFileImportActivity, NewEventImportActivity.r.a()));
    g0.d("key_click_import_help");
  }
  
  public void A0()
  {
    g0.d("key_click_import_by_local_file_btn");
    Object localObject1 = new Bundle();
    ((BaseBundle)localObject1).putString("import_type", AccountHelper.ImportType.IMPORT.getType());
    Object localObject2 = AccountHelper.a;
    Object localObject3 = ((AccountHelper)localObject2).f().name;
    r.e(localObject3, "IMPORT_ACCOUNT.name");
    Object localObject4 = ((AccountHelper)localObject2).f().type;
    r.e(localObject4, "IMPORT_ACCOUNT.type");
    localObject1 = AccountHelper.e((AccountHelper)localObject2, this, (String)localObject3, (String)localObject4, null, (Bundle)localObject1, true, 8, null);
    if (localObject1 == null) {
      return;
    }
    localObject2 = this.w;
    localObject4 = new ArrayList();
    localObject3 = ((Iterable)localObject2).iterator();
    for (;;)
    {
      boolean bool = ((Iterator)localObject3).hasNext();
      int i = 1;
      if (!bool) {
        break;
      }
      localObject2 = ((Iterator)localObject3).next();
      e locale = (e)localObject2;
      if ((!locale.e()) || (!locale.a()) || (locale.b()) || (k0(locale.d()) == null)) {
        i = 0;
      }
      if (i != 0) {
        ((Collection)localObject4).add(localObject2);
      }
    }
    if ((((Collection)localObject4).isEmpty() ^ true))
    {
      j0(((List)localObject4).size() * 100, ((List)localObject4).size() * 2, 30);
      localObject3 = (e)((List)localObject4).get(0);
      localObject2 = k0(((e)localObject3).d());
      r.c(localObject2);
      a.g0(this, (Uri)localObject2, (Account)localObject1, false, new c((List)localObject4, (e)localObject3, (Account)localObject1), 4, null);
    }
  }
  
  public int e0()
  {
    return 2131886732;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131558449);
    paramBundle = findViewById(2131362450);
    r.e(paramBundle, "findViewById<RecyclerView>(R.id.file_list)");
    this.o = ((RecyclerView)paramBundle);
    this.p = new b();
    Object localObject1 = this.o;
    Object localObject2 = null;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("mRV");
      paramBundle = null;
    }
    Object localObject3 = this.p;
    localObject1 = localObject3;
    if (localObject3 == null)
    {
      r.x("mFileAdapter");
      localObject1 = null;
    }
    paramBundle.setAdapter((RecyclerView.g)localObject1);
    localObject1 = this.o;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("mRV");
      paramBundle = null;
    }
    paramBundle.setLayoutManager(new LinearLayoutManager(this));
    paramBundle = findViewById(2131362703);
    r.e(paramBundle, "findViewById<LoadingLayout>(R.id.loading)");
    localObject1 = (LoadingLayout)paramBundle;
    this.q = ((LoadingLayout)localObject1);
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("mLoadingView");
      paramBundle = null;
    }
    localObject1 = getResources();
    if (localObject1 != null)
    {
      localObject3 = ((Resources)localObject1).getString(2131886836);
      localObject1 = localObject3;
      if (localObject3 != null) {}
    }
    else
    {
      localObject1 = "";
    }
    paramBundle.setLoadingText((String)localObject1);
    paramBundle = findViewById(2131362604);
    r.e(paramBundle, "findViewById<TextView>(R.id.import_btn)");
    this.r = ((TextView)paramBundle);
    paramBundle = findViewById(2131362406);
    r.e(paramBundle, "findViewById<EmptyView>(R.id.empty_view)");
    this.v = ((EmptyView)paramBundle);
    localObject1 = this.r;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("mBtnImport");
      paramBundle = null;
    }
    paramBundle.setOnClickListener(new c(this));
    localObject1 = this.r;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("mBtnImport");
      paramBundle = null;
    }
    paramBundle.setVisibility(4);
    localObject1 = this.r;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("mBtnImport");
      paramBundle = null;
    }
    paramBundle.setText(2131886739);
    localObject1 = this.r;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("mBtnImport");
      paramBundle = null;
    }
    paramBundle.setEnabled(false);
    paramBundle = this.r;
    if (paramBundle == null)
    {
      r.x("mBtnImport");
      paramBundle = localObject2;
    }
    v.k(paramBundle);
    paramBundle = (TextView)findViewById(2131362607);
    if (!i.g()) {
      paramBundle.setVisibility(8);
    }
    paramBundle.setOnClickListener(new d(this));
    B0();
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    Uri localUri;
    if (paramIntent != null) {
      localUri = paramIntent.getData();
    } else {
      localUri = null;
    }
    if (localUri != null) {
      x0(paramIntent.getData());
    }
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    r.f(paramArrayOfString, "permissions");
    r.f(paramArrayOfInt, "grantResults");
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
    if (paramInt != 1024) {
      return;
    }
    if ((androidx.core.content.a.a(this, "android.permission.READ_EXTERNAL_STORAGE") == 0) && (androidx.core.content.a.a(this, "android.permission.WRITE_EXTERNAL_STORAGE") == 0))
    {
      x0(getIntent().getData());
    }
    else if ((shouldShowRequestPermissionRationale("android.permission.READ_EXTERNAL_STORAGE")) && (shouldShowRequestPermissionRationale("android.permission.WRITE_EXTERNAL_STORAGE")))
    {
      z.g("IcsFileImportFragment", "onRequestPermissionsResult not allowed.");
      finish();
    }
    else
    {
      C0();
      finish();
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/sync/ics/IcsFileImportActivity$a;", "", "", "REQUEST_CODE", "I", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/sync/ics/IcsFileImportActivity$b;", "Landroidx/recyclerview/widget/RecyclerView$g;", "Lcom/miui/calendar/sync/ics/IcsFileImportActivity$d;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "k", "getItemCount", "holder", "position", "Lkotlin/u;", "h", "<init>", "(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class b
    extends RecyclerView.g<IcsFileImportActivity.d>
  {
    private static final void i(IcsFileImportActivity.e parame, IcsFileImportActivity paramIcsFileImportActivity, CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      r.f(parame, "$fileItem");
      r.f(paramIcsFileImportActivity, "this$0");
      parame.f(paramBoolean);
      paramCompoundButton = IcsFileImportActivity.o0(paramIcsFileImportActivity);
      parame = paramCompoundButton;
      if (paramCompoundButton == null)
      {
        r.x("mBtnImport");
        parame = null;
      }
      paramIcsFileImportActivity = IcsFileImportActivity.r0(paramIcsFileImportActivity);
      paramBoolean = paramIcsFileImportActivity instanceof Collection;
      boolean bool = false;
      if ((paramBoolean) && (paramIcsFileImportActivity.isEmpty()))
      {
        paramBoolean = bool;
      }
      else
      {
        paramIcsFileImportActivity = paramIcsFileImportActivity.iterator();
        do
        {
          paramBoolean = bool;
          if (!paramIcsFileImportActivity.hasNext()) {
            break;
          }
        } while (!((IcsFileImportActivity.e)paramIcsFileImportActivity.next()).a());
        paramBoolean = true;
      }
      parame.setEnabled(paramBoolean);
    }
    
    private static final void j(IcsFileImportActivity.e parame, IcsFileImportActivity.d paramd, View paramView)
    {
      r.f(parame, "$fileItem");
      r.f(paramd, "$holder");
      if (!parame.b()) {
        paramd.b().setChecked(paramd.b().isChecked() ^ true);
      }
    }
    
    public int getItemCount()
    {
      return IcsFileImportActivity.r0(this.a).size();
    }
    
    public void h(IcsFileImportActivity.d paramd, int paramInt)
    {
      r.f(paramd, "holder");
      IcsFileImportActivity.e locale = (IcsFileImportActivity.e)IcsFileImportActivity.r0(this.a).get(paramInt);
      paramd.a().setText(locale.d().getLastPathSegment());
      paramd.b().setChecked(locale.a());
      paramd.b().setOnCheckedChangeListener(new e(locale, this.a));
      boolean bool = locale.b();
      Object localObject = paramd.b();
      int i = 0;
      if (bool) {
        paramInt = 4;
      } else {
        paramInt = 0;
      }
      ((View)localObject).setVisibility(paramInt);
      localObject = paramd.c();
      if (bool) {
        paramInt = i;
      } else {
        paramInt = 8;
      }
      ((View)localObject).setVisibility(paramInt);
      paramd.itemView.setOnClickListener(new f(locale, paramd));
      v.k(paramd.itemView);
    }
    
    public IcsFileImportActivity.d k(ViewGroup paramViewGroup, int paramInt)
    {
      r.f(paramViewGroup, "parent");
      paramViewGroup = LayoutInflater.from(paramViewGroup.getContext()).inflate(2131558643, paramViewGroup, false);
      r.e(paramViewGroup, "rootView");
      return new IcsFileImportActivity.d(paramViewGroup);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/sync/ics/IcsFileImportActivity$c;", "Lcom/miui/calendar/sync/ics/a$b;", "Lkotlin/u;", "a", "c", "b", "", "Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;", "Ljava/util/List;", "getList", "()Ljava/util/List;", "list", "Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;", "getIcsItem", "()Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;", "icsItem", "Landroid/accounts/Account;", "Landroid/accounts/Account;", "getAccount", "()Landroid/accounts/Account;", "account", "<init>", "(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;Ljava/util/List;Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;Landroid/accounts/Account;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class c
    implements a.b
  {
    private final List<IcsFileImportActivity.e> a;
    private final IcsFileImportActivity.e b;
    private final Account c;
    
    public c(IcsFileImportActivity.e parame, Account paramAccount)
    {
      this.a = parame;
      this.b = paramAccount;
      this.c = localObject;
    }
    
    public void a() {}
    
    public void b()
    {
      int i = this.a.indexOf(this.b);
      Object localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("FileImportListener onError: ");
      ((StringBuilder)localObject1).append(i);
      ((StringBuilder)localObject1).append(" listSize:");
      ((StringBuilder)localObject1).append(this.a.size());
      z.a("IcsFileImportFragment", ((StringBuilder)localObject1).toString());
      Object localObject2 = IcsFileImportActivity.this;
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(this.b.d().getLastPathSegment());
      ((StringBuilder)localObject1).append(' ');
      ((StringBuilder)localObject1).append(IcsFileImportActivity.this.getString(2131887705));
      Toast.makeText((Context)localObject2, ((StringBuilder)localObject1).toString(), 0).show();
      Object localObject3;
      if (i == this.a.size() - 1)
      {
        IcsFileImportActivity.this.b0().removeMessages(1);
        localObject1 = IcsFileImportActivity.this.c0();
        if (localObject1 != null) {
          ((l)localObject1).dismiss();
        }
        localObject1 = IcsFileImportActivity.r0(IcsFileImportActivity.this).iterator();
        while (((Iterator)localObject1).hasNext()) {
          ((IcsFileImportActivity.e)((Iterator)localObject1).next()).f(false);
        }
        localObject3 = IcsFileImportActivity.q0(IcsFileImportActivity.this);
        localObject2 = null;
        localObject1 = localObject3;
        if (localObject3 == null)
        {
          r.x("mFileAdapter");
          localObject1 = null;
        }
        ((RecyclerView.g)localObject1).notifyDataSetChanged();
        localObject1 = IcsFileImportActivity.o0(IcsFileImportActivity.this);
        if (localObject1 == null)
        {
          r.x("mBtnImport");
          localObject1 = localObject2;
        }
        ((TextView)localObject1).setEnabled(false);
      }
      else
      {
        IcsFileImportActivity.e locale = (IcsFileImportActivity.e)this.a.get(i + 1);
        localObject1 = IcsFileImportActivity.this;
        localObject3 = ((a)localObject1).k0(locale.d());
        r.c(localObject3);
        localObject2 = this.c;
        a.g0((a)localObject1, (Uri)localObject3, (Account)localObject2, false, new c(IcsFileImportActivity.this, this.a, locale, (Account)localObject2), 4, null);
      }
    }
    
    public void c()
    {
      b2.a.l(IcsFileImportActivity.this, this.b.c(), true);
      this.b.g(true);
      int i = this.a.indexOf(this.b);
      Object localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("FileImportListener onSuccess: ");
      ((StringBuilder)localObject1).append(i);
      ((StringBuilder)localObject1).append(" listSize:");
      ((StringBuilder)localObject1).append(this.a.size());
      z.a("IcsFileImportFragment", ((StringBuilder)localObject1).toString());
      Object localObject2;
      IcsFileImportActivity.e locale;
      if (i == this.a.size() - 1)
      {
        IcsFileImportActivity.this.b0().removeMessages(1);
        localObject1 = IcsFileImportActivity.this.c0();
        if (localObject1 != null) {
          ((x)localObject1).E(this.a.size() * 100);
        }
        g0.d("key_import_by_local_file_success");
        localObject1 = IcsFileImportActivity.this.c0();
        if (localObject1 != null) {
          ((l)localObject1).dismiss();
        }
        localObject1 = IcsFileImportActivity.this;
        Toast.makeText((Context)localObject1, ((Context)localObject1).getString(2131887706), 0).show();
        localObject1 = IcsFileImportActivity.r0(IcsFileImportActivity.this).iterator();
        while (((Iterator)localObject1).hasNext()) {
          ((IcsFileImportActivity.e)((Iterator)localObject1).next()).f(false);
        }
        localObject2 = IcsFileImportActivity.q0(IcsFileImportActivity.this);
        locale = null;
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          r.x("mFileAdapter");
          localObject1 = null;
        }
        ((RecyclerView.g)localObject1).notifyDataSetChanged();
        localObject1 = IcsFileImportActivity.o0(IcsFileImportActivity.this);
        if (localObject1 == null)
        {
          r.x("mBtnImport");
          localObject1 = locale;
        }
        ((TextView)localObject1).setEnabled(false);
        Utils.G0(IcsFileImportActivity.this);
        IcsFileImportActivity.this.finish();
      }
      else
      {
        locale = (IcsFileImportActivity.e)this.a.get(i + 1);
        localObject2 = IcsFileImportActivity.this;
        Uri localUri = ((a)localObject2).k0(locale.d());
        r.c(localUri);
        localObject1 = this.c;
        a.g0((a)localObject2, localUri, (Account)localObject1, false, new c(IcsFileImportActivity.this, this.a, locale, (Account)localObject1), 4, null);
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/sync/ics/IcsFileImportActivity$d;", "Landroidx/recyclerview/widget/RecyclerView$c0;", "Landroid/widget/CheckBox;", "a", "Landroid/widget/CheckBox;", "b", "()Landroid/widget/CheckBox;", "mImportCheckbox", "Landroid/widget/TextView;", "Landroid/widget/TextView;", "()Landroid/widget/TextView;", "mFileName", "c", "mImported", "Landroid/view/View;", "rootView", "<init>", "(Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private static final class d
    extends RecyclerView.c0
  {
    private final CheckBox a;
    private final TextView b;
    private final TextView c;
    
    public d(View paramView)
    {
      super();
      View localView = paramView.findViewById(2131362606);
      r.e(localView, "rootView.findViewById(R.id.import_checkbox)");
      this.a = ((CheckBox)localView);
      localView = paramView.findViewById(2131362451);
      r.e(localView, "rootView.findViewById(R.id.file_name)");
      this.b = ((TextView)localView);
      paramView = paramView.findViewById(2131362608);
      r.e(paramView, "rootView.findViewById(R.id.imported)");
      this.c = ((TextView)paramView);
    }
    
    public final TextView a()
    {
      return this.b;
    }
    
    public final CheckBox b()
    {
      return this.a;
    }
    
    public final TextView c()
    {
      return this.c;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;", "", "", "e", "", "toString", "", "hashCode", "other", "equals", "Landroid/net/Uri;", "a", "Landroid/net/Uri;", "d", "()Landroid/net/Uri;", "setUri", "(Landroid/net/Uri;)V", "uri", "b", "Ljava/lang/String;", "c", "()Ljava/lang/String;", "setMd5", "(Ljava/lang/String;)V", "md5", "Z", "()Z", "f", "(Z)V", "checked", "g", "imported", "<init>", "(Landroid/net/Uri;Ljava/lang/String;ZZ)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class e
  {
    private Uri a;
    private String b;
    private boolean c;
    private boolean d;
    
    public e(Uri paramUri, String paramString, boolean paramBoolean1, boolean paramBoolean2)
    {
      this.a = paramUri;
      this.b = paramString;
      this.c = paramBoolean1;
      this.d = paramBoolean2;
    }
    
    public final boolean a()
    {
      return this.c;
    }
    
    public final boolean b()
    {
      return this.d;
    }
    
    public final String c()
    {
      return this.b;
    }
    
    public final Uri d()
    {
      return this.a;
    }
    
    public final boolean e()
    {
      String str = this.a.toString();
      r.e(str, "uri.toString()");
      boolean bool;
      if (str.length() > 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if (!(paramObject instanceof e)) {
        return false;
      }
      paramObject = (e)paramObject;
      if (!r.a(this.a, paramObject.a)) {
        return false;
      }
      if (!r.a(this.b, paramObject.b)) {
        return false;
      }
      if (this.c != paramObject.c) {
        return false;
      }
      return this.d == paramObject.d;
    }
    
    public final void f(boolean paramBoolean)
    {
      this.c = paramBoolean;
    }
    
    public final void g(boolean paramBoolean)
    {
      this.d = paramBoolean;
    }
    
    public int hashCode()
    {
      int i = this.a.hashCode();
      int j = this.b.hashCode();
      int k = this.c;
      int m = 1;
      int n = k;
      if (k != 0) {
        n = 1;
      }
      k = this.d;
      if (k == 0) {
        m = k;
      }
      return ((i * 31 + j) * 31 + n) * 31 + m;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("IcsItem(uri=");
      localStringBuilder.append(this.a);
      localStringBuilder.append(", md5=");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", checked=");
      localStringBuilder.append(this.c);
      localStringBuilder.append(", imported=");
      localStringBuilder.append(this.d);
      localStringBuilder.append(')');
      return localStringBuilder.toString();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.sync.ics.IcsFileImportActivity
 * JD-Core Version:    0.7.0.1
 */